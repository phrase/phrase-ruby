# Phrase::JobCommentUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** | Comment message | [optional] 
**branch** | **String** | Branch name for the job | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobCommentUpdateParameters.new(message: Some message...,
                                 branch: my-feature-branch)
```


