# Phrase::Upload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**filename** | **String** |  | [optional] 
**format** | **String** |  | [optional] 
**state** | **String** |  | [optional] 
**error_message** | **String** | A user-facing message explaining why the upload failed, or &#x60;null&#x60; if the upload did not fail.  This message is intended for display only. Its wording may change at any time and it should not be parsed or relied upon programmatically.  | [optional] 
**tag** | **String** | Unique tag of the upload  | [optional] 
**tags** | **Array&lt;String&gt;** | List of tags that were assigned to the uploaded keys  | [optional] 
**url** | **String** | The URL to the upload in Phrase Strings app.  | [optional] 
**user** | [**UserPreview**](.md) |  | [optional] 
**summary** | [**UploadSummary**](UploadSummary.md) |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::Upload.new(id: null,
                                 filename: null,
                                 format: null,
                                 state: null,
                                 error_message: null,
                                 tag: null,
                                 tags: null,
                                 url: null,
                                 user: null,
                                 summary: null,
                                 created_at: null,
                                 updated_at: null)
```


