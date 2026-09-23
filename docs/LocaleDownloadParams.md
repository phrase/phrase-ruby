# Phrase::LocaleDownloadParams

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_format** | **String** |  | [optional] 
**locale_id** | **String** |  | [optional] 
**tags** | **String** |  | [optional] 
**branch** | **String** |  | [optional] 
**include_empty_translations** | **Boolean** |  | [optional] 
**include_translated_keys** | **Boolean** |  | [optional] 
**include_unverified_translations** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::LocaleDownloadParams.new(file_format: nil,
                                 locale_id: nil,
                                 tags: nil,
                                 branch: nil,
                                 include_empty_translations: nil,
                                 include_translated_keys: nil,
                                 include_unverified_translations: nil)
```


