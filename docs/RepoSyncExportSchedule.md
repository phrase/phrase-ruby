# Phrase::RepoSyncExportSchedule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**frequency** | **String** | How often the export runs. &#x60;cron&#x60; means a fully custom cron expression is used (&#x60;cron_schedule&#x60; holds the raw expression).  | [optional] 
**cron_schedule** | **String** | The underlying cron expression. Derived automatically from &#x60;frequency&#x60;, &#x60;time&#x60;, and day fields when using a named frequency; provided verbatim when &#x60;frequency&#x60; is &#x60;cron&#x60;.  | [optional] 
**time_zone** | **String** | IANA time zone name used to interpret the schedule. | [optional] 
**next_run_at** | **Time** | When the next scheduled export will run, in UTC. | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::RepoSyncExportSchedule.new(frequency: nil,
                                 cron_schedule: '0 9 * * 1',
                                 time_zone: 'Europe/Berlin',
                                 next_run_at: nil)
```


