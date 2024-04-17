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
                                 created_at: null,
                                 last_import_at: null,
                                 last_export_at: null)
```


