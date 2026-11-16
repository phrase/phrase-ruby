# Phrase::RepoSyncUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Display name for the repo sync. | [optional] 
**owner_id** | **String** | Code of the user to assign as owner. Requires &#x60;manage_github_sync?&#x60; permission on the project; returns &#x60;403&#x60; if not satisfied.  | [optional] 
**export_triggers** | **Array&lt;String&gt;** | Replaces the current set of automatic export triggers. Requires &#x60;manage_github_sync?&#x60; permission on the project and the automatic export feature to be enabled for the account. Accepted values: &#x60;schedule&#x60;, &#x60;branch_merged&#x60;, &#x60;job_completed&#x60;.  | [optional] 
**export_schedule** | [**RepoSyncUpdateParametersExportSchedule**](RepoSyncUpdateParametersExportSchedule.md) |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::RepoSyncUpdateParameters.new(name: nil,
                                 owner_id: nil,
                                 export_triggers: nil,
                                 export_schedule: nil)
```


