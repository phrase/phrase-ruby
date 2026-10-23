# Phrase::RepoSyncEventUploadsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The upload&#39;s public identifier (code). | [optional] 
**state** | **String** | The upload&#39;s current public state. Multiple internal processing states are collapsed to &#x60;processing&#x60;; both internal error states are collapsed to &#x60;error&#x60;.  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::RepoSyncEventUploadsInner.new(id: 'abcd1234',
                                 state: nil)
```


