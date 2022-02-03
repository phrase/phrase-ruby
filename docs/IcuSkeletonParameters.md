# Phrase::IcuSkeletonParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | **String** | Source content | [optional] 
**locale_codes** | **Array&lt;String&gt;** | Locale codes | [optional] 
**keep_content** | **Boolean** | Keep the content and add missing plural forms for each locale | [optional] 
**zero_form_enabled** | **Boolean** | Indicates whether the zero form should be included or excluded in the returned skeletons | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::IcuSkeletonParameters.new(content: {number, plural, one {One} other {%{n}}},
                                 locale_codes: [&quot;en&quot;],
                                 keep_content: null,
                                 zero_form_enabled: null)
```


