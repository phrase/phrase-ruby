# Phrase::Upload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**filename** | **String** |  | [optional] 
**format** | **String** |  | [optional] 
**state** | **String** | Processing state of the upload: &#x60;initialized&#x60;, &#x60;processing&#x60;, &#x60;success&#x60;, or &#x60;error&#x60;. &#x60;error&#x60; means processing failed — for example the file could not be parsed, or a provided &#x60;file_format&#x60; didn&#39;t match the file&#39;s actual content. Poll this field until it leaves &#x60;initialized&#x60;/&#x60;processing&#x60; to get the final outcome.  | [optional] 
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
require 'phrase'

instance = Phrase::Upload.new(id: nil,
                                 filename: nil,
                                 format: nil,
                                 state: nil,
                                 error_message: nil,
                                 tag: nil,
                                 tags: nil,
                                 url: nil,
                                 user: nil,
                                 summary: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


