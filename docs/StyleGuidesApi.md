# Phrase::StyleGuidesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**styleguide_create**](StyleGuidesApi.md#styleguide_create) | **POST** /projects/{project_id}/styleguides | Create a style guide
[**styleguide_delete**](StyleGuidesApi.md#styleguide_delete) | **DELETE** /projects/{project_id}/styleguides/{id} | Delete a style guide
[**styleguide_show**](StyleGuidesApi.md#styleguide_show) | **GET** /projects/{project_id}/styleguides/{id} | Get a single style guide
[**styleguide_update**](StyleGuidesApi.md#styleguide_update) | **PATCH** /projects/{project_id}/styleguides/{id} | Update a style guide
[**styleguides_list**](StyleGuidesApi.md#styleguides_list) | **GET** /projects/{project_id}/styleguides | List style guides



## styleguide_create

> styleguide_create(project_id, styleguide_create_parameters, opts)

Create a style guide

Create a new style guide.

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

api_instance = Phrase::StyleGuidesApi.new
project_id = 'project_id_example' # String | Project ID
styleguide_create_parameters = Phrase::StyleguideCreateParameters.new # StyleguideCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a style guide
  api_instance.styleguide_create(project_id, styleguide_create_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling StyleGuidesApi->styleguide_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **styleguide_create_parameters** | [**StyleguideCreateParameters**](StyleguideCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## styleguide_delete

> styleguide_delete(project_id, id, opts)

Delete a style guide

Delete an existing style guide.

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

api_instance = Phrase::StyleGuidesApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a style guide
  api_instance.styleguide_delete(project_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling StyleGuidesApi->styleguide_delete: #{e}"
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


## styleguide_show

> StyleguideDetails styleguide_show(project_id, id, opts)

Get a single style guide

Get details on a single style guide.

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

api_instance = Phrase::StyleGuidesApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single style guide
  result = api_instance.styleguide_show(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling StyleGuidesApi->styleguide_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**StyleguideDetails**](StyleguideDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## styleguide_update

> StyleguideDetails styleguide_update(project_id, id, styleguide_update_parameters, opts)

Update a style guide

Update an existing style guide.

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

api_instance = Phrase::StyleGuidesApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
styleguide_update_parameters = Phrase::StyleguideUpdateParameters.new # StyleguideUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a style guide
  result = api_instance.styleguide_update(project_id, id, styleguide_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling StyleGuidesApi->styleguide_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **styleguide_update_parameters** | [**StyleguideUpdateParameters**](StyleguideUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**StyleguideDetails**](StyleguideDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## styleguides_list

> Array&lt;Styleguide&gt; styleguides_list(project_id, opts)

List style guides

List all styleguides for the given project.

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

api_instance = Phrase::StyleGuidesApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List style guides
  result = api_instance.styleguides_list(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling StyleGuidesApi->styleguides_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<([**Array&lt;Styleguide&gt;**](Styleguide.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

