# Phrase::ProjectDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**slug** | **String** |  | [optional] 
**main_format** | **String** |  | [optional] 
**project_image_url** | **String** |  | [optional] 
**media** | **String** |  | [optional] 
**account** | [**Account**](Account.md) |  | [optional] 
**space** | [**Space1**](Space1.md) |  | [optional] 
**point_of_contact** | [**UserPreview**](UserPreview.md) |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**shares_translation_memory** | **Boolean** |  | [optional] 
**machine_translation_enabled** | **Boolean** |  | [optional] 
**zero_plural_form_enabled** | **Boolean** |  | [optional] 
**enable_all_data_type_translation_keys_for_translators** | **Boolean** |  | [optional] 
**enable_icu_message_format** | **Boolean** |  | [optional] 
**enable_branching** | **Boolean** |  | [optional] 
**protect_master_branch** | **Boolean** |  | [optional] 
**autotranslate_enabled** | **Boolean** |  | [optional] 
**autotranslate_check_new_translation_keys** | **Boolean** |  | [optional] 
**autotranslate_check_new_uploads** | **Boolean** |  | [optional] 
**autotranslate_check_new_locales** | **Boolean** |  | [optional] 
**autotranslate_mark_as_unverified** | **Boolean** |  | [optional] 
**autotranslate_use_machine_translation** | **Boolean** |  | [optional] 
**autotranslate_use_translation_memory** | **Boolean** |  | [optional] 
**default_encoding** | **String** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ProjectDetails.new(id: null,
                                 name: null,
                                 slug: null,
                                 main_format: null,
                                 project_image_url: null,
                                 media: null,
                                 account: null,
                                 space: null,
                                 point_of_contact: null,
                                 created_at: null,
                                 updated_at: null,
                                 shares_translation_memory: null,
                                 machine_translation_enabled: true,
                                 zero_plural_form_enabled: true,
                                 enable_all_data_type_translation_keys_for_translators: false,
                                 enable_icu_message_format: false,
                                 enable_branching: false,
                                 protect_master_branch: false,
                                 autotranslate_enabled: false,
                                 autotranslate_check_new_translation_keys: false,
                                 autotranslate_check_new_uploads: false,
                                 autotranslate_check_new_locales: false,
                                 autotranslate_mark_as_unverified: false,
                                 autotranslate_use_machine_translation: false,
                                 autotranslate_use_translation_memory: true,
                                 default_encoding: UTF-8)
```


