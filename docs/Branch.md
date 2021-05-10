# Phrase::Branch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_project_id** | **String** |  | [optional] 
**branch_project_id** | **String** |  | [optional] 
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

instance = Phrase::Branch.new(base_project_id: null,
                                 branch_project_id: null,
                                 name: null,
                                 created_at: null,
                                 updated_at: null,
                                 merged_at: null,
                                 merged_by: null,
                                 created_by: null,
                                 state: null)
```


