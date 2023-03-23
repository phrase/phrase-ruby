# Phrase::IcuSkeletonParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | **String** | Source content | [optional] 
**locale_codes** | **Array&lt;String&gt;** | Locale codes | [optional] 
**keep_content** | **Boolean** | Keep the content and add missing plural forms for each locale | [optional] 
**zero_form_enabled** | **Boolean** | Indicates whether the zero form should be included or excluded in the returned skeletons | [optional] 
**cldr_version** | **String** | Strings supports two CLDR variants, when it comes to pluralization rules. \\ You can choose which one you want to use when constructing the skeletons. Possible values \\ are &#x60;legacy&#x60; and &#x60;cldr_41&#x60;. Default value is &#x60;legacy&#x60;. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::IcuSkeletonParameters.new(content: {number, plural, one {One} other {%{n}}},
                                 locale_codes: [&quot;en&quot;],
                                 keep_content: null,
                                 zero_form_enabled: null,
                                 cldr_version: cldr_41)
```


