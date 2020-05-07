# Phrase::DistributionUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the distribution | [optional] 
**project_id** | **String** | Project id the distribution should be assigned to. | [optional] 
**platforms** | **Array&lt;String&gt;** | List of platforms the distribution should support. | [optional] 
**format_options** | **Hash&lt;String, String&gt;** | Additional formatting and render options. Only &lt;code&gt;enclose_in_cdata&lt;/code&gt; is available for platform &lt;code&gt;android&lt;/code&gt;. | [optional] 
**fallback_to_non_regional_locale** | **Boolean** | Indicates whether to fallback to non regional locale when locale can not be found | [optional] 
**fallback_to_default_locale** | **Boolean** | Indicates whether to fallback to projects default locale when locale can not be found | [optional] 
**use_last_reviewed_version** | **Boolean** | Use last reviewed instead of latest translation in a project | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::DistributionUpdateParameters.new(name: My Android Distribution,
                                 project_id: abcd1234abcd1234abcd1234,
                                 platforms: [&quot;android&quot;,&quot;ios&quot;],
                                 format_options: {xml:{enclose_in_cdata:&#39;1&#39;}},
                                 fallback_to_non_regional_locale: true,
                                 fallback_to_default_locale: true,
                                 use_last_reviewed_version: true)
```


