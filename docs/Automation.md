# Phrase::Automation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**trigger** | **String** |  | [optional] 
**status_filters** | **Array&lt;String&gt;** | translation key statuses used to filter keys that are added to jobs | [optional] 
**project_id** | **String** |  | [optional] 
**job_template_id** | **String** |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 
**cron_schedule** | **String** |  | [optional] 
**time_zone** | **String** |  | [optional] 
**account** | [**Account**](Account.md) |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::Automation.new(id: null,
                                 name: null,
                                 status: null,
                                 trigger: null,
                                 status_filters: null,
                                 project_id: null,
                                 job_template_id: null,
                                 tags: null,
                                 cron_schedule: null,
                                 time_zone: null,
                                 account: null,
                                 created_at: null,
                                 updated_at: null)
```


