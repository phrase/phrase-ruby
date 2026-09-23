# Phrase::Comment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**message** | **String** |  | [optional] 
**has_replies** | **Boolean** |  | [optional] 
**user** | [**UserPreview**](UserPreview.md) |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**mentioned_users** | [**Array&lt;UserPreview&gt;**](UserPreview.md) |  | [optional] 
**locales** | [**Array&lt;LocalePreview&gt;**](LocalePreview.md) |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::Comment.new(id: nil,
                                 message: nil,
                                 has_replies: nil,
                                 user: nil,
                                 created_at: nil,
                                 updated_at: nil,
                                 mentioned_users: nil,
                                 locales: nil)
```


