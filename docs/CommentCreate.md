# Phrase::CommentCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**message** | **String** | Comment message | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::CommentCreate.new(branch: my-feature-branch,
                                 message: Some message...)
```


