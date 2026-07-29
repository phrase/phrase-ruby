# Phrase::PreTranslationCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**translatable_type** | **String** | Resource type to pre-translate. | [optional] 
**translatable_id** | **String** | ID of the targeted resource: locale ID for &#x60;locale&#x60;, job ID for &#x60;job&#x60;, key ID for &#x60;translation_key&#x60;, upload ID for &#x60;upload&#x60;.  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::PreTranslationCreateParameters.new(translatable_type: null,
                                 translatable_id: null)
```


