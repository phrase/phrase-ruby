# Phrase::RepoSyncCreateParametersExportSchedule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**frequency** | **String** |  | [optional] 
**time** | **String** | Time of day for the export (HH:MM format). Used with &#x60;day&#x60;, &#x60;week&#x60;, and &#x60;month&#x60; frequencies. | [optional] 
**time_zone** | **String** | IANA time zone name. | [optional] 
**days_of_week** | **String** | Comma-separated day numbers (0&#x3D;Sunday … 6&#x3D;Saturday). Used with &#x60;week&#x60; frequency. | [optional] 
**day_of_month** | **Integer** | Day of the month (1–31). Used with &#x60;month&#x60; frequency. | [optional] 
**cron_schedule** | **String** | Raw cron expression. Used when &#x60;frequency&#x60; is &#x60;cron&#x60;. | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::RepoSyncCreateParametersExportSchedule.new(frequency: nil,
                                 time: '09:00',
                                 time_zone: 'Europe/Berlin',
                                 days_of_week: '1,3',
                                 day_of_month: nil,
                                 cron_schedule: '0 9 * * 1')
```


