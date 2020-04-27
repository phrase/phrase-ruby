# Phrase::LocaleDownload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**file_format** | **String** | File format name. See the format guide for all supported file formats. | [optional] 
**tags** | **String** | Limit results to keys tagged with a list of comma separated tag names. | [optional] 
**tag** | **String** | Limit download to tagged keys. This parameter is deprecated. Please use the \&quot;tags\&quot; parameter instead | [optional] 
**include_empty_translations** | **Boolean** | Indicates whether keys without translations should be included in the output as well. | [optional] 
**include_translated_keys** | **Boolean** | Include translated keys in the locale file. Use in combination with include_empty_translations to obtain only untranslated keys. | [optional] 
**keep_notranslate_tags** | **Boolean** | Indicates whether [NOTRANSLATE] tags should be kept. | [optional] 
**convert_emoji** | **Boolean** | This option is obsolete. Projects that were created on or after Nov 29th 2019 or that did not contain emoji by then will not require this flag any longer since emoji are now supported natively. | [optional] 
**format_options** | [**Object**](.md) | Additional formatting and render options. See the &lt;a href&#x3D;\&quot;https://help.phrase.com/help/supported-platforms-and-formats\&quot;&gt;format guide&lt;/a&gt; for a list of options available for each format. Specify format options like this: &lt;code&gt;...&amp;format_options[foo]&#x3D;bar&lt;/code&gt; | [optional] 
**encoding** | **String** | Enforces a specific encoding on the file contents. Valid options are \&quot;UTF-8\&quot;, \&quot;UTF-16\&quot; and \&quot;ISO-8859-1\&quot;. | [optional] 
**skip_unverified_translations** | **Boolean** | Indicates whether the locale file should skip all unverified translations. This parameter is deprecated and should be replaced with &lt;code&gt;include_unverified_translations&lt;/code&gt;. | [optional] 
**include_unverified_translations** | **Boolean** | if set to false unverified translations are excluded | [optional] 
**use_last_reviewed_version** | **Boolean** | If set to true the last reviewed version of a translation is used. This is only available if the review workflow (currently in beta) is enabled for the project. | [optional] 
**fallback_locale_id** | **String** | If a key has no translation in the locale being downloaded the translation in the fallback locale will be used. Provide the public ID of the locale that should be used as the fallback. Requires include_empty_translations to be set to &lt;code&gt;true&lt;/code&gt;. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::LocaleDownload.new(branch: my-feature-branch,
                                 file_format: yml,
                                 tags: feature1,feature2,
                                 tag: feature,
                                 include_empty_translations: null,
                                 include_translated_keys: null,
                                 keep_notranslate_tags: null,
                                 convert_emoji: null,
                                 format_options: null,
                                 encoding: null,
                                 skip_unverified_translations: null,
                                 include_unverified_translations: null,
                                 use_last_reviewed_version: null,
                                 fallback_locale_id: null)
```


