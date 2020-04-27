# Phrase::KeysDelete

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**q** | **String** | q_description_placeholder | [optional] 
**locale_id** | **String** | Locale used to determine the translation state of a key when filtering for untranslated or translated keys. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::KeysDelete.new(branch: my-feature-branch,
                                 q: mykey* translated:true,
                                 locale_id: abcd1234abcd1234abcd1234abcd1234)
```


