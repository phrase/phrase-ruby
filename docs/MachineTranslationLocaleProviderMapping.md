# Phrase::MachineTranslationLocaleProviderMapping

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_locale_code** | **String** | The locale code of the source language for this mapping. | [optional] 
**target_locale_code** | **String** | The locale code of the target language for this mapping. | [optional] 
**service** | **String** | The translation service applied when translating from source to target locale. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::MachineTranslationLocaleProviderMapping.new(source_locale_code: en,
                                 target_locale_code: de,
                                 service: google_translate)
```


