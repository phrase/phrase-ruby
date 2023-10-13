# Phrase::FigmaAttachmentsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**figma_attachment_create**](FigmaAttachmentsApi.md#figma_attachment_create) | **POST** /projects/{project_id}/figma_attachments | Create a Figma attachment
[**figma_attachment_delete**](FigmaAttachmentsApi.md#figma_attachment_delete) | **DELETE** /projects/{project_id}/figma_attachments/{id} | Delete a Figma attachment
[**figma_attachment_show**](FigmaAttachmentsApi.md#figma_attachment_show) | **GET** /projects/{project_id}/figma_attachments/{id} | Get a single Figma attachment
[**figma_attachment_update**](FigmaAttachmentsApi.md#figma_attachment_update) | **PATCH** /projects/{project_id}/figma_attachments/{id} | Update a Figma attachment
[**figma_attachments_list**](FigmaAttachmentsApi.md#figma_attachments_list) | **GET** /projects/{project_id}/figma_attachments | List Figma attachments



## figma_attachment_create

> FigmaAttachment figma_attachment_create(project_id, figma_attachment_create_parameters, opts)

Create a Figma attachment

Create a new Figma attachment.

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

api_instance = Phrase::FigmaAttachmentsApi.new
project_id = 'project_id_example' # String | Project ID
figma_attachment_create_parameters = Phrase::FigmaAttachmentCreateParameters.new # FigmaAttachmentCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Create a Figma attachment
  result = api_instance.figma_attachment_create(project_id, figma_attachment_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling FigmaAttachmentsApi->figma_attachment_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **figma_attachment_create_parameters** | [**FigmaAttachmentCreateParameters**](FigmaAttachmentCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**FigmaAttachment**](FigmaAttachment.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## figma_attachment_delete

> figma_attachment_delete(project_id, id, opts)

Delete a Figma attachment

Delete an existing Figma attachment.

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

api_instance = Phrase::FigmaAttachmentsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Delete a Figma attachment
  api_instance.figma_attachment_delete(project_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling FigmaAttachmentsApi->figma_attachment_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
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


## figma_attachment_show

> FigmaAttachment figma_attachment_show(project_id, id, opts)

Get a single Figma attachment

Get details on a single Figma attachment for a given project.

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

api_instance = Phrase::FigmaAttachmentsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Get a single Figma attachment
  result = api_instance.figma_attachment_show(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling FigmaAttachmentsApi->figma_attachment_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**FigmaAttachment**](FigmaAttachment.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## figma_attachment_update

> FigmaAttachment figma_attachment_update(project_id, id, figma_attachment_update_parameters, opts)

Update a Figma attachment

Update an existing Figma attachment.

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

api_instance = Phrase::FigmaAttachmentsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
figma_attachment_update_parameters = Phrase::FigmaAttachmentUpdateParameters.new # FigmaAttachmentUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Update a Figma attachment
  result = api_instance.figma_attachment_update(project_id, id, figma_attachment_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling FigmaAttachmentsApi->figma_attachment_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **figma_attachment_update_parameters** | [**FigmaAttachmentUpdateParameters**](FigmaAttachmentUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**FigmaAttachment**](FigmaAttachment.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## figma_attachments_list

> Array&lt;FigmaAttachment&gt; figma_attachments_list(project_id, opts)

List Figma attachments

List all Figma attachments for the given project

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

api_instance = Phrase::FigmaAttachmentsApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #List Figma attachments
  result = api_instance.figma_attachments_list(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling FigmaAttachmentsApi->figma_attachments_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**Array&lt;FigmaAttachment&gt;**](FigmaAttachment.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

