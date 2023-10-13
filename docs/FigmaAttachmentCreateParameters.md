# Phrase::FigmaAttachmentCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**url** | **String** | Figma file url | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::FigmaAttachmentCreateParameters.new(branch: my-feature-branch,
                                 url: https://figma.com/file/xxxxx/sample)
```


