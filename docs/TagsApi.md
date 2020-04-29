# Phrase::TagsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tag_create**](TagsApi.md#tag_create) | **POST** /projects/{project_id}/tags | Create a tag
[**tag_delete**](TagsApi.md#tag_delete) | **DELETE** /projects/{project_id}/tags/{name} | Delete a tag
[**tag_show**](TagsApi.md#tag_show) | **GET** /projects/{project_id}/tags/{name} | Get a single tag
[**tags_list**](TagsApi.md#tags_list) | **GET** /projects/{project_id}/tags | List tags



## tag_create

> tag_create(project_id, tag_create_parameters, opts)

Create a tag

Create a new tag.

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

api_instance = Phrase::TagsApi.new
project_id = 'project_id_example' # String | Project ID
tag_create_parameters = Phrase::TagCreateParameters.new # TagCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a tag
  api_instance.tag_create(project_id, tag_create_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling TagsApi->tag_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **tag_create_parameters** | [**TagCreateParameters**](TagCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## tag_delete

> tag_delete(project_id, name, tag_delete_parameters, opts)

Delete a tag

Delete an existing tag.

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

api_instance = Phrase::TagsApi.new
project_id = 'project_id_example' # String | Project ID
name = 'name_example' # String | name
tag_delete_parameters = Phrase::TagDeleteParameters.new # TagDeleteParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a tag
  api_instance.tag_delete(project_id, name, tag_delete_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling TagsApi->tag_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **name** | **String**| name | 
 **tag_delete_parameters** | [**TagDeleteParameters**](TagDeleteParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## tag_show

> TagWithStats tag_show(project_id, name, tag_show_parameters, opts)

Get a single tag

Get details and progress information on a single tag for a given project.

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

api_instance = Phrase::TagsApi.new
project_id = 'project_id_example' # String | Project ID
name = 'name_example' # String | name
tag_show_parameters = Phrase::TagShowParameters.new # TagShowParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single tag
  result = api_instance.tag_show(project_id, name, tag_show_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TagsApi->tag_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **name** | **String**| name | 
 **tag_show_parameters** | [**TagShowParameters**](TagShowParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**TagWithStats**](TagWithStats.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## tags_list

> Array&lt;Tag&gt; tags_list(project_id, tags_list_parameters, opts)

List tags

List all tags for the given project.

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

api_instance = Phrase::TagsApi.new
project_id = 'project_id_example' # String | Project ID
tags_list_parameters = Phrase::TagsListParameters.new # TagsListParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List tags
  result = api_instance.tags_list(project_id, tags_list_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TagsApi->tags_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **tags_list_parameters** | [**TagsListParameters**](TagsListParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<([**Array&lt;Tag&gt;**](Tag.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

