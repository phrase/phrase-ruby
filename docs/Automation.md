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
**project_ids** | **Array&lt;String&gt;** | All project IDs the automation applies to. Returned alongside the singular &#x60;project_id&#x60; for backwards compatibility. | [optional] 
**job_template_id** | **String** |  | [optional] 
**job_owner_id** | **String** | User ID of the job owner that newly created jobs are assigned to. | [optional] 
**include_only_updated_locales** | **Boolean** | When &#x60;true&#x60;, the automation only acts on locales that changed since its last run. | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 
**cron_schedule** | **String** |  | [optional] 
**time_zone** | **String** |  | [optional] 
**account** | [**Account**](Account.md) |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::Automation.new(id: nil,
                                 name: nil,
                                 status: nil,
                                 trigger: nil,
                                 status_filters: nil,
                                 project_id: nil,
                                 project_ids: nil,
                                 job_template_id: nil,
                                 job_owner_id: nil,
                                 include_only_updated_locales: nil,
                                 tags: nil,
                                 cron_schedule: nil,
                                 time_zone: nil,
                                 account: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


