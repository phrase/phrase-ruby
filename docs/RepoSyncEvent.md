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
**uploads** | [**Array&lt;RepoSyncEventUploadsInner&gt;**](RepoSyncEventUploadsInner.md) | The uploads associated with this import event, or &#x60;null&#x60; if no upload batch has been created yet. Each entry identifies a single file upload by its public code (&#x60;id&#x60;) and its current public state (&#x60;state&#x60;). Present on show responses only; absent from list responses. Possible &#x60;state&#x60; values: &#x60;initialized&#x60;, &#x60;waiting_for_preview&#x60;, &#x60;processing&#x60;, &#x60;success&#x60;, &#x60;error&#x60;.  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::RepoSyncEvent.new(id: nil,
                                 type: nil,
                                 created_at: nil,
                                 status: nil,
                                 pull_request_url: nil,
                                 auto_import: nil,
                                 errors: nil,
                                 uploads: nil)
```


