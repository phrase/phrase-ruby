#!/bin/bash

set -eo pipefail

echo "Build release $VERSION"

echo "Setting up gem version"
sed -e "s/1.0.0/${VERSION}/g" ./version.rb.template > ./lib/phrase/version.rb
rm ./version.rb.template

[ -z "${GITHUB_TOKEN}" ] && { echo "Missing input.token!"; exit 2; }
[ -z "${OWNER}" ] && { echo "Missing input.owner!"; exit 2; }

echo "Setting up access to GitHub Package Registry"
mkdir -p ~/.gem
touch ~/.gem/credentials
chmod 600 ~/.gem/credentials
echo ":github: Bearer ${GITHUB_TOKEN}" >> ~/.gem/credentials

echo "Building the gem"
gem build *.gemspec

# Create release
function create_release_data()
{
  cat <<EOF
{
  "tag_name": "${VERSION}",
  "name": "${VERSION}",
  "draft": true,
  "prerelease": false
}
EOF
}

echo "Create release $VERSION"
api_url="https://api.github.com/repos/phrase/phrase-ruby/releases?access_token=${GITHUB_TOKEN}"
response="$(curl --data "$(create_release_data)" ${api_url})"
release_id=$(echo $response | python -c "import sys, json; print json.load(sys.stdin)['id']")

if [ -z "$release_id" ]
then
      echo "Failed to create GitHub release"
      echo $response
      exit 1
else
      echo "New release created created with id: ${release_id}"
fi

# Upload artifacts
DIST_DIR="."
for file in "$DIST_DIR"/*.gem; do
    echo "Uploading ${file}"
    asset="https://uploads.github.com/repos/phrase/phrase-ruby/releases/${release_id}/assets?name=$(basename "$file")&access_token=${GITHUB_TOKEN}"
    curl --data-binary @"$file" -H "Content-Type: application/octet-stream" $asset > /dev/null
    echo Hash: $(sha256sum $file)
done

echo "Pushing the built gem to GitHub Package Registry"
mv phrase-${VERSION}.gem phrase-ruby-${VERSION}.gem
gem push --key github --host "https://rubygems.pkg.github.com/${OWNER}" phrase-ruby-${VERSION}.gem

echo "Release successful"
