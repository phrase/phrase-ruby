# Phrase::TranslationUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**content** | **String** | Translation content | [optional] 
**plural_suffix** | **String** | Plural suffix. Can be one of: zero, one, two, few, many, other. Must be specified if the key associated to the translation is pluralized. | [optional] 
**unverified** | **Boolean** | Indicates whether translation is unverified. Part of the [Advanced Workflows](https://support.phrase.com/hc/en-us/articles/5784094755484) feature. | [optional] 
**excluded** | **Boolean** | Indicates whether translation is excluded. | [optional] 
**autotranslate** | **Boolean** | Indicates whether the translation should be auto-translated. Responses with status 422 if provided for translation within a non-default locale or the project does not have the Autopilot feature enabled. | [optional] 
**reviewed** | **Boolean** | When set to &#x60;true&#x60;, the translation will be marked as reviewed. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::TranslationUpdateParameters.new(branch: my-feature-branch,
                                 content: My translation,
                                 plural_suffix: null,
                                 unverified: null,
                                 excluded: null,
                                 autotranslate: null,
                                 reviewed: true)
```


