# Phrase::TranslationOrder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**lsp** | **String** |  | [optional] 
**amount_in_cents** | **Integer** |  | [optional] 
**currency** | **String** |  | [optional] 
**message** | **String** |  | [optional] 
**state** | **String** |  | [optional] 
**translation_type** | **String** |  | [optional] 
**progress_percent** | **Integer** |  | [optional] 
**source_locale** | [**LocalePreview**](LocalePreview.md) |  | [optional] 
**target_locales** | [**Array&lt;LocalePreview&gt;**](LocalePreview.md) |  | [optional] 
**tag** | **String** |  | [optional] 
**styleguide** | [**StyleguidePreview**](StyleguidePreview.md) |  | [optional] 
**unverify_translations_upon_delivery** | **Boolean** |  | [optional] 
**quality** | **Boolean** |  | [optional] 
**priority** | **Boolean** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::TranslationOrder.new(id: null,
                                 name: null,
                                 lsp: null,
                                 amount_in_cents: null,
                                 currency: null,
                                 message: null,
                                 state: null,
                                 translation_type: null,
                                 progress_percent: null,
                                 source_locale: null,
                                 target_locales: null,
                                 tag: null,
                                 styleguide: null,
                                 unverify_translations_upon_delivery: null,
                                 quality: null,
                                 priority: null,
                                 created_at: null,
                                 updated_at: null)
```


