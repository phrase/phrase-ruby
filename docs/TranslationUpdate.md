# Phrase::TranslationUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**content** | **String** | Translation content | [optional] 
**plural_suffix** | **String** | Plural suffix. Can be one of: zero, one, two, few, many, other. Must be specified if the key associated to the translation is pluralized. | [optional] 
**unverified** | **String** | Indicates whether translation is unverified. Part of the &lt;a href&#x3D;\&quot;https://help.phrase.com/help/verification-and-proofreading\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Advanced Workflows&lt;/a&gt; feature. | [optional] 
**excluded** | **String** | Indicates whether translation is excluded. | [optional] 
**autotranslate** | **String** | Indicates whether the translation should be auto-translated. Responses with status 422 if provided for translation within a non-default locale or the project does not have the Autopilot feature enabled. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::TranslationUpdate.new(branch: my-feature-branch,
                                 content: My translation,
                                 plural_suffix: null,
                                 unverified: null,
                                 excluded: null,
                                 autotranslate: null)
```


