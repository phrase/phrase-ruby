# Phrase::AutomationEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier of the automation event. | [optional] 
**automation_id** | **String** | Identifier of the automation that produced this event. | [optional] 
**state** | **String** | Outcome of the automation run. | [optional] 
**triggered_by** | **String** | What caused the automation to run. | [optional] 
**created_at** | **Time** | Timestamp when the event was created. | [optional] 
**jobs_created** | **Integer** | Number of jobs created during this automation run. | [optional] 
**job_ids** | **Array&lt;String&gt;** | Identifiers of the jobs created during this automation run. | [optional] 
**project** | [**AutomationEventProject**](AutomationEventProject.md) |  | [optional] 
**details** | **String** | Error message describing the failure when state is &#x60;failure&#x60;; null otherwise. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::AutomationEvent.new(id: null,
                                 automation_id: null,
                                 state: null,
                                 triggered_by: null,
                                 created_at: null,
                                 jobs_created: null,
                                 job_ids: null,
                                 project: null,
                                 details: null)
```


