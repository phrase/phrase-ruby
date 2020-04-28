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
**project** | [**ProjectShort**](ProjectShort.md) |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ReleasePreview.new(id: null,
                                 version: null,
                                 app_min_version: null,
                                 app_max_version: null,
                                 description: null,
                                 platforms: null,
                                 environments: null,
                                 locale_codes: null,
                                 project: null,
                                 created_at: null,
                                 updated_at: null)
```


