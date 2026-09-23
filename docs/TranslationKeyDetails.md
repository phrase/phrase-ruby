# Phrase::TranslationKeyDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**name_hash** | **String** |  | [optional] 
**plural** | **Boolean** |  | [optional] 
**use_ordinal_rules** | **Boolean** |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 
**data_type** | **String** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**name_plural** | **String** |  | [optional] 
**comments_count** | **Integer** |  | [optional] 
**max_characters_allowed** | **Integer** |  | [optional] 
**screenshot_url** | **String** |  | [optional] 
**unformatted** | **Boolean** |  | [optional] 
**xml_space_preserve** | **Boolean** |  | [optional] 
**original_file** | **String** |  | [optional] 
**format_value_type** | **String** |  | [optional] 
**creator** | [**UserPreview**](UserPreview.md) |  | [optional] 
**custom_metadata** | **Hash&lt;String, String&gt;** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::TranslationKeyDetails.new(id: nil,
                                 name: nil,
                                 description: nil,
                                 name_hash: nil,
                                 plural: nil,
                                 use_ordinal_rules: nil,
                                 tags: nil,
                                 data_type: nil,
                                 created_at: nil,
                                 updated_at: nil,
                                 name_plural: nil,
                                 comments_count: nil,
                                 max_characters_allowed: nil,
                                 screenshot_url: nil,
                                 unformatted: nil,
                                 xml_space_preserve: nil,
                                 original_file: nil,
                                 format_value_type: nil,
                                 creator: nil,
                                 custom_metadata: nil)
```


