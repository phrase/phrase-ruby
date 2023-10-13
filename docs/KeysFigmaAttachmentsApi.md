# Phrase::KeysFigmaAttachmentsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**figma_attachment_attach_to_key**](KeysFigmaAttachmentsApi.md#figma_attachment_attach_to_key) | **POST** /projects/{project_id}/figma_attachments/{figma_attachment_id}/keys | Attach the Figma attachment to a key
[**figma_attachment_detach_from_key**](KeysFigmaAttachmentsApi.md#figma_attachment_detach_from_key) | **DELETE** /projects/{project_id}/figma_attachments/{figma_attachment_id}/keys/{id} | Detach the Figma attachment from a key



## figma_attachment_attach_to_key

> figma_attachment_attach_to_key(project_id, figma_attachment_id, id, opts)

Attach the Figma attachment to a key

Attach the Figma attachment to a key

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

api_instance = Phrase::KeysFigmaAttachmentsApi.new
project_id = 'project_id_example' # String | Project ID
figma_attachment_id = 'figma_attachment_id_example' # String | Figma attachment ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Attach the Figma attachment to a key
  api_instance.figma_attachment_attach_to_key(project_id, figma_attachment_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling KeysFigmaAttachmentsApi->figma_attachment_attach_to_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **figma_attachment_id** | **String**| Figma attachment ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## figma_attachment_detach_from_key

> figma_attachment_detach_from_key(project_id, figma_attachment_id, id, opts)

Detach the Figma attachment from a key

Detach the Figma attachment from a key

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

api_instance = Phrase::KeysFigmaAttachmentsApi.new
project_id = 'project_id_example' # String | Project ID
figma_attachment_id = 'figma_attachment_id_example' # String | Figma attachment ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Detach the Figma attachment from a key
  api_instance.figma_attachment_detach_from_key(project_id, figma_attachment_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling KeysFigmaAttachmentsApi->figma_attachment_detach_from_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **figma_attachment_id** | **String**| Figma attachment ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

