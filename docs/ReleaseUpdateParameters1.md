# Phrase::ReleaseUpdateParameters1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cron_schedule** | **String** | Cron schedule for the scheduler. Read more about the format of this field at https://en.wikipedia.org/wiki/Cron | [optional] 
**time_zone** | **String** | Time zone for the scheduler | [optional] 
**locale_ids** | **Array&lt;String&gt;** | List of locale ids that will be included in the release. | [optional] 
**tags** | **Array&lt;String&gt;** | Only include tagged keys in the release. For a key to be included it must be tagged with all tags provided | [optional] 
**branch** | **String** | Branch used for release | [optional] 
**app_min_version** | **String** | The created releases will be available only for apps with version greater or equal to this value | [optional] 
**app_max_version** | **String** | The created releases will be available only for apps with version less or equal to this value | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ReleaseUpdateParameters1.new(cron_schedule: 15 18 * * 1,3,
                                 time_zone: Europe/Berlin,
                                 locale_ids: [&quot;abcd1234cdef1234abcd1234cdef1234&quot;,&quot;fff565db236400772368235db2c6117e&quot;],
                                 tags: [&quot;android&quot;,&quot;feature1&quot;],
                                 branch: my-feature-branch,
                                 app_min_version: 1.0.0,
                                 app_max_version: 2.0.0)
```


