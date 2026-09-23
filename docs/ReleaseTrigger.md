# Phrase::ReleaseTrigger

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**branch** | **String** |  | [optional] 
**cron_schedule** | **String** | Cron schedule for the scheduler. Read more about the format of this field at https://en.wikipedia.org/wiki/Cron | [optional] 
**time_zone** | **String** | Time zone for the scheduler | [optional] 
**next_run_at** | **Time** | The next time a release will be created for this trigger | [optional] 
**app_min_version** | **String** |  | [optional] 
**app_max_version** | **String** |  | [optional] 
**locales** | [**Array&lt;LocalePreview&gt;**](LocalePreview.md) |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::ReleaseTrigger.new(id: nil,
                                 branch: nil,
                                 cron_schedule: nil,
                                 time_zone: nil,
                                 next_run_at: nil,
                                 app_min_version: nil,
                                 app_max_version: nil,
                                 locales: nil,
                                 tags: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


