# Phrase::UploadSummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**locales_created** | **Integer** |  | [optional] 
**translation_keys_created** | **Integer** |  | [optional] 
**translation_keys_updated** | **Integer** |  | [optional] 
**translation_keys_unmentioned** | **Integer** | The number of translation keys in the project that were not mentioned in the upload.  Note: this field is not calculated (and shows 0) if the upload contains more than 10,000 keys.  | [optional] 
**translations_created** | **Integer** |  | [optional] 
**translations_updated** | **Integer** |  | [optional] 
**tags_created** | **Integer** |  | [optional] 
**translation_keys_ignored** | **Integer** |  | [optional] 
**processed_translations** | **Integer** |  | [optional] 
**upload_total_translations** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::UploadSummary.new(locales_created: null,
                                 translation_keys_created: null,
                                 translation_keys_updated: null,
                                 translation_keys_unmentioned: null,
                                 translations_created: null,
                                 translations_updated: null,
                                 tags_created: null,
                                 translation_keys_ignored: null,
                                 processed_translations: null,
                                 upload_total_translations: null)
```


