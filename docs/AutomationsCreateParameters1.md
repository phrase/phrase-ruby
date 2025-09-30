# Phrase::AutomationsCreateParameters1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | name of the automation | 
**trigger** | **String** |  | 
**project_ids** | **Array&lt;String&gt;** | List of project IDs to associate with the automation. Currently, only the first ID in the array is used. The array format leaves room for future support of multiple projects.  | 
**job_template_id** | **String** | id of job template that the automation uses to create jobs from | [optional] 
**status_filters** | **Array&lt;String&gt;** | translation key statuses used to filter keys that are added to jobs | 
**tags** | **Array&lt;String&gt;** | used to filter which keys are added to jobs | [optional] 
**cron_schedule** | **String** | along with time_zone, specifies when the scheduled automation is supposed to run | [optional] 
**time_zone** | **String** | along with cron_schedule, specifies when the scheduled automation is supposed to run | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::AutomationsCreateParameters1.new(name: Scheduled Job Automation - Hourly,
                                 trigger: null,
                                 project_ids: [&quot;abcd1234cdef1234abcd1234cdef1234&quot;],
                                 job_template_id: abcd1234cdef1234abcd1234cdef1234,
                                 status_filters: null,
                                 tags: [&quot;myTag&quot;],
                                 cron_schedule: 00 13 * * 1,2,
                                 time_zone: GMT)
```


