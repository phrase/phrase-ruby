# Phrase::KeysTag

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**q** | **String** | q_description_placeholder | [optional] 
**locale_id** | **String** | Locale used to determine the translation state of a key when filtering for untranslated or translated keys. | [optional] 
**tags** | **String** | Tag or comma-separated list of tags to add to the matching collection of keys | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::KeysTag.new(branch: my-feature-branch,
                                 q: mykey* translated:true,
                                 locale_id: abcd1234abcd1234abcd1234abcd1234,
                                 tags: landing-page,release-1.2)
```


