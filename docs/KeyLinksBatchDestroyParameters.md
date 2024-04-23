# Phrase::KeyLinksBatchDestroyParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**child_key_ids** | **Array&lt;String&gt;** | The IDs of the child keys to unlink from the parent key. | 
**unlink_parent** | **Boolean** | Whether to unlink the parent key as well and unmark it as linked-key. | [optional] [default to false]

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::KeyLinksBatchDestroyParameters.new(child_key_ids: [&quot;child_key_id1&quot;,&quot;child_key_id2&quot;],
                                 unlink_parent: null)
```


