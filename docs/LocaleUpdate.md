# Phrase::LocaleUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**name** | **String** | Locale name | [optional] 
**code** | **String** | Locale ISO code | [optional] 
**default** | **Boolean** | Indicates whether locale is the default locale. If set to true, the previous default locale the project is no longer the default locale. | [optional] 
**main** | **Boolean** | Indicates whether locale is a main locale. Main locales are part of the &lt;a href&#x3D;\&quot;https://help.phrase.com/help/verification-and-proofreading\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Verification System&lt;/a&gt; feature. | [optional] 
**rtl** | **Boolean** | Indicates whether locale is a RTL (Right-to-Left) locale. | [optional] 
**source_locale_id** | **String** | Source locale. Can be the name or public id of the locale. Preferred is the public id. | [optional] 
**unverify_new_translations** | **Boolean** | Indicates that new translations for this locale should be marked as unverified. Part of the &lt;a href&#x3D;\&quot;https://help.phrase.com/help/verification-and-proofreading\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Advanced Workflows&lt;/a&gt; feature. | [optional] 
**unverify_updated_translations** | **Boolean** | Indicates that updated translations for this locale should be marked as unverified. Part of the &lt;a href&#x3D;\&quot;https://help.phrase.com/help/verification-and-proofreading\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Advanced Workflows&lt;/a&gt; feature. | [optional] 
**autotranslate** | **Boolean** | If set, translations for this locale will be fetched automatically, right after creation. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::LocaleUpdate.new(branch: my-feature-branch,
                                 name: de,
                                 code: de-DE,
                                 default: null,
                                 main: null,
                                 rtl: null,
                                 source_locale_id: abcd1234abcd1234abcd1234abcd1234,
                                 unverify_new_translations: null,
                                 unverify_updated_translations: null,
                                 autotranslate: null)
```


