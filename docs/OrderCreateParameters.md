# Phrase::OrderCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**lsp** | **String** | Name of the LSP that should process this order. Can be one of gengo, textmaster. | [optional] 
**source_locale_id** | **String** | Source locale for the order. Can be the name or public id of the source locale. Preferred is the public id. | [optional] 
**target_locale_ids** | **Array&lt;String&gt;** | List of target locales you want the source content translate to. Can be the name or public id of the target locales. Preferred is the public id. | [optional] 
**translation_type** | **String** | Name of the quality level, availability depends on the LSP. Can be one of:  standard, pro (for orders processed by Gengo) and one of regular, premium, enterprise (for orders processed by TextMaster) | [optional] 
**tag** | **String** | Tag you want to order translations for. | [optional] 
**message** | **String** | Message that is displayed to the translators for description. | [optional] 
**styleguide_id** | **String** | Style guide for translators to be sent with the order. | [optional] 
**unverify_translations_upon_delivery** | **Boolean** | Unverify translations upon delivery. | [optional] 
**include_untranslated_keys** | **Boolean** | Order translations for keys with untranslated content in the selected target locales. | [optional] 
**include_unverified_translations** | **Boolean** | Order translations for keys with unverified content in the selected target locales. | [optional] 
**category** | **String** | Category to use (required for orders processed by TextMaster). | [optional] 
**quality** | **Boolean** | Extra proofreading option to ensure consistency in vocabulary and style. Only available for orders processed by TextMaster. | [optional] 
**priority** | **Boolean** | Indicates whether the priority option should be ordered which decreases turnaround time by 30%. Available only for orders processed by TextMaster. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::OrderCreateParameters.new(branch: my-feature-branch,
                                 lsp: textmaster,
                                 source_locale_id: abcd1234abcd1234abcd1234abcd1234,
                                 target_locale_ids: [&quot;1234abcd1234abcd1234abcd1234abcd&quot;,&quot;abcd1234abcd1234abcd1234abcd1234&quot;],
                                 translation_type: premium,
                                 tag: my-awesome-feature,
                                 message: Please make everything sound really nice :),
                                 styleguide_id: 1234abcd1234abcd1234abcd1234abcd,
                                 unverify_translations_upon_delivery: null,
                                 include_untranslated_keys: null,
                                 include_unverified_translations: null,
                                 category: C021,
                                 quality: null,
                                 priority: null)
```


