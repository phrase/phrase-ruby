# Phrase::CommentReaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**emoji** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**comment** | [**Comment**](Comment.md) |  | [optional] 
**user** | [**UserPreview**](UserPreview.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::CommentReaction.new(id: null,
                                 emoji: null,
                                 created_at: null,
                                 updated_at: null,
                                 comment: null,
                                 user: null)
```


