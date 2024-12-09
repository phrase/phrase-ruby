# Phrase::JobCommentCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** | Job comment message | [optional] 
**branch** | **String** | Branch name for the job | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobCommentCreateParameters.new(message: Some message...,
                                 branch: my-feature-branch)
```


