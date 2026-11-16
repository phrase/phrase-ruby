# Phrase::RepoSyncUpdateParametersExportSchedule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**frequency** | **String** |  | [optional] 
**time** | **String** |  | [optional] 
**time_zone** | **String** |  | [optional] 
**days_of_week** | **String** |  | [optional] 
**day_of_month** | **Integer** |  | [optional] 
**cron_schedule** | **String** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::RepoSyncUpdateParametersExportSchedule.new(frequency: nil,
                                 time: '09:00',
                                 time_zone: 'Europe/Berlin',
                                 days_of_week: '1,3',
                                 day_of_month: nil,
                                 cron_schedule: '0 9 * * 1')
```


