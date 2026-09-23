# Phrase::OrganizationJobTemplateUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Job template name | 
**briefing** | **String** | Briefing for the translators | [optional] 
**autotranslate** | **Boolean** | Automatically translate the job using machine translation. | [optional] 
**owner_id** | **String** | Code of the account member to set as the job template owner. Pass an empty string to clear a previously set owner; when blank, the owner is set to null and jobs created from this template will default to assigning the job creator as owner.  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::OrganizationJobTemplateUpdateParameters.new(name: template,
                                 briefing: text,
                                 autotranslate: true,
                                 owner_id: null)
```


