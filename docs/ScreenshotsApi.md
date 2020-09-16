# Phrase::ScreenshotsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**screenshot_create**](ScreenshotsApi.md#screenshot_create) | **POST** /projects/{project_id}/screenshots | Create a screenshot
[**screenshot_delete**](ScreenshotsApi.md#screenshot_delete) | **DELETE** /projects/{project_id}/screenshots/{id} | Delete a screenshot
[**screenshot_show**](ScreenshotsApi.md#screenshot_show) | **GET** /projects/{project_id}/screenshots/{id} | Get a single screenshot
[**screenshot_update**](ScreenshotsApi.md#screenshot_update) | **PATCH** /projects/{project_id}/screenshots/{id} | Update a screenshot
[**screenshots_list**](ScreenshotsApi.md#screenshots_list) | **GET** /projects/{project_id}/screenshots | List screenshots



## screenshot_create

> Screenshot screenshot_create(project_id, screenshot_create_parameters, opts)

Create a screenshot

Create a new screenshot.

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

api_instance = Phrase::ScreenshotsApi.new
project_id = 'project_id_example' # String | Project ID
screenshot_create_parameters = Phrase::ScreenshotCreateParameters.new # ScreenshotCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a screenshot
  result = api_instance.screenshot_create(project_id, screenshot_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ScreenshotsApi->screenshot_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **screenshot_create_parameters** | [**ScreenshotCreateParameters**](ScreenshotCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Screenshot**](Screenshot.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## screenshot_delete

> screenshot_delete(project_id, id, opts)

Delete a screenshot

Delete an existing screenshot.

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

api_instance = Phrase::ScreenshotsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a screenshot
  api_instance.screenshot_delete(project_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling ScreenshotsApi->screenshot_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## screenshot_show

> Screenshot screenshot_show(project_id, id, opts)

Get a single screenshot

Get details on a single screenshot for a given project.

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

api_instance = Phrase::ScreenshotsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single screenshot
  result = api_instance.screenshot_show(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ScreenshotsApi->screenshot_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Screenshot**](Screenshot.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## screenshot_update

> Screenshot screenshot_update(project_id, id, screenshot_update_parameters, opts)

Update a screenshot

Update an existing screenshot.

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

api_instance = Phrase::ScreenshotsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
screenshot_update_parameters = Phrase::ScreenshotUpdateParameters.new # ScreenshotUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a screenshot
  result = api_instance.screenshot_update(project_id, id, screenshot_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ScreenshotsApi->screenshot_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **screenshot_update_parameters** | [**ScreenshotUpdateParameters**](ScreenshotUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Screenshot**](Screenshot.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## screenshots_list

> Array&lt;Screenshot&gt; screenshots_list(project_id, opts)

List screenshots

List all screenshots for the given project.

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

api_instance = Phrase::ScreenshotsApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | allows you to specify a page size up to 100 items, 25 by default
}

begin
  #List screenshots
  result = api_instance.screenshots_list(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ScreenshotsApi->screenshots_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 25 by default | [optional] 

### Return type

Response<([**Array&lt;Screenshot&gt;**](Screenshot.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

