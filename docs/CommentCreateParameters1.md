# Phrase::CommentCreateParameters1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** | Reply message body | 
**branch** | **String** | Specify the branch to use | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::CommentCreateParameters1.new(message: 'Some message...',
                                 branch: 'my-feature-branch')
```


