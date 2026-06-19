# Phrase::Job

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
**review_due_date** | **Time** | The review due date for this job. Returns &#x60;null&#x60; when the project does not have review workflow enabled. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::Job.new(id: null,
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
                                 review_due_date: 2015-03-25T11:43:52Z)
```


