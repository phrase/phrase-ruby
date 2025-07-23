# Phrase::JobDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**briefing** | **String** |  | [optional] 
**due_date** | **Time** |  | [optional] 
**state** | **String** |  | [optional] 
**ticket_url** | **String** |  | [optional] 
**project** | [**ProjectShort**](ProjectShort.md) |  | [optional] 
**branch** | [**BranchName**](BranchName.md) |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**owner** | [**UserPreview**](UserPreview.md) |  | [optional] 
**job_tag_name** | **String** |  | [optional] 
**source_translations_updated_at** | **Time** |  | [optional] 
**source_locale** | [**LocalePreview**](LocalePreview.md) |  | [optional] 
**locales** | [**Array&lt;LocalePreview&gt;**](LocalePreview.md) |  | [optional] 
**keys** | [**Array&lt;KeyPreview&gt;**](KeyPreview.md) |  | [optional] 
**annotations** | [**Array&lt;JobAnnotationShort&gt;**](JobAnnotationShort.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobDetails.new(id: null,
                                 name: null,
                                 briefing: null,
                                 due_date: null,
                                 state: null,
                                 ticket_url: null,
                                 project: null,
                                 branch: null,
                                 created_at: null,
                                 updated_at: null,
                                 owner: null,
                                 job_tag_name: null,
                                 source_translations_updated_at: null,
                                 source_locale: null,
                                 locales: null,
                                 keys: null,
                                 annotations: null)
```


