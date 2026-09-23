# Phrase::TranslationDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**content** | **String** |  | [optional] 
**unverified** | **Boolean** |  | [optional] 
**excluded** | **Boolean** |  | [optional] 
**plural_suffix** | **String** |  | [optional] 
**key** | [**KeyPreview**](KeyPreview.md) |  | [optional] 
**locale** | [**LocalePreview**](LocalePreview.md) |  | [optional] 
**placeholders** | **Array&lt;String&gt;** |  | [optional] 
**state** | **String** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**linked_translation** | [**TranslationParent**](TranslationParent.md) |  | [optional] 
**user** | [**UserPreview**](UserPreview.md) |  | [optional] 
**word_count** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::TranslationDetails.new(id: nil,
                                 content: nil,
                                 unverified: nil,
                                 excluded: nil,
                                 plural_suffix: nil,
                                 key: nil,
                                 locale: nil,
                                 placeholders: nil,
                                 state: nil,
                                 created_at: nil,
                                 updated_at: nil,
                                 linked_translation: nil,
                                 user: nil,
                                 word_count: nil)
```


