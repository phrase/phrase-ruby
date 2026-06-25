# Phrase::KeyLinksBatchDestroyParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**child_key_ids** | **Array&lt;String&gt;** | Codes of the child keys to unlink. Required when unlink_parent is false or omitted. Ignored when unlink_parent is true. | 
**unlink_parent** | **Boolean** | When true, dissolves the entire linked-key group by unlinking all children and removing the group. The child_key_ids field is ignored when this is set to true. | [optional] [default to false]
**strategy** | **String** | Controls what happens to child key translation content after unlinking. keep_content (default) copies the parent translation into each child; remove_content clears each child translation. | [optional] [default to &#39;keep_content&#39;]

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::KeyLinksBatchDestroyParameters.new(child_key_ids: [&quot;feature.subtitle&quot;,&quot;nav.home&quot;],
                                 unlink_parent: null,
                                 strategy: null)
```


