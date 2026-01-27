# Phrase::UploadBatchesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**upload_batches_create**](UploadBatchesApi.md#upload_batches_create) | **POST** /projects/{project_id}/upload_batches | Create upload batch



## upload_batches_create

> UploadBatch upload_batches_create(project_id, upload_batches_create_parameters, opts)

Create upload batch

Groups multiple file uploads into a single batch. Optionally, launches the deletion of unmentioned translation keys after all uploads in the batch are completed. 

### Example

```ruby
# load the gem
require 'phrase'
# setup authorization
Phrase.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  config.api_key_prefix['Authorization'] = 'token'
end

api_instance = Phrase::UploadBatchesApi.new
project_id = 'project_id_example' # String | Project ID
upload_batches_create_parameters = Phrase::UploadBatchesCreateParameters.new({upload_ids: ["abcd1234cdef1234abcd1234cdef1234", "bcde2345defg2345bcde2345defg2345"]}) # UploadBatchesCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create upload batch
  result = api_instance.upload_batches_create(project_id, upload_batches_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling UploadBatchesApi->upload_batches_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **upload_batches_create_parameters** | [**UploadBatchesCreateParameters**](UploadBatchesCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**UploadBatch**](UploadBatch.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

