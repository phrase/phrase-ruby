# Phrase::JobTemplateLocales

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**job_template** | [**JobTemplatePreview**](JobTemplatePreview.md) |  | [optional] 
**locale** | [**LocalePreview**](LocalePreview.md) |  | [optional] 
**users** | [**Array&lt;LocaleUserPreview&gt;**](LocaleUserPreview.md) |  | [optional] 
**teams** | [**Array&lt;LocaleTeamPreview&gt;**](LocaleTeamPreview.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobTemplateLocales.new(id: null,
                                 job_template: null,
                                 locale: null,
                                 users: null,
                                 teams: null)
```


