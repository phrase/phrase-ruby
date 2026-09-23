# Phrase::LocaleStatistics

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**keys_total_count** | **Integer** |  | [optional] 
**keys_untranslated_count** | **Integer** |  | [optional] 
**words_total_count** | **Integer** |  | [optional] 
**translations_completed_count** | **Integer** |  | [optional] 
**translations_unverified_count** | **Integer** |  | [optional] 
**unverified_words_count** | **Integer** |  | [optional] 
**missing_words_count** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::LocaleStatistics.new(keys_total_count: nil,
                                 keys_untranslated_count: nil,
                                 words_total_count: nil,
                                 translations_completed_count: nil,
                                 translations_unverified_count: nil,
                                 unverified_words_count: nil,
                                 missing_words_count: nil)
```


