# Phrase::LocaleCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**name** | **String** | Locale name. Must be unique per project. | 
**code** | **String** | Locale ISO code. Unlike &#x60;name&#x60;, &#x60;code&#x60; is not required to be unique per project - creating a locale whose &#x60;code&#x60; duplicates an existing locale&#39;s &#x60;code&#x60; in the same project will succeed rather than error, resulting in two locales that share the same code. | 
**default** | **Boolean** | Indicates whether locale is the default locale. If set to true, the previous default locale the project is no longer the default locale. | [optional] 
**main** | **Boolean** | Indicates whether locale is a main locale. Main locales are part of the [Verification System](https://support.phrase.com/hc/en-us/articles/5784094755484) feature. | [optional] 
**rtl** | **Boolean** | Indicates whether locale is a RTL (Right-to-Left) locale. | [optional] 
**source_locale_id** | **String** | Source locale. Can be the name or id of the locale. Preferred is id. | [optional] 
**fallback_locale_id** | **String** | Fallback locale for empty translations. Can be a locale name or id. | [optional] 
**unverify_new_translations** | **Boolean** | Indicates that new translations for this locale should be marked as unverified. Part of the [Advanced Workflows](https://support.phrase.com/hc/en-us/articles/5784094755484) feature. | [optional] 
**unverify_updated_translations** | **Boolean** | Indicates that updated translations for this locale should be marked as unverified. Part of the [Advanced Workflows](https://support.phrase.com/hc/en-us/articles/5784094755484) feature. | [optional] 
**unverify_on_source_changes** | **Boolean** | Indicates that translations for this locale should be marked as unverified when the source language has been changed. | [optional] 
**autotranslate** | **Boolean** | If set, translations for this locale will be fetched automatically, right after creation. | [optional] 
**language_ai_profile** | **String** | Identifier of the Language AI profile to use for this locale. | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::LocaleCreateParameters.new(branch: 'my-feature-branch',
                                 name: 'de',
                                 code: 'de-DE',
                                 default: nil,
                                 main: nil,
                                 rtl: nil,
                                 source_locale_id: 'abcd1234abcd1234abcd1234abcd1234',
                                 fallback_locale_id: 'abcd1234abcd1234abcd1234abcd1234',
                                 unverify_new_translations: nil,
                                 unverify_updated_translations: nil,
                                 unverify_on_source_changes: nil,
                                 autotranslate: nil,
                                 language_ai_profile: 'abcd1234abcd1234abcd1234abcd1234')
```


