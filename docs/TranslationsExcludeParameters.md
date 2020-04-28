# Phrase::TranslationsExcludeParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**q** | **String** | q_description_placeholder | [optional] 
**sort** | **String** | Sort criteria. Can be one of: key_name, created_at, updated_at. | [optional] 
**order** | **String** | Order direction. Can be one of: asc, desc. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::TranslationsExcludeParameters.new(branch: my-feature-branch,
                                 q: PhraseApp*%20verified:true%20tags:feature,center,
                                 sort: updated_at,
                                 order: desc)
```


