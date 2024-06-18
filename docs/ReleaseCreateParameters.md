# Phrase::ReleaseCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | Description of the release | [optional] 
**platforms** | **Array&lt;String&gt;** | List of platforms the release should support. | [optional] 
**locale_ids** | **Array&lt;String&gt;** | List of locale ids that will be included in the release. If empty, distribution locales will be used | [optional] 
**tags** | **Array&lt;String&gt;** | Only include tagged keys in the release. For a key to be included it must be tagged with all tags provided | [optional] 
**app_min_version** | **String** | Minimum version of the app that the release supports in semver format | [optional] 
**app_max_version** | **String** | Maximum version of the app that the release supports in semver format | [optional] 
**branch** | **String** | Branch used for release | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ReleaseCreateParameters.new(description: My first Release,
                                 platforms: [&quot;android&quot;,&quot;ios&quot;],
                                 locale_ids: [&quot;abcd1234cdef1234abcd1234cdef1234&quot;,&quot;fff565db236400772368235db2c6117e&quot;],
                                 tags: [&quot;android&quot;,&quot;feature1&quot;],
                                 app_min_version: 2.5.0,
                                 app_max_version: 3.0.0,
                                 branch: my-feature-branch)
```


