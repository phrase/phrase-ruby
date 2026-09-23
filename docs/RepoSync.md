# Phrase::RepoSync

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** | Optional custom display name for this repo sync. When null or blank, the sync is displayed using the associated project name.  | [optional] 
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
require 'phrase'

instance = Phrase::RepoSync.new(id: nil,
                                 name: nil,
                                 project: nil,
                                 provider: nil,
                                 enabled: nil,
                                 auto_import: nil,
                                 repo_name: nil,
                                 pr_branch: nil,
                                 created_at: nil,
                                 last_import_at: nil,
                                 last_export_at: nil)
```


