# Phrase::OrganizationJobTemplateCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Job template name | 
**briefing** | **String** | Briefing for the translators | [optional] 
**autotranslate** | **Boolean** | Automatically translate the job using machine translation. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::OrganizationJobTemplateCreateParameters.new(name: template,
                                 briefing: text,
                                 autotranslate: true)
```


