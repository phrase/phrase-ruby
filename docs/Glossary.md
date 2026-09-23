# Phrase::Glossary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**projects** | [**Array&lt;ProjectShort&gt;**](ProjectShort.md) |  | [optional] 
**spaces** | [**Array&lt;Space&gt;**](Space.md) |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::Glossary.new(id: nil,
                                 name: nil,
                                 projects: nil,
                                 spaces: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


