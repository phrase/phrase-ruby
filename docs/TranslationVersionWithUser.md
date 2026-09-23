# Phrase::TranslationVersionWithUser

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**content** | **String** |  | [optional] 
**plural_suffix** | **String** |  | [optional] 
**key** | [**KeyPreview**](KeyPreview.md) |  | [optional] 
**locale** | [**LocalePreview**](LocalePreview.md) |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**changed_at** | **Time** |  | [optional] 
**user** | [**UserPreview**](UserPreview.md) |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::TranslationVersionWithUser.new(id: nil,
                                 content: nil,
                                 plural_suffix: nil,
                                 key: nil,
                                 locale: nil,
                                 created_at: nil,
                                 updated_at: nil,
                                 changed_at: nil,
                                 user: nil)
```


