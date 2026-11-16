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
**owner** | [**UserShort**](UserShort.md) |  | [optional] 
**export_triggers** | **Array&lt;String&gt;** | Events that trigger an automatic export. Only present when the automatic export feature is enabled for the account. Possible values: &#x60;schedule&#x60; (runs on the configured schedule), &#x60;branch_merged&#x60; (runs when a branch is merged in the connected repository), &#x60;job_completed&#x60; (runs when a translation job completes in the project).  | [optional] 
**export_schedule** | [**RepoSyncExportSchedule**](RepoSyncExportSchedule.md) |  | [optional] 

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
                                 last_export_at: nil,
                                 owner: nil,
                                 export_triggers: nil,
                                 export_schedule: nil)
```


