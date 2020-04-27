# Phrase::JobKeysDelete

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**translation_key_ids** | **String** | ids of keys that should added to the job | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobKeysDelete.new(branch: my-feature-branch,
                                 translation_key_ids: [&quot;abcd1234cdef1234abcd1234cdef1234&quot;])
```


