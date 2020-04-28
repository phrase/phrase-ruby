# Phrase::GlossaryTermTranslationCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**locale_code** | **String** | Identifies the language for this translation | [optional] 
**content** | **String** | The content of the translation | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::GlossaryTermTranslationCreateParameters.new(locale_code: en-US,
                                 content: My translated term)
```


