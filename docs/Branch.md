# Phrase::Branch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_project_id** | **String** |  | [optional] 
**branch_project_id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**base** | **String** | Name of the base branch this branch was created from. Only present for branches created with the newer branching system. | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**merged_at** | **Time** |  | [optional] 
**merged_by** | [**UserPreview**](UserPreview.md) |  | [optional] 
**created_by** | [**UserPreview**](UserPreview.md) |  | [optional] 
**state** | **String** |  | [optional] 
**child_branches** | **Array&lt;String&gt;** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::Branch.new(base_project_id: nil,
                                 branch_project_id: nil,
                                 name: nil,
                                 base: nil,
                                 created_at: nil,
                                 updated_at: nil,
                                 merged_at: nil,
                                 merged_by: nil,
                                 created_by: nil,
                                 state: nil,
                                 child_branches: nil)
```


