# Phrase::JobTemplateCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**name** | **String** | Job template name | 
**briefing** | **String** | Briefing for the translators | [optional] 
**autotranslate** | **Boolean** | Automatically translate the job using machine translation. | [optional] 
**source_locale_id** | **String** | The API id of the source language. This locale will be set as source locale for the job template. If not provided, the project default locale will be used. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobTemplateCreateParameters.new(branch: my-feature-branch,
                                 name: template,
                                 briefing: text,
                                 autotranslate: true,
                                 source_locale_id: abcd1234cdef1234abcd1234cdef1234)
```


