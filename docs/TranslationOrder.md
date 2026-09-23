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
**tag_name** | **String** | Name of the tag whose keys are included in the order. | [optional] 
**styleguide** | [**StyleguidePreview**](StyleguidePreview.md) |  | [optional] 
**unverify_translations_upon_delivery** | **Boolean** |  | [optional] 
**quality** | **Boolean** |  | [optional] 
**priority** | **Boolean** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::TranslationOrder.new(id: nil,
                                 name: nil,
                                 lsp: nil,
                                 amount_in_cents: nil,
                                 currency: nil,
                                 message: nil,
                                 state: nil,
                                 translation_type: nil,
                                 progress_percent: nil,
                                 source_locale: nil,
                                 target_locales: nil,
                                 tag_name: nil,
                                 styleguide: nil,
                                 unverify_translations_upon_delivery: nil,
                                 quality: nil,
                                 priority: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


