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
**automation_id** | **String** | The ID of the automation that created this job, or null if the job was created manually. | [optional] 
**job_template_id** | **String** | The ID of the job template this job was created from, or null if no template was used. | [optional] 
**owner** | [**UserPreview**](UserPreview.md) |  | [optional] 
**job_tag_name** | **String** |  | [optional] 
**source_translations_updated_at** | **Time** |  | [optional] 
**source_locale** | [**LocalePreview**](LocalePreview.md) |  | [optional] 
**locales** | [**Array&lt;LocalePreview&gt;**](LocalePreview.md) |  | [optional] 
**keys** | [**Array&lt;KeyPreview&gt;**](KeyPreview.md) |  | [optional] 
**annotations** | [**Array&lt;JobAnnotationShort&gt;**](JobAnnotationShort.md) | Returned only when &#x60;include_annotations&#x3D;true&#x60; is supplied on the request. | [optional] 
**locked** | **Boolean** | &#x60;true&#x60; if the job has been locked by the project&#39;s job-locking workflow (translations attached to the job are read-only until the job advances).  | [optional] 

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
                                 automation_id: null,
                                 job_template_id: null,
                                 owner: null,
                                 job_tag_name: null,
                                 source_translations_updated_at: null,
                                 source_locale: null,
                                 locales: null,
                                 keys: null,
                                 annotations: null,
                                 locked: null)
```


