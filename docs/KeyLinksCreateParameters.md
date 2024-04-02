# Phrase::KeyLinksCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**child_key_ids** | **Array&lt;String&gt;** | The IDs of the child keys to link to the parent key. Can be left empty, to only mark the given translation-key as parent | 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::KeyLinksCreateParameters.new(child_key_ids: [&quot;child_key_id1&quot;,&quot;child_key_id2&quot;])
```


