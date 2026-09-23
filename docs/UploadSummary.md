# Phrase::UploadSummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**locales_created** | **Integer** |  | [optional] 
**translation_keys_created** | **Integer** |  | [optional] 
**translation_keys_updated** | **Integer** |  | [optional] 
**translation_keys_unmentioned** | **Integer** | The number of translation keys in the project that were not mentioned in the upload.  Note: this field is not calculated (and shows 0) if the upload contains more than 100,000 keys.  | [optional] 
**translations_created** | **Integer** |  | [optional] 
**translations_updated** | **Integer** |  | [optional] 
**tags_created** | **Integer** |  | [optional] 
**translation_keys_ignored** | **Integer** |  | [optional] 
**processed_translations** | **Integer** |  | [optional] 
**upload_total_translations** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::UploadSummary.new(locales_created: nil,
                                 translation_keys_created: nil,
                                 translation_keys_updated: nil,
                                 translation_keys_unmentioned: nil,
                                 translations_created: nil,
                                 translations_updated: nil,
                                 tags_created: nil,
                                 translation_keys_ignored: nil,
                                 processed_translations: nil,
                                 upload_total_translations: nil)
```


