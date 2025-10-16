# Phrase::Branch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_project_id** | **String** |  | [optional] 
**branch_project_id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**merged_at** | **Time** |  | [optional] 
**merged_by** | [**UserPreview**](UserPreview.md) |  | [optional] 
**created_by** | [**UserPreview**](UserPreview.md) |  | [optional] 
**state** | **String** |  | [optional] 
**child_branches** | **Array&lt;String&gt;** |  | [optional] 

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
                                 state: null,
                                 child_branches: null)
```


