# Phrase::Glossary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**terms_count** | **Integer** | Number of terms in the glossary. | [optional] 
**projects** | [**Array&lt;ProjectShort&gt;**](ProjectShort.md) |  | [optional] 
**spaces** | [**Array&lt;Space&gt;**](Space.md) |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::Glossary.new(id: nil,
                                 name: nil,
                                 terms_count: 42,
                                 projects: nil,
                                 spaces: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


