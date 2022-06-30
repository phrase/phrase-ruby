# Phrase::DistributionCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the distribution | [optional] 
**project_id** | **String** | Project id the distribution should be assigned to. | [optional] 
**platforms** | **Array&lt;String&gt;** | List of platforms the distribution should support. | [optional] 
**locale_ids** | **Array&lt;String&gt;** | List of locale ids that will be part of distribution releases | [optional] 
**format_options** | **Hash&lt;String, String&gt;** | Additional formatting and render options. Only &lt;code&gt;enclose_in_cdata&lt;/code&gt; is available for platform &lt;code&gt;android&lt;/code&gt;. | [optional] 
**fallback_locales_enabled** | **Boolean** | Use fallback locale if there is no translation in the current locale. | [optional] 
**fallback_to_non_regional_locale** | **Boolean** | Indicates whether to fallback to non regional locale when locale can not be found | [optional] 
**fallback_to_default_locale** | **Boolean** | Indicates whether to fallback to projects default locale when locale can not be found | [optional] 
**use_last_reviewed_version** | **Boolean** | Use last reviewed instead of latest translation in a project | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::DistributionCreateParameters.new(name: My Android Distribution,
                                 project_id: abcd1234abcd1234abcd1234,
                                 platforms: [&quot;android&quot;,&quot;ios&quot;],
                                 locale_ids: [&quot;abcd1234cdef1234abcd1234cdef1234&quot;,&quot;fff565db236400772368235db2c6117e&quot;],
                                 format_options: {xml:{enclose_in_cdata:&#39;1&#39;}},
                                 fallback_locales_enabled: true,
                                 fallback_to_non_regional_locale: true,
                                 fallback_to_default_locale: true,
                                 use_last_reviewed_version: true)
```


