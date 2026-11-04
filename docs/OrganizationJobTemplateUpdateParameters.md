# Phrase::OrganizationJobTemplateUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Job template name | 
**briefing** | **String** | Briefing for the translators. Send an empty string or &#x60;null&#x60; to clear the value; omit the field to leave it unchanged. The Phrase CLI drops &#x60;null&#x60; values before sending, so use an empty string there. | [optional] 
**autotranslate** | **Boolean** | Automatically translate the job using machine translation. | [optional] 
**exclude_linked_child_keys** | **Boolean** | Exclude linked child keys from jobs created from this template. | [optional] 
**owner_id** | **String** | Code of the account member to set as the job template owner. Pass an empty string to clear a previously set owner; when blank, the owner is set to null and jobs created from this template will default to assigning the job creator as owner.  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::OrganizationJobTemplateUpdateParameters.new(name: 'template',
                                 briefing: 'text',
                                 autotranslate: true,
                                 exclude_linked_child_keys: false,
                                 owner_id: nil)
```


