# Phrase::ProjectCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the project | [optional] 
**main_format** | **String** | Main file format specified by its API Extension name. Used for locale downloads if no format is specified. For API Extension names of available file formats see &lt;a href&#x3D;\&quot;https://help.phrase.com/help/supported-platforms-and-formats\&quot;&gt;Format Guide&lt;/a&gt; or our &lt;a href&#x3D;\&quot;#formats\&quot;&gt;Formats API Endpoint&lt;/a&gt;. | [optional] 
**shares_translation_memory** | **String** | Indicates whether the project should share the account&#39;s translation memory | [optional] 
**project_image** | **String** | Image to identify the project | [optional] 
**remove_project_image** | **String** | Indicates whether the project image should be deleted. | [optional] 
**account_id** | **String** | Account ID to specify the actual account the project should be created in. Required if the requesting user is a member of multiple accounts. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ProjectCreate.new(name: My Android Project,
                                 main_format: yml,
                                 shares_translation_memory: true,
                                 project_image: /path/to/my/project-screenshot.png,
                                 remove_project_image: null,
                                 account_id: abcd1234)
```


