# Phrase::GlossaryTermUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**term** | **String** | Glossary term | [optional] 
**description** | **String** | Description of term. Send an empty string or &#x60;null&#x60; to clear the value; omit the field to leave it unchanged. The Phrase CLI drops &#x60;null&#x60; values before sending, so use an empty string there. | [optional] 
**translatable** | **Boolean** | Indicates whether the term should be used for all languages or can be translated | [optional] 
**case_sensitive** | **Boolean** | Indicates whether the term is case sensitive | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::GlossaryTermUpdateParameters.new(term: 'MyCompany',
                                 description: 'Use this when refering to our company',
                                 translatable: true,
                                 case_sensitive: true)
```


