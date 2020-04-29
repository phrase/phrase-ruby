# Phrase::UploadsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**upload_create**](UploadsApi.md#upload_create) | **POST** /projects/{project_id}/uploads | Upload a new file
[**upload_show**](UploadsApi.md#upload_show) | **GET** /projects/{project_id}/uploads/{id} | View upload details
[**uploads_list**](UploadsApi.md#uploads_list) | **GET** /projects/{project_id}/uploads | List uploads



## upload_create

> upload_create(project_id, upload_create_parameters, opts)

Upload a new file

Upload a new language file. Creates necessary resources in your project.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::UploadsApi.new
project_id = 'project_id_example' # String | Project ID
upload_create_parameters = Phrase::UploadCreateParameters.new # UploadCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Upload a new file
  api_instance.upload_create(project_id, upload_create_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling UploadsApi->upload_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **upload_create_parameters** | [**UploadCreateParameters**](UploadCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## upload_show

> Upload upload_show(project_id, id, upload_show_parameters, opts)

View upload details

View details and summary for a single upload.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::UploadsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
upload_show_parameters = Phrase::UploadShowParameters.new # UploadShowParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #View upload details
  result = api_instance.upload_show(project_id, id, upload_show_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling UploadsApi->upload_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **upload_show_parameters** | [**UploadShowParameters**](UploadShowParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Upload**](Upload.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## uploads_list

> Array&lt;Upload&gt; uploads_list(project_id, uploads_list_parameters, opts)

List uploads

List all uploads for the given project.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::UploadsApi.new
project_id = 'project_id_example' # String | Project ID
uploads_list_parameters = Phrase::UploadsListParameters.new # UploadsListParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List uploads
  result = api_instance.uploads_list(project_id, uploads_list_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling UploadsApi->uploads_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **uploads_list_parameters** | [**UploadsListParameters**](UploadsListParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<([**Array&lt;Upload&gt;**](Upload.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

