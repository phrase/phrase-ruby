# Phrase::Branch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**merged_at** | **DateTime** |  | [optional] 
**merged_by** | [**UserPreview**](UserPreview.md) |  | [optional] 
**created_by** | [**UserPreview**](UserPreview.md) |  | [optional] 
**state** | **String** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::Branch.new(name: null,
                                 created_at: null,
                                 updated_at: null,
                                 merged_at: null,
                                 merged_by: null,
                                 created_by: null,
                                 state: null)
```


