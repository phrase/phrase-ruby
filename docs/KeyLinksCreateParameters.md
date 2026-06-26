# Phrase::KeyLinksCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**child_key_ids** | **Array&lt;String&gt;** | Codes of the keys to link as children. Pass an empty array to mark the parent key without linking any children. | 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::KeyLinksCreateParameters.new(child_key_ids: [&quot;ijkl9012mnop3456ijkl9012mnop3456&quot;,&quot;abcd1234efgh5678abcd1234efgh5678&quot;])
```


