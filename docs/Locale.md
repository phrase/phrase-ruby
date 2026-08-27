# Phrase::Locale

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**code** | **String** |  | [optional] 
**default** | **Boolean** |  | [optional] 
**main** | **Boolean** |  | [optional] 
**rtl** | **Boolean** |  | [optional] 
**plural_forms** | **Array&lt;String&gt;** |  | [optional] 
**ordinal_plural_forms** | **Array&lt;String&gt;** |  | [optional] 
**source_locale** | [**LocalePreview**](LocalePreview.md) |  | [optional] 
**fallback_locale** | [**LocalePreview**](LocalePreview.md) |  | [optional] 
**language_ai_profile** | **String** |  | [optional] 
**unverify_new_translations** | **Boolean** | Indicates that new translations for this locale are marked as unverified. Only applies to locales using the basic verification workflow. Part of the [Advanced Workflows](https://support.phrase.com/hc/en-us/articles/5784094755484) feature. | [optional] 
**unverify_updated_translations** | **Boolean** | Indicates that updated translations for this locale are marked as unverified. Only applies to locales using the basic verification workflow. Part of the [Advanced Workflows](https://support.phrase.com/hc/en-us/articles/5784094755484) feature. | [optional] 
**unverify_on_source_changes** | **Boolean** | Indicates that translations for this locale are marked as unverified when the source language has been changed. | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::Locale.new(id: null,
                                 name: null,
                                 code: null,
                                 default: null,
                                 main: null,
                                 rtl: null,
                                 plural_forms: null,
                                 ordinal_plural_forms: null,
                                 source_locale: null,
                                 fallback_locale: null,
                                 language_ai_profile: null,
                                 unverify_new_translations: null,
                                 unverify_updated_translations: null,
                                 unverify_on_source_changes: null,
                                 created_at: null,
                                 updated_at: null)
```


