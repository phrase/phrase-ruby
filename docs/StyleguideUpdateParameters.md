# Phrase::StyleguideUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | Style guide title | [optional] 
**audience** | **String** | Audience description. Send an empty string or &#x60;null&#x60; to clear the value; omit the field to leave it unchanged. The Phrase CLI drops &#x60;null&#x60; values before sending, so use an empty string there. | [optional] 
**target_audience** | **String** | Target audience for the translations. | [optional] 
**grammatical_person** | **String** | Preferred grammatical person. | [optional] 
**vocabulary_type** | **String** | Vocabulary register the translations should use. | [optional] 
**business** | **String** | Description of the business. Send an empty string or &#x60;null&#x60; to clear the value; omit the field to leave it unchanged. The Phrase CLI drops &#x60;null&#x60; values before sending, so use an empty string there. | [optional] 
**company_branding** | **String** | Company branding to remain consistent. Send an empty string or &#x60;null&#x60; to clear the value; omit the field to leave it unchanged. The Phrase CLI drops &#x60;null&#x60; values before sending, so use an empty string there. | [optional] 
**formatting** | **String** | Formatting requirements and character limitations. Send an empty string or &#x60;null&#x60; to clear the value; omit the field to leave it unchanged. The Phrase CLI drops &#x60;null&#x60; values before sending, so use an empty string there. | [optional] 
**glossary_terms** | **String** | List of terms and/or phrases that need to be translated consistently. Send an empty string or &#x60;null&#x60; to clear the value; omit the field to leave it unchanged. The Phrase CLI drops &#x60;null&#x60; values before sending, so use an empty string there. | [optional] 
**grammar_consistency** | **String** | Formal or informal pronouns, consistent conjugation, grammatical gender. Send an empty string or &#x60;null&#x60; to clear the value; omit the field to leave it unchanged. The Phrase CLI drops &#x60;null&#x60; values before sending, so use an empty string there. | [optional] 
**literal_translation** | **String** | Can be one of: Cultural/Conversational, Literal, Neutral. Send an empty string or &#x60;null&#x60; to clear the value; omit the field to leave it unchanged. The Phrase CLI drops &#x60;null&#x60; values before sending, so use an empty string there. | [optional] 
**overall_tone** | **String** | Tone requirement descriptions. Send an empty string or &#x60;null&#x60; to clear the value; omit the field to leave it unchanged. The Phrase CLI drops &#x60;null&#x60; values before sending, so use an empty string there. | [optional] 
**samples** | **String** | Provide links to sample product pages, FAQ pages, etc. to give the translator a point of reference. You can also provide past translations. Even snippets or short paragraphs are helpful for maintaining consistency. Send an empty string or &#x60;null&#x60; to clear the value; omit the field to leave it unchanged. The Phrase CLI drops &#x60;null&#x60; values before sending, so use an empty string there. | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::StyleguideUpdateParameters.new(title: 'Web application style guide',
                                 audience: 'customer-facing',
                                 target_audience: 'teenager',
                                 grammatical_person: 'first_person_singular',
                                 vocabulary_type: 'technical',
                                 business: 'We are a travel site that helps customers find the best hotels and flights.',
                                 company_branding: 'ACME Inc. should never be translated.',
                                 formatting: 'Never use capital letters',
                                 glossary_terms: 'Apartment, cabin, loft',
                                 grammar_consistency: '',
                                 literal_translation: 'Neutral',
                                 overall_tone: 'Tone should be fun and light',
                                 samples: 'http://www.myexample.com/my/document/path/to/samples.pdf')
```


