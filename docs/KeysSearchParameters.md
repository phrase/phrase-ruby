# Phrase::KeysSearchParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**sort** | **String** | Sort by field. Can be one of: name, created_at, updated_at. | [optional] 
**order** | **String** | Order direction. Can be one of: asc, desc. | [optional] 
**q** | **String** | q_description_placeholder | [optional] 
**locale_id** | **String** | Locale used to determine the translation state of a key when filtering for untranslated or translated keys. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::KeysSearchParameters.new(branch: my-feature-branch,
                                 sort: updated_at,
                                 order: desc,
                                 q: mykey* translated:true,
                                 locale_id: abcd1234abcd1234abcd1234abcd1234)
```


