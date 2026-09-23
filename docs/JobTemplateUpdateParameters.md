# Phrase::JobTemplateUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**name** | **String** | Job template name | 
**briefing** | **String** | Briefing for the translators | [optional] 
**autotranslate** | **Boolean** | Automatically translate the job using machine translation. | [optional] 
**source_locale_id** | **String** | The API id of the source language. This locale will be set as source locale for the job template. If not provided, the project default locale will be used. | [optional] 
**owner_id** | **String** | Code of the account member to set as the job template owner. The referenced user must also be a member of the project; passing the code of an account member who is not a project member returns a 404. Pass an empty string to clear a previously set owner; when blank, jobs created from this template will default to assigning the job creator as owner.  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::JobTemplateUpdateParameters.new(branch: 'my-feature-branch',
                                 name: 'template',
                                 briefing: 'text',
                                 autotranslate: true,
                                 source_locale_id: 'abcd1234cdef1234abcd1234cdef1234',
                                 owner_id: nil)
```


