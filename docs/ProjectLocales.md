# Phrase::ProjectLocales

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**project_role** | **String** |  | [optional] 
**main_format** | **String** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**locales** | [**Array&lt;LocalePreview&gt;**](LocalePreview.md) |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::ProjectLocales.new(id: nil,
                                 name: nil,
                                 project_role: nil,
                                 main_format: nil,
                                 created_at: nil,
                                 updated_at: nil,
                                 locales: nil)
```


