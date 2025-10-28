# Phrase::KeysIncludeParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**q** | **String** | Specify a query to do broad search for keys by name (including wildcards).  The following qualifiers are also supported in the search term:  * &#x60;ids:key_id,...&#x60; for queries on a comma-separated list of ids * &#x60;name:key_name&#x60; for text queries on exact key names - spaces, commas, and colons need to be escaped with double backslashes * &#x60;tags:tag_name&#x60; to filter for keys with certain tags * &#x60;translated:{true|false}&#x60; for translation status (also requires &#x60;locale_id&#x60; to be specified) * &#x60;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&#x60; for date range queries * &#x60;unmentioned_in_upload:upload_id,...&#x60; to filter keys unmentioned within upload. When multiple upload IDs provided, matches only keys not mentioned in **all** uploads  Find more examples [here](/en/api/strings/usage-examples).  | [optional] 
**target_locale_id** | **String** | Include translations in locale | [optional] 
**tags** | **String** | Tag or comma-separated list of tags to add to the matching collection of keys | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::KeysIncludeParameters.new(branch: my-feature-branch,
                                 q: mykey* translated:true,
                                 target_locale_id: abcd1234abcd1234abcd1234abcd1234,
                                 tags: landing-page,release-1.2)
```


