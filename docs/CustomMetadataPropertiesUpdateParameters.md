# Phrase::CustomMetadataPropertiesUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | name of the property | [optional] 
**project_ids** | **Array&lt;String&gt;** | ids of projects that the property belongs to | [optional] 
**description** | **String** | description of property | [optional] 
**value_options** | **Array&lt;String&gt;** | value options of property (only applies to single or multi select properties) | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::CustomMetadataPropertiesUpdateParameters.new(name: Fruit,
                                 project_ids: [&quot;abcd1234cdef1234abcd1234cdef1234&quot;,&quot;abcd1234cdef1234abcd1234cdef4321&quot;],
                                 description: A healthy snack for all ages,
                                 value_options: [&quot;Apple&quot;,&quot;Banana&quot;,&quot;Coconut&quot;])
```


