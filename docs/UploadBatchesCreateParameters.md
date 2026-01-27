# Phrase::UploadBatchesCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**delete_unmentioned_keys** | **Boolean** | If set to true, after all uploads in the batch are completed, translation keys that were not mentioned in any of the uploaded files will be deleted. | [optional] 
**upload_ids** | **Array&lt;String&gt;** | Array of upload IDs to include in the batch | 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::UploadBatchesCreateParameters.new(branch: my-feature-branch,
                                 delete_unmentioned_keys: true,
                                 upload_ids: [&quot;abcd1234cdef1234abcd1234cdef1234&quot;,&quot;bcde2345defg2345bcde2345defg2345&quot;])
```


