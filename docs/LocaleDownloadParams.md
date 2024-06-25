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
require 'Phrase'

instance = Phrase::LocaleDownloadParams.new(file_format: null,
                                 locale_id: null,
                                 tags: null,
                                 branch: null,
                                 include_empty_translations: null,
                                 include_translated_keys: null,
                                 include_unverified_translations: null)
```


