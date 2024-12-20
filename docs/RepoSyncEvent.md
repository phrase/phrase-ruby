# Phrase::RepoSyncEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**status** | **String** |  | [optional] 
**pull_request_url** | **String** | URL of the pull request created on export | [optional] 
**auto_import** | **Boolean** | Whether the import was triggered by the repo push event | [optional] 
**errors** | [**Array&lt;RepoSyncEventErrorsInner&gt;**](RepoSyncEventErrorsInner.md) | List of error messages, in case of failure | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::RepoSyncEvent.new(id: null,
                                 type: null,
                                 created_at: null,
                                 status: null,
                                 pull_request_url: null,
                                 auto_import: null,
                                 errors: null)
```


