# Phrase::JobKeysDeleteParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**translation_key_ids** | **Array&lt;String&gt;** | ids of keys that should be deleted from the job | 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobKeysDeleteParameters.new(branch: my-feature-branch,
                                 translation_key_ids: [&quot;abcd1234cdef1234abcd1234cdef1234&quot;])
```


