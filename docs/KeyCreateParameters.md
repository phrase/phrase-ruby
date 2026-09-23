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
**excluded_in_locales** | **Array&lt;String&gt;** | Locales for which translations of this key are excluded from exports. Pass an empty array to clear exclusions.  | [optional] 
**format_value_type** | **String** | Override of the value type for the key in the export. Most useful for formats like Android XML that distinguish string vs. plural resources.  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::KeyCreateParameters.new(branch: 'my-feature-branch',
                                 name: 'home.index.headline',
                                 description: 'Some description worth knowing...',
                                 plural: nil,
                                 use_ordinal_rules: nil,
                                 name_plural: 'home.index.headlines',
                                 data_type: 'number',
                                 tags: 'awesome-feature,needs-proofreading',
                                 max_characters_allowed: 140,
                                 screenshot: File.new('/path/to/file'),
                                 remove_screenshot: nil,
                                 unformatted: nil,
                                 default_translation_content: 'Default translation content',
                                 autotranslate: nil,
                                 xml_space_preserve: nil,
                                 original_file: nil,
                                 localized_format_string: nil,
                                 localized_format_key: nil,
                                 custom_metadata: {"fruit":"Apple","vegetable":"Tomato"},
                                 excluded_in_locales: ["de","fr"],
                                 format_value_type: 'string')
```


