# Phrase::ReleaseUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | Description of the release | [optional] 
**platforms** | **Array&lt;String&gt;** | List of platforms the release should support. | [optional] 
**branch** | **String** | Branch used for release | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ReleaseUpdateParameters.new(description: My first Release,
                                 platforms: [&quot;android&quot;,&quot;ios&quot;],
                                 branch: my-feature-branch)
```


