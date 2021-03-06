# Phrase::ProjectUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | Required if the requesting user is a member of multiple accounts. Account ID to specify the actual account the project should be created in. | [optional] 
**name** | **String** | (Optional) Name of the project | [optional] 
**main_format** | **String** | (Optional) Main file format specified by its API Extension name. Used for locale downloads if no format is specified. For API Extension names of available file formats see &lt;a href&#x3D;\&quot;https://help.phrase.com/help/supported-platforms-and-formats\&quot;&gt;Format Guide&lt;/a&gt; or our &lt;a href&#x3D;\&quot;#formats\&quot;&gt;Formats API Endpoint&lt;/a&gt;. | [optional] 
**shares_translation_memory** | **Boolean** | (Optional) Indicates whether the project should share the account&#39;s translation memory | [optional] 
**project_image** | **File** | (Optional) Image to identify the project | [optional] 
**remove_project_image** | **Boolean** | (Optional) Indicates whether the project image should be deleted. | [optional] 
**workflow** | **String** | (Optional) Review Workflow. \&quot;simple\&quot; / \&quot;review\&quot;. &lt;a href&#x3D;\&quot;https://help.phrase.com/help/advanced-review-workflow\&quot;&gt;Read more&lt;/a&gt; | [optional] 
**machine_translation_enabled** | **Boolean** | (Optional) Enable machine translation support in the project. Required for Autopilot and Smart Suggest | [optional] 
**enable_branching** | **Boolean** | (Optional) Enable branching in the project | [optional] 
**protect_master_branch** | **Boolean** | (Optional) Protect the master branch in project where branching is enabled | [optional] 
**enable_all_data_type_translation_keys_for_translators** | **Boolean** | (Optional) Otherwise, translators are not allowed to edit translations other than strings | [optional] 
**enable_icu_message_format** | **Boolean** | (Optional) We can validate and highlight your ICU messages. &lt;a href&#x3D;\&quot;https://help.phrase.com/help/icu-message-format\&quot;&gt;Read more&lt;/a&gt; | [optional] 
**zero_plural_form_enabled** | **Boolean** | (Optional) Displays the input fields for the &#39;ZERO&#39; plural form for every key as well although only some languages require the &#39;ZERO&#39; explicitly. | [optional] 
**autotranslate_enabled** | **Boolean** | (Optional) Autopilot, requires machine_translation_enabled. &lt;a href&#x3D;\&quot;https://help.phrase.com/help/autopilot\&quot;&gt;Read more&lt;/a&gt; | [optional] 
**autotranslate_check_new_translation_keys** | **Boolean** | (Optional) Requires autotranslate_enabled to be true | [optional] 
**autotranslate_check_new_uploads** | **Boolean** | (Optional) Requires autotranslate_enabled to be true | [optional] 
**autotranslate_check_new_locales** | **Boolean** | (Optional) Requires autotranslate_enabled to be true | [optional] 
**autotranslate_mark_as_unverified** | **Boolean** | (Optional) Requires autotranslate_enabled to be true | [optional] 
**autotranslate_use_machine_translation** | **Boolean** | (Optional) Requires autotranslate_enabled to be true | [optional] 
**autotranslate_use_translation_memory** | **Boolean** | (Optional) Requires autotranslate_enabled to be true | [optional] 
**smart_suggest_enabled** | **Boolean** | (Optional) Smart Suggest, requires machine_translation_enabled | [optional] 
**smart_suggest_use_glossary** | **Boolean** | (Optional) Requires smart_suggest_enabled to be true | [optional] 
**smart_suggest_use_machine_translation** | **Boolean** | (Optional) Requires smart_suggest_enabled to be true | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ProjectUpdateParameters.new(account_id: abcd1234,
                                 name: My Android Project,
                                 main_format: yml,
                                 shares_translation_memory: true,
                                 project_image: null,
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
                                 smart_suggest_enabled: true,
                                 smart_suggest_use_glossary: true,
                                 smart_suggest_use_machine_translation: true)
```


