# Phrase::TranslationVersionWithUser

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**content** | **String** |  | [optional] 
**plural_suffix** | **String** |  | [optional] 
**key** | [**KeyPreview**](KeyPreview.md) |  | [optional] 
**locale** | [**LocalePreview**](LocalePreview.md) |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**changed_at** | **DateTime** |  | [optional] 
**user** | [**UserPreview**](UserPreview.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::TranslationVersionWithUser.new(id: null,
                                 content: null,
                                 plural_suffix: null,
                                 key: null,
                                 locale: null,
                                 created_at: null,
                                 updated_at: null,
                                 changed_at: null,
                                 user: null)
```


