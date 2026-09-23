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
require 'phrase'

instance = Phrase::AutomationEvent.new(id: nil,
                                 automation_id: nil,
                                 state: nil,
                                 triggered_by: nil,
                                 created_at: nil,
                                 jobs_created: nil,
                                 job_ids: nil,
                                 project: nil,
                                 details: nil)
```


