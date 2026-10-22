# Phrase::CustomMetadataPropertiesUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | name of the property | [optional] 
**project_ids** | **Array&lt;String&gt;** | ids of projects that the property belongs to | [optional] 
**description** | **String** | description of property. Send an empty string or &#x60;null&#x60; to clear the value; omit the field to leave it unchanged. The Phrase CLI drops &#x60;null&#x60; values before sending, so use an empty string there. | [optional] 
**value_options** | **Array&lt;String&gt;** | value options of property (only applies to single or multi select properties) | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::CustomMetadataPropertiesUpdateParameters.new(name: 'Fruit',
                                 project_ids: ["abcd1234cdef1234abcd1234cdef1234","abcd1234cdef1234abcd1234cdef4321"],
                                 description: 'A healthy snack for all ages',
                                 value_options: ["Apple","Banana","Coconut"])
```


