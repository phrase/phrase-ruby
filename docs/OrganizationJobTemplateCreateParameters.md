# Phrase::OrganizationJobTemplateCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Job template name | 
**briefing** | **String** | Briefing for the translators | [optional] 
**autotranslate** | **Boolean** | Automatically translate the job using machine translation. | [optional] 
**owner_id** | **String** | Code of the account member to set as the job template owner. When omitted or blank, no owner is pre-set; the user who creates a job from this template is assigned as its owner at job-creation time.  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::OrganizationJobTemplateCreateParameters.new(name: template,
                                 briefing: text,
                                 autotranslate: true,
                                 owner_id: null)
```


