# Phrase::RepoSync

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**project** | [**ProjectShort**](ProjectShort.md) |  | [optional] 
**provider** | **String** |  | [optional] 
**enabled** | **Boolean** |  | [optional] 
**auto_import** | **Boolean** |  | [optional] 
**repo_name** | **String** |  | [optional] 
**pr_branch** | **String** | Branch used as the source of exports/PRs. May be &#x60;null&#x60; when the sync is configured to push directly to &#x60;base_branch&#x60;.  | [optional] 
**created_at** | **Time** |  | [optional] 
**last_import_at** | **Time** |  | [optional] 
**last_export_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::RepoSync.new(id: null,
                                 project: null,
                                 provider: null,
                                 enabled: null,
                                 auto_import: null,
                                 repo_name: null,
                                 pr_branch: null,
                                 created_at: null,
                                 last_import_at: null,
                                 last_export_at: null)
```


