# Phrase::IcuSkeletonParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | **String** | Source ICU message string to derive skeletons from. Mutually exclusive with &#x60;id&#x60;; exactly one of the two must be provided.  | [optional] 
**id** | **String** | Code of an existing translation to source content from. Mutually exclusive with &#x60;content&#x60;; exactly one of the two must be provided. Returns 404 when the translation does not exist.  | [optional] 
**locale_codes** | **Array&lt;String&gt;** | Locale codes for which to generate skeletons. The pluralization rules of each locale determine which plural forms appear in the output.  | [optional] 
**keep_content** | **Boolean** | When true, preserves the existing translation text in each plural form and adds any missing forms for the locale rather than stripping all literal content. | [optional] 
**zero_form_enabled** | **Boolean** | When true, includes the zero plural form in the generated skeleton for locales that support it. | [optional] 
**cldr_version** | **String** | Pluralization rule set to apply when constructing skeletons. Accepted values are &#x60;legacy&#x60; and &#x60;cldr_41&#x60;. Defaults to &#x60;legacy&#x60; when omitted. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::IcuSkeletonParameters.new(content: {count, plural, one {One item} other {# items}},
                                 id: abcd1234abcd1234abcd1234abcd1234,
                                 locale_codes: [&quot;en&quot;,&quot;de&quot;],
                                 keep_content: false,
                                 zero_form_enabled: false,
                                 cldr_version: cldr_41)
```


