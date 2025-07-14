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
                                 created_at: null,
                                 updated_at: null)
```


