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
**annotations** | [**Array&lt;JobAnnotationShort&gt;**](JobAnnotationShort.md) |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::JobLocale.new(id: nil,
                                 job: nil,
                                 locale: nil,
                                 users: nil,
                                 teams: nil,
                                 completed: nil,
                                 translation_completed_at: nil,
                                 review_completed_at: nil,
                                 annotations: nil)
```


