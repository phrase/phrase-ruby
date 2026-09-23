# Phrase::CustomMetadataProperty

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**data_type** | [**CustomMetadataDataType**](CustomMetadataDataType.md) |  | [optional] 
**user** | [**UserPreview**](UserPreview.md) |  | [optional] 
**projects** | [**Array&lt;ProjectShort&gt;**](ProjectShort.md) |  | [optional] 
**value_options** | **Array&lt;String&gt;** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::CustomMetadataProperty.new(id: nil,
                                 name: nil,
                                 description: nil,
                                 data_type: nil,
                                 user: nil,
                                 projects: nil,
                                 value_options: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


