# Phrase::ReleaseUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | Description of the release | [optional] 
**platforms** | **Array&lt;String&gt;** | List of platforms the release should support. | [optional] 
**app_min_version** | **String** | Minimum version of the app that the release supports in semver format | [optional] 
**app_max_version** | **String** | Maximum version of the app that the release supports in semver format | [optional] 
**branch** | **String** | Branch used for release | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ReleaseUpdateParameters.new(description: My first Release,
                                 platforms: [&quot;android&quot;,&quot;ios&quot;],
                                 app_min_version: 2.5.0,
                                 app_max_version: 3.0.0,
                                 branch: my-feature-branch)
```


