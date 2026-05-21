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
require 'Phrase'

instance = Phrase::Automation.new(id: null,
                                 name: null,
                                 status: null,
                                 trigger: null,
                                 status_filters: null,
                                 project_id: null,
                                 project_ids: null,
                                 job_template_id: null,
                                 job_owner_id: null,
                                 include_only_updated_locales: null,
                                 tags: null,
                                 cron_schedule: null,
                                 time_zone: null,
                                 account: null,
                                 created_at: null,
                                 updated_at: null)
```


