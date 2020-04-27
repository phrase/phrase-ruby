# Phrase::TranslationsByKey

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**sort** | **String** | Sort criteria. Can be one of: key_name, created_at, updated_at. | [optional] 
**order** | **String** | Order direction. Can be one of: asc, desc. | [optional] 
**q** | **String** | q_description_placeholder | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::TranslationsByKey.new(branch: my-feature-branch,
                                 sort: updated_at,
                                 order: desc,
                                 q: PhraseApp*%20unverified:true%20excluded:true%20tags:feature,center)
```


