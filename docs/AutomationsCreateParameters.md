# Phrase::AutomationsCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | name of the automation | 
**trigger** | **String** |  | 
**project_ids** | **Array&lt;String&gt;** | List of project IDs to associate with the automation. Providing more than one project ID requires the &#x60;advanced_job_automation&#x60; plan feature; accounts without this feature receive a 422 response with error field &#x60;project_ids&#x60;.  | 
**job_template_id** | **String** | id of job template that the automation uses to create jobs from | [optional] 
**status_filters** | **Array&lt;String&gt;** | Translation states used when selecting keys for a job.  States are derived from associated translations, not the keys themselves.  When review workflow is enabled, &#x60;ready_for_review&#x60; is internally treated as &#x60;translated&#x60;.  | 
**tags** | **Array&lt;String&gt;** | used to filter which keys are added to jobs | [optional] 
**cron_schedule** | **String** | along with time_zone, specifies when the scheduled automation is supposed to run | [optional] 
**time_zone** | **String** | along with cron_schedule, specifies when the scheduled automation is supposed to run | [optional] 
**job_owner_id** | **String** | User ID of the job owner that newly created jobs are assigned to.  | [optional] 
**include_only_updated_locales** | **Boolean** | When &#x60;true&#x60;, the automation only acts on locales that changed since its last run. Defaults to &#x60;false&#x60;.  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::AutomationsCreateParameters.new(name: 'Scheduled Job Automation - Hourly',
                                 trigger: nil,
                                 project_ids: ["abcd1234cdef1234abcd1234cdef1234"],
                                 job_template_id: 'abcd1234cdef1234abcd1234cdef1234',
                                 status_filters: nil,
                                 tags: ["myTag"],
                                 cron_schedule: '00 13 * * 1,2',
                                 time_zone: 'GMT',
                                 job_owner_id: 'abcd1234abcd1234abcd1234abcd1234',
                                 include_only_updated_locales: false)
```


