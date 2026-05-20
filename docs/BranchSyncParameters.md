# Phrase::BranchSyncParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**strategy** | **String** | Conflict resolution strategy applied when the branch and its base have diverged. &#x60;use_main&#x60; keeps the values from the base branch; &#x60;use_branch&#x60; keeps the values from this branch.  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::BranchSyncParameters.new(strategy: use_main)
```


