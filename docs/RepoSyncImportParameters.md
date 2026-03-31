# Phrase::RepoSyncImportParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repository_branch** | **String** | Branch to import from | [optional] 
**branch** | **String** | Strings branch to import to | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::RepoSyncImportParameters.new(repository_branch: my-feature-branch,
                                 branch: my-strings-branch)
```


