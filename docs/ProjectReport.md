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
require 'phrase'

instance = Phrase::ProjectReport.new(locales_count: nil,
                                 keys_count: nil,
                                 translations_count: nil,
                                 untranslated_keys_count: nil,
                                 unverified_translations_count: nil,
                                 reviewed_translations_count: nil,
                                 managed_words_count: nil,
                                 project: nil)
```


