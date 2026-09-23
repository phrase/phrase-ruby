# Phrase::CommentReaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**emoji** | **String** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**comment** | [**Comment**](Comment.md) |  | [optional] 
**user** | [**UserPreview**](UserPreview.md) |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::CommentReaction.new(id: nil,
                                 emoji: nil,
                                 created_at: nil,
                                 updated_at: nil,
                                 comment: nil,
                                 user: nil)
```


