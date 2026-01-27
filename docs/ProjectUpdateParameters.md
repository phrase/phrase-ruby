# Phrase::ProjectUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | Required if the requesting user is a member of multiple accounts. Account ID to specify the actual account the project should be created in. | [optional] 
**name** | **String** | (Optional) Name of the project | [optional] 
**point_of_contact** | **String** | (Optional) User ID of the point of contact for the project. Pass &#x60;null&#x60; to unset. | [optional] 
**main_format** | **String** | (Optional) Main file format specified by its API Extension name. Used for locale downloads if no format is specified. For API Extension names of available file formats see [Format Guide](https://support.phrase.com/hc/en-us/sections/6111343326364) or our [Formats API Endpoint](#formats). | [optional] 
**media** | **String** | (Optional) Main technology stack used in the project. It affects for example the suggested placeholder style. Predefined values include: &#x60;Ruby&#x60;, &#x60;JavaScript&#x60;, &#x60;AngularJS&#x60;, &#x60;React&#x60;, &#x60;iOS&#x60;, &#x60;Android&#x60;, &#x60;Python&#x60;, &#x60;PHP&#x60;, &#x60;Java&#x60;, &#x60;Go&#x60;, &#x60;Windows Phone&#x60;, &#x60;Rails&#x60;, &#x60;Node.js&#x60;, &#x60;.NET&#x60;, &#x60;Django&#x60;, &#x60;Symfony&#x60;, &#x60;Yii Framework&#x60;, &#x60;Zend Framework&#x60;, &#x60;Apple App Store Description&#x60;, &#x60;Google Play Description&#x60;, but it can also take any other value. | [optional] 
**shares_translation_memory** | **Boolean** | (Optional) Indicates whether the project should share the account&#39;s translation memory | [optional] 
**project_image** | **File** | (Optional) Image to identify the project | [optional] 
**remove_project_image** | **Boolean** | (Optional) Indicates whether the project image should be deleted. | [optional] 
**workflow** | **String** | (Optional) Review Workflow. \&quot;simple\&quot; / \&quot;review\&quot;. [Read more](https://support.phrase.com/hc/en-us/articles/5784094755484) | [optional] 
**machine_translation_enabled** | **Boolean** | (Optional) Enable machine translation support in the project. Required for Pre-Translation | [optional] 
**enable_branching** | **Boolean** | (Optional) Enable branching in the project | [optional] 
**protect_master_branch** | **Boolean** | (Optional) Protect the master branch in project where branching is enabled | [optional] 
**enable_all_data_type_translation_keys_for_translators** | **Boolean** | (Optional) Otherwise, translators are not allowed to edit translations other than strings | [optional] 
**enable_icu_message_format** | **Boolean** | (Optional) We can validate and highlight your ICU messages. [Read more](https://support.phrase.com/hc/en-us/articles/5822319545116) | [optional] 
**zero_plural_form_enabled** | **Boolean** | (Optional) Displays the input fields for the &#39;ZERO&#39; plural form for every key as well although only some languages require the &#39;ZERO&#39; explicitly. | [optional] 
**autotranslate_enabled** | **Boolean** | (Optional) Autopilot, requires machine_translation_enabled. [Read more](https://support.phrase.com/hc/en-us/articles/5822187934364) | [optional] 
**autotranslate_check_new_translation_keys** | **Boolean** | (Optional) Requires autotranslate_enabled to be true | [optional] 
**autotranslate_check_new_uploads** | **Boolean** | (Optional) Requires autotranslate_enabled to be true | [optional] 
**autotranslate_check_new_locales** | **Boolean** | (Optional) Requires autotranslate_enabled to be true | [optional] 
**autotranslate_mark_as_unverified** | **Boolean** | (Optional) Requires autotranslate_enabled to be true | [optional] 
**autotranslate_use_machine_translation** | **Boolean** | (Optional) Requires autotranslate_enabled to be true | [optional] 
**autotranslate_use_translation_memory** | **Boolean** | (Optional) Requires autotranslate_enabled to be true | [optional] 
**default_encoding** | **String** | (Optional) Sets the default encoding for Uploads. If you leave it empty, we will try to guess it automatically for you when you Upload a file. You can still override this value by setting the [&#x60;file_encoding&#x60;](/en/api/strings/uploads/upload-a-new-file) parameter for Uploads. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ProjectUpdateParameters.new(account_id: abcd1234,
                                 name: My Android Project,
                                 point_of_contact: abcd1234,
                                 main_format: yml,
                                 media: Python,
                                 shares_translation_memory: true,
                                 project_image: [B@240f4328,
                                 remove_project_image: false,
                                 workflow: review,
                                 machine_translation_enabled: true,
                                 enable_branching: true,
                                 protect_master_branch: true,
                                 enable_all_data_type_translation_keys_for_translators: true,
                                 enable_icu_message_format: true,
                                 zero_plural_form_enabled: true,
                                 autotranslate_enabled: true,
                                 autotranslate_check_new_translation_keys: true,
                                 autotranslate_check_new_uploads: true,
                                 autotranslate_check_new_locales: true,
                                 autotranslate_mark_as_unverified: true,
                                 autotranslate_use_machine_translation: true,
                                 autotranslate_use_translation_memory: true,
                                 default_encoding: UTF-8)
```


