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
require 'Phrase'

instance = Phrase::CustomMetadataProperty.new(id: null,
                                 name: null,
                                 description: null,
                                 data_type: null,
                                 user: null,
                                 projects: null,
                                 value_options: null,
                                 created_at: null,
                                 updated_at: null)
```


