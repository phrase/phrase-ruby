# Phrase::Job

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**briefing** | **String** |  | [optional] 
**due_date** | **DateTime** |  | [optional] 
**state** | **String** |  | [optional] 
**ticket_url** | **String** |  | [optional] 
**project** | [**ProjectShort**](ProjectShort.md) |  | [optional] 
**branch** | [**BranchName**](BranchName.md) |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 

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
                                 updated_at: null)
```


