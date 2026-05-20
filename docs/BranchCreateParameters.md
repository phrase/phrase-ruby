# Phrase::BranchCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the branch | 
**base** | **String** | Name of an existing branch to use as the base for the new branch. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::BranchCreateParameters.new(name: my-branch,
                                 base: parent-branch)
```


