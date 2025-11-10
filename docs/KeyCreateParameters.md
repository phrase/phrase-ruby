# Phrase::KeyCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**name** | **String** | Key name | 
**description** | **String** | Key description (usually includes contextual information for translators) | [optional] 
**plural** | **Boolean** | Indicates whether key supports pluralization | [optional] 
**use_ordinal_rules** | **Boolean** | Indicates whether key uses ordinal rules for pluralization | [optional] 
**name_plural** | **String** | Plural name for the key (used in some file formats, e.g. Gettext) | [optional] 
**data_type** | **String** | Type of the key. Can be one of the following: string, number, boolean, array, markdown. | [optional] 
**tags** | **String** | List of tags separated by comma to be associated with the key. | [optional] 
**max_characters_allowed** | **Integer** | Max. number of characters translations for this key can have. | [optional] 
**screenshot** | **File** | Screenshot/image for the key. This parameter is deprecated. Please use the Screenshots endpoint instead. | [optional] 
**remove_screenshot** | **Boolean** | Indicates whether the screenshot will be deleted. This parameter is deprecated. Please use the Screenshots endpoint instead. | [optional] 
**unformatted** | **Boolean** | Indicates whether the key should be exported as \&quot;unformatted\&quot;. Supported by Android XML and other formats. | [optional] 
**default_translation_content** | **String** | Creates a translation in the default locale with the specified content | [optional] 
**autotranslate** | **Boolean** | Indicates whether the key should be autotranslated to other locales based on the copy provided in &#x60;default_translation_content&#x60;. | [optional] 
**xml_space_preserve** | **Boolean** | Indicates whether the key should be exported with \&quot;xml:space&#x3D;preserve\&quot;. Supported by several XML-based formats. | [optional] 
**original_file** | **String** | Original file attribute. Used in some formats, e.g. XLIFF. | [optional] 
**localized_format_string** | **String** | NSStringLocalizedFormatKey attribute. Used in .stringsdict format. | [optional] 
**localized_format_key** | **String** | NSStringLocalizedFormatKey attribute. Used in .stringsdict format. | [optional] 
**custom_metadata** | **Object** | Custom metadata property name and value pairs to be associated with key. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::KeyCreateParameters.new(branch: my-feature-branch,
                                 name: home.index.headline,
                                 description: Some description worth knowing...,
                                 plural: null,
                                 use_ordinal_rules: null,
                                 name_plural: home.index.headlines,
                                 data_type: number,
                                 tags: awesome-feature,needs-proofreading,
                                 max_characters_allowed: 140,
                                 screenshot: [B@37d85eec,
                                 remove_screenshot: null,
                                 unformatted: null,
                                 default_translation_content: Default translation content,
                                 autotranslate: null,
                                 xml_space_preserve: null,
                                 original_file: null,
                                 localized_format_string: null,
                                 localized_format_key: null,
                                 custom_metadata: {&quot;fruit&quot;:&quot;Apple&quot;,&quot;vegetable&quot;:&quot;Tomato&quot;})
```


