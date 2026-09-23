# Phrase::MachineTranslationSettingsUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_service** | **String** | The machine translation engine to use as the account default. Supported values: language_ai_translate, aita_translate, microsoft_translate, google_translate, amazon_translate. Pass null or an empty string to reset to the plan default.  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::MachineTranslationSettingsUpdateParameters.new(default_service: 'google_translate')
```


