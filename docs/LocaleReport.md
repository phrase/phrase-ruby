# Phrase::LocaleReport

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**keys_count** | **Integer** |  | [optional] 
**translated_translations_percentage** | **Float** |  | [optional] 
**unverified_translations_percentage** | **Float** |  | [optional] 
**reviewed_translations_percentage** | **Float** |  | [optional] 
**untranslated_keys_percentage** | **Float** |  | [optional] 
**completed_translations_count** | **Integer** |  | [optional] 
**untranslated_keys_count** | **Integer** |  | [optional] 
**unverified_translations_count** | **Integer** |  | [optional] 
**reviewed_translations_count** | **Integer** |  | [optional] 
**source_word_count** | **Integer** |  | [optional] 
**word_count** | **Integer** |  | [optional] 
**word_count_unverified** | **Integer** |  | [optional] 
**word_count_missing** | **Integer** |  | [optional] 
**locale** | [**LocalePreview**](LocalePreview.md) |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::LocaleReport.new(keys_count: nil,
                                 translated_translations_percentage: nil,
                                 unverified_translations_percentage: nil,
                                 reviewed_translations_percentage: nil,
                                 untranslated_keys_percentage: nil,
                                 completed_translations_count: nil,
                                 untranslated_keys_count: nil,
                                 unverified_translations_count: nil,
                                 reviewed_translations_count: nil,
                                 source_word_count: nil,
                                 word_count: nil,
                                 word_count_unverified: nil,
                                 word_count_missing: nil,
                                 locale: nil)
```


