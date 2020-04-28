# Phrase::GlossaryTermCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**term** | **String** | Glossary term | [optional] 
**description** | **String** | Description of term | [optional] 
**translatable** | **Boolean** | Indicates whether the term should be used for all languages or can be translated | [optional] 
**case_sensitive** | **Boolean** | Indicates whether the term is case sensitive | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::GlossaryTermCreateParameters.new(term: MyCompany,
                                 description: Use this when refering to our company,
                                 translatable: true,
                                 case_sensitive: true)
```


