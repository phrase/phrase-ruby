# Phrase::JobTemplateCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**name** | **String** | Job template name | 
**briefing** | **String** | Briefing for the translators | [optional] 
**autotranslate** | **Boolean** | Automatically translate the job using machine translation. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobTemplateCreateParameters.new(branch: my-feature-branch,
                                 name: template,
                                 briefing: text,
                                 autotranslate: true)
```


