# Phrase::KeyLinksBatchDestroyParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**child_key_ids** | **Array&lt;String&gt;** | The IDs of the child keys to unlink from the parent key. | 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::KeyLinksBatchDestroyParameters.new(child_key_ids: [&quot;child_key_id1&quot;,&quot;child_key_id2&quot;])
```


