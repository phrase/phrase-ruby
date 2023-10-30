# Phrase::JobLocale

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**job** | [**JobPreview**](JobPreview.md) |  | [optional] 
**locale** | [**LocalePreview**](LocalePreview.md) |  | [optional] 
**users** | [**Array&lt;LocaleUserPreview&gt;**](LocaleUserPreview.md) |  | [optional] 
**teams** | [**Array&lt;LocaleTeamPreview&gt;**](LocaleTeamPreview.md) |  | [optional] 
**completed** | **Boolean** |  | [optional] 
**translation_completed_at** | **Time** |  | [optional] 
**review_completed_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobLocale.new(id: null,
                                 job: null,
                                 locale: null,
                                 users: null,
                                 teams: null,
                                 completed: null,
                                 translation_completed_at: null,
                                 review_completed_at: null)
```


