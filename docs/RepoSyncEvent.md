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
**errors** | **Array&lt;String&gt;** | List of error messages, in case of failure | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::RepoSyncEvent.new(id: nil,
                                 type: nil,
                                 created_at: nil,
                                 status: nil,
                                 pull_request_url: nil,
                                 auto_import: nil,
                                 errors: nil)
```


