# Phrase::JobTemplateUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**name** | **String** | Job template name | 
**briefing** | **String** | Briefing for the translators | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobTemplateUpdateParameters.new(branch: my-feature-branch,
                                 name: template,
                                 briefing: text)
```


