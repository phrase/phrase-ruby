# Phrase::MachineTranslationSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_service** | **String** | The default machine translation engine configured for the account. Returns \&quot;microsoft_translate\&quot; when no service has been explicitly configured. Supported values: language_ai_translate, aita_translate, microsoft_translate, google_translate, amazon_translate, intento_translate, gpt_translate.  | [optional] 
**machine_translation_units_used** | **Integer** | Number of machine translation characters consumed in the current billing period. | [optional] 
**machine_translation_units_total** | **Integer** | Total machine translation character quota granted for the current billing period. | [optional] 
**locale_provider_mappings** | [**Array&lt;MachineTranslationLocaleProviderMapping&gt;**](MachineTranslationLocaleProviderMapping.md) | Per-locale-pair provider overrides. When a matching mapping exists for a source/target locale pair, that provider takes precedence over the account default.  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::MachineTranslationSettings.new(default_service: google_translate,
                                 machine_translation_units_used: 12500,
                                 machine_translation_units_total: 1000000,
                                 locale_provider_mappings: null)
```


