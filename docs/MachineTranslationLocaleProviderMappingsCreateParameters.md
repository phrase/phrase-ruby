# Phrase::MachineTranslationLocaleProviderMappingsCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_locale_code** | **String** | The locale code of the source language (e.g. \&quot;en\&quot;). | 
**target_locale_code** | **String** | The locale code of the target language (e.g. \&quot;de\&quot;). Must differ from source_locale_code.  | 
**service** | **String** | The machine translation service to use for this locale pair. Must be a service enabled for the account.  | 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::MachineTranslationLocaleProviderMappingsCreateParameters.new(source_locale_code: 'en',
                                 target_locale_code: 'de',
                                 service: 'google_translate')
```


