# Phrase::ScreenshotMarkersApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**screenshot_marker_create**](ScreenshotMarkersApi.md#screenshot_marker_create) | **POST** /projects/{project_id}/screenshots/{screenshot_id}/markers | Create a screenshot marker
[**screenshot_marker_delete**](ScreenshotMarkersApi.md#screenshot_marker_delete) | **DELETE** /projects/{project_id}/screenshots/{screenshot_id}/markers | Delete a screenshot marker
[**screenshot_marker_show**](ScreenshotMarkersApi.md#screenshot_marker_show) | **GET** /projects/{project_id}/screenshots/{screenshot_id}/markers/{id} | Get a single screenshot marker
[**screenshot_marker_update**](ScreenshotMarkersApi.md#screenshot_marker_update) | **PATCH** /projects/{project_id}/screenshots/{screenshot_id}/markers | Update a screenshot marker
[**screenshot_markers_list**](ScreenshotMarkersApi.md#screenshot_markers_list) | **GET** /projects/{project_id}/screenshots/{id}/markers | List screenshot markers



## screenshot_marker_create

> ScreenshotMarker screenshot_marker_create(project_id, screenshot_id, screenshot_marker_create_parameters, opts)

Create a screenshot marker

Create a new screenshot marker.

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

api_instance = Phrase::ScreenshotMarkersApi.new
project_id = 'project_id_example' # String | Project ID
screenshot_id = 'screenshot_id_example' # String | Screenshot ID
screenshot_marker_create_parameters = Phrase::ScreenshotMarkerCreateParameters.new # ScreenshotMarkerCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a screenshot marker
  result = api_instance.screenshot_marker_create(project_id, screenshot_id, screenshot_marker_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ScreenshotMarkersApi->screenshot_marker_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **screenshot_id** | **String**| Screenshot ID | 
 **screenshot_marker_create_parameters** | [**ScreenshotMarkerCreateParameters**](ScreenshotMarkerCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**ScreenshotMarker**](ScreenshotMarker.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## screenshot_marker_delete

> screenshot_marker_delete(project_id, screenshot_id, opts)

Delete a screenshot marker

Delete an existing screenshot marker.

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

api_instance = Phrase::ScreenshotMarkersApi.new
project_id = 'project_id_example' # String | Project ID
screenshot_id = 'screenshot_id_example' # String | Screenshot ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Delete a screenshot marker
  api_instance.screenshot_marker_delete(project_id, screenshot_id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling ScreenshotMarkersApi->screenshot_marker_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **screenshot_id** | **String**| Screenshot ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## screenshot_marker_show

> ScreenshotMarker screenshot_marker_show(project_id, screenshot_id, id, opts)

Get a single screenshot marker

Get details on a single screenshot marker for a given project.

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

api_instance = Phrase::ScreenshotMarkersApi.new
project_id = 'project_id_example' # String | Project ID
screenshot_id = 'screenshot_id_example' # String | Screenshot ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Get a single screenshot marker
  result = api_instance.screenshot_marker_show(project_id, screenshot_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ScreenshotMarkersApi->screenshot_marker_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **screenshot_id** | **String**| Screenshot ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**ScreenshotMarker**](ScreenshotMarker.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## screenshot_marker_update

> ScreenshotMarker screenshot_marker_update(project_id, screenshot_id, screenshot_marker_update_parameters, opts)

Update a screenshot marker

Update an existing screenshot marker.

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

api_instance = Phrase::ScreenshotMarkersApi.new
project_id = 'project_id_example' # String | Project ID
screenshot_id = 'screenshot_id_example' # String | Screenshot ID
screenshot_marker_update_parameters = Phrase::ScreenshotMarkerUpdateParameters.new # ScreenshotMarkerUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a screenshot marker
  result = api_instance.screenshot_marker_update(project_id, screenshot_id, screenshot_marker_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ScreenshotMarkersApi->screenshot_marker_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **screenshot_id** | **String**| Screenshot ID | 
 **screenshot_marker_update_parameters** | [**ScreenshotMarkerUpdateParameters**](ScreenshotMarkerUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**ScreenshotMarker**](ScreenshotMarker.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## screenshot_markers_list

> Array&lt;ScreenshotMarker&gt; screenshot_markers_list(project_id, id, opts)

List screenshot markers

List all screenshot markers for the given project.

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

api_instance = Phrase::ScreenshotMarkersApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #List screenshot markers
  result = api_instance.screenshot_markers_list(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ScreenshotMarkersApi->screenshot_markers_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**Array&lt;ScreenshotMarker&gt;**](ScreenshotMarker.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

