# Phrase::GitlabSync

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**project_id** | **String** |  | [optional] 
**gitlab_project_id** | **Integer** |  | [optional] 
**gitlab_branch_name** | **String** |  | [optional] 
**auto_import** | **Boolean** |  | [optional] 
**auto_import_secret** | **String** |  | [optional] 
**auto_import_url** | **String** |  | [optional] 
**self_hosted_api_url** | **String** |  | [optional] 
**last_exported_at** | **DateTime** |  | [optional] 
**last_imported_at** | **DateTime** |  | [optional] 
**last_status** | **String** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::GitlabSync.new(id: null,
                                 project_id: null,
                                 gitlab_project_id: null,
                                 gitlab_branch_name: null,
                                 auto_import: null,
                                 auto_import_secret: null,
                                 auto_import_url: null,
                                 self_hosted_api_url: null,
                                 last_exported_at: null,
                                 last_imported_at: null,
                                 last_status: null)
```


