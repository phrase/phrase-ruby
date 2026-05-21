# Phrase::AutomationsCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | name of the automation | 
**trigger** | **String** |  | 
**project_ids** | **Array&lt;String&gt;** | List of project IDs to associate with the automation. Currently, only the first ID in the array is used. The array format leaves room for future support of multiple projects.  | 
**job_template_id** | **String** | id of job template that the automation uses to create jobs from | [optional] 
**status_filters** | **Array&lt;String&gt;** | Translation states used when selecting keys for a job.  States are derived from associated translations, not the keys themselves.  When review workflow is enabled, &#x60;ready_for_review&#x60; is internally treated as &#x60;translated&#x60;.  | 
**tags** | **Array&lt;String&gt;** | used to filter which keys are added to jobs | [optional] 
**cron_schedule** | **String** | along with time_zone, specifies when the scheduled automation is supposed to run | [optional] 
**time_zone** | **String** | along with cron_schedule, specifies when the scheduled automation is supposed to run | [optional] 
**job_owner_id** | **String** | User ID of the job owner that newly created jobs are assigned to.  | [optional] 
**include_only_updated_locales** | **Boolean** | When &#x60;true&#x60;, the automation only acts on locales that changed since its last run. Defaults to &#x60;false&#x60;.  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::AutomationsCreateParameters.new(name: Scheduled Job Automation - Hourly,
                                 trigger: null,
                                 project_ids: [&quot;abcd1234cdef1234abcd1234cdef1234&quot;],
                                 job_template_id: abcd1234cdef1234abcd1234cdef1234,
                                 status_filters: null,
                                 tags: [&quot;myTag&quot;],
                                 cron_schedule: 00 13 * * 1,2,
                                 time_zone: GMT,
                                 job_owner_id: abcd1234abcd1234abcd1234abcd1234,
                                 include_only_updated_locales: false)
```


