# Phrase::BranchComparisonDiff

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_changes** | [**Array&lt;BranchComparisonChange&gt;**](BranchComparisonChange.md) | Changes made to this resource type in the base branch since the branch was created. | [optional] 
**head_changes** | [**Array&lt;BranchComparisonChange&gt;**](BranchComparisonChange.md) | Changes made to this resource type in the feature branch. | [optional] 
**conflicts** | [**Hash&lt;String, BranchComparisonDiffConflictsValue&gt;**](BranchComparisonDiffConflictsValue.md) | Conflicting changes present in both branches, keyed by conflict type. Possible conflict type keys: &#x60;changed_in_head_changed_in_base&#x60;, &#x60;added_in_head_added_in_base&#x60;, &#x60;changed_in_head_deleted_in_base&#x60;, &#x60;deleted_in_head_changed_in_base&#x60;. Each value contains &#x60;base&#x60; and &#x60;head&#x60; arrays of changed attribute objects.  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::BranchComparisonDiff.new(base_changes: null,
                                 head_changes: null,
                                 conflicts: null)
```


