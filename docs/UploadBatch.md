# Phrase::UploadBatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**state** | **String** | Processing state of the upload batch | [optional] 
**delete_unmentioned_keys** | **Boolean** | Indicates whether unmentioned keys will be deleted after processing all uploads in the batch | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**project** | [**ProjectShort**](.md) |  | [optional] 
**user** | [**UserPreview**](.md) |  | [optional] 
**uploads** | [**Array&lt;Upload&gt;**](Upload.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::UploadBatch.new(state: null,
                                 delete_unmentioned_keys: null,
                                 created_at: null,
                                 updated_at: null,
                                 project: null,
                                 user: null,
                                 uploads: null)
```


