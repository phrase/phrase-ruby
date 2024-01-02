# Phrase::CustomMetadataPropertiesCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | name of the property | 
**data_type** | [**CustomMetadataDataType**](CustomMetadataDataType.md) |  | 
**project_ids** | **Array&lt;String&gt;** | ids of projects that the property belongs to | [optional] 
**description** | **String** | description of property | [optional] 
**value_options** | **Array&lt;String&gt;** | value options of property (only applies to single or multi select properties) | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::CustomMetadataPropertiesCreateParameters.new(name: Fruit,
                                 data_type: null,
                                 project_ids: [&quot;abcd1234cdef1234abcd1234cdef1234&quot;,&quot;abcd1234cdef1234abcd1234cdef4321&quot;],
                                 description: A healthy snack for all ages,
                                 value_options: [&quot;Apple&quot;,&quot;Banana&quot;,&quot;Coconut&quot;])
```


