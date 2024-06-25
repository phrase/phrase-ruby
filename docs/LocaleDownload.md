# Phrase::LocaleDownload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**status** | **String** | The status of the download request. Possible values are &#x60;processing&#x60;, &#x60;completed&#x60;, and &#x60;error&#x60;.  | [optional] 
**result** | [**LocaleDownloadResult**](LocaleDownloadResult.md) |  | [optional] 
**params** | [**LocaleDownloadParams**](LocaleDownloadParams.md) |  | [optional] 
**error** | **String** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**completed_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::LocaleDownload.new(id: null,
                                 status: null,
                                 result: null,
                                 params: null,
                                 error: null,
                                 created_at: null,
                                 completed_at: null)
```


