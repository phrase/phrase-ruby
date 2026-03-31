# Phrase::RepoSyncExportParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pr_branch** | **String** | Source branch to open a pull request from | [optional] 
**branch** | **String** | Strings branch to export from | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::RepoSyncExportParameters.new(pr_branch: my-feature-branch,
                                 branch: my-strings-branch)
```


