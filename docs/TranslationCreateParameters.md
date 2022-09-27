# Phrase::TranslationCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**locale_id** | **String** | Locale. Can be the name or public id of the locale. Preferred is the public id. | [optional] 
**key_id** | **String** | Key | [optional] 
**content** | **String** | Translation content | [optional] 
**plural_suffix** | **String** | Plural suffix. Can be one of: zero, one, two, few, many, other. Must be specified if the key associated to the translation is pluralized. | [optional] 
**unverified** | **Boolean** | Indicates whether translation is unverified. Part of the &lt;a href&#x3D;\&quot;https://support.phrase.com/hc/en-us/articles/5784094755484\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Advanced Workflows&lt;/a&gt; feature. | [optional] 
**excluded** | **Boolean** | Indicates whether translation is excluded. | [optional] 
**autotranslate** | **Boolean** | Indicates whether the translation should be auto-translated. Responses with status 422 if provided for translation within a non-default locale or the project does not have the Autopilot feature enabled. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::TranslationCreateParameters.new(branch: my-feature-branch,
                                 locale_id: abcd1234cdef1234abcd1234cdef1234,
                                 key_id: abcd1234cdef1234abcd1234cdef1234,
                                 content: My translation,
                                 plural_suffix: null,
                                 unverified: null,
                                 excluded: null,
                                 autotranslate: null)
```


