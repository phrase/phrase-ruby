# Phrase::LocaleReport

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**keys_count** | **Integer** |  | [optional] 
**translated_translations_percentage** | **Integer** |  | [optional] 
**unverified_translations_percentage** | **Integer** |  | [optional] 
**reviewed_translations_percentage** | **Integer** |  | [optional] 
**untranslated_keys_percentage** | **Integer** |  | [optional] 
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
require 'Phrase'

instance = Phrase::LocaleReport.new(keys_count: null,
                                 translated_translations_percentage: null,
                                 unverified_translations_percentage: null,
                                 reviewed_translations_percentage: null,
                                 untranslated_keys_percentage: null,
                                 completed_translations_count: null,
                                 untranslated_keys_count: null,
                                 unverified_translations_count: null,
                                 reviewed_translations_count: null,
                                 source_word_count: null,
                                 word_count: null,
                                 word_count_unverified: null,
                                 word_count_missing: null,
                                 locale: null)
```


