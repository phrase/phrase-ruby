# Phrase::Upload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**filename** | **String** |  | [optional] 
**format** | **String** |  | [optional] 
**state** | **String** |  | [optional] 
**tag** | **String** | Unique tag of the upload  | [optional] 
**tags** | **Array&lt;String&gt;** | List of tags that were assigned to the uploaded keys  | [optional] 
**url** | **String** | The URL to the upload in Phrase Strings app.  | [optional] 
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
                                 tag: null,
                                 tags: null,
                                 url: null,
                                 summary: null,
                                 created_at: null,
                                 updated_at: null)
```


