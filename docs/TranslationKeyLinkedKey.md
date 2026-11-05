# Phrase::TranslationKeyLinkedKey

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**role** | **String** | Whether this key is the parent or the child in the link relationship. | [optional] 
**parent** | [**TranslationKeyLinkedKeyParent**](TranslationKeyLinkedKeyParent.md) |  | [optional] 
**children_count** | **Integer** | The number of linked child keys. Set for parent keys. | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::TranslationKeyLinkedKey.new(role: nil,
                                 parent: nil,
                                 children_count: 3)
```


