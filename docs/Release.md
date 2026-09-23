# Phrase::Release

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**version** | **Integer** |  | [optional] 
**app_min_version** | **String** |  | [optional] 
**app_max_version** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**platforms** | **Array&lt;String&gt;** |  | [optional] 
**environments** | **Array&lt;String&gt;** |  | [optional] 
**locales** | [**Array&lt;LocalePreview&gt;**](LocalePreview.md) |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 
**state** | **String** |  | [optional] 
**project** | [**ProjectShort**](ProjectShort.md) |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::Release.new(id: nil,
                                 version: nil,
                                 app_min_version: nil,
                                 app_max_version: nil,
                                 description: nil,
                                 platforms: nil,
                                 environments: nil,
                                 locales: nil,
                                 tags: nil,
                                 state: nil,
                                 project: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


