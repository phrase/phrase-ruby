# Phrase::ProjectReport

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**locales_count** | **Integer** |  | [optional] 
**keys_count** | **Integer** |  | [optional] 
**translations_count** | **Integer** |  | [optional] 
**untranslated_keys_count** | **Integer** |  | [optional] 
**unverified_translations_count** | **Integer** |  | [optional] 
**reviewed_translations_count** | **Integer** |  | [optional] 
**managed_words_count** | **Integer** |  | [optional] 
**project** | [**ProjectShort**](ProjectShort.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ProjectReport.new(locales_count: null,
                                 keys_count: null,
                                 translations_count: null,
                                 untranslated_keys_count: null,
                                 unverified_translations_count: null,
                                 reviewed_translations_count: null,
                                 managed_words_count: null,
                                 project: null)
```


