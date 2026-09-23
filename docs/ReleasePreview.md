# Phrase::ReleasePreview

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
**locale_codes** | **Array&lt;String&gt;** |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 
**project** | [**ProjectShort**](ProjectShort.md) |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::ReleasePreview.new(id: nil,
                                 version: nil,
                                 app_min_version: nil,
                                 app_max_version: nil,
                                 description: nil,
                                 platforms: nil,
                                 environments: nil,
                                 locale_codes: nil,
                                 tags: nil,
                                 project: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


