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
require 'Phrase'

instance = Phrase::ReleaseTrigger.new(id: null,
                                 branch: null,
                                 cron_schedule: null,
                                 time_zone: null,
                                 next_run_at: null,
                                 app_min_version: null,
                                 app_max_version: null,
                                 locales: null,
                                 tags: null,
                                 created_at: null,
                                 updated_at: null)
```


