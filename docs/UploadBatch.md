# Phrase::UploadBatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | Processing state of the upload batch | [optional] 
**delete_unmentioned_keys** | **Boolean** | Indicates whether unmentioned keys will be deleted after processing all uploads in the batch | [optional] 
**uploads_count** | **Integer** | Number of uploads attached to this batch. | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**project** | [**ProjectShort**](.md) |  | [optional] 
**user** | [**UserPreview**](.md) |  | [optional] 
**uploads** | [**Array&lt;Upload&gt;**](Upload.md) |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::UploadBatch.new(status: nil,
                                 delete_unmentioned_keys: nil,
                                 uploads_count: nil,
                                 created_at: nil,
                                 updated_at: nil,
                                 project: nil,
                                 user: nil,
                                 uploads: nil)
```


