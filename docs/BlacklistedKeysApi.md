# Phrase::BlacklistedKeysApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**blacklisted_key_create**](BlacklistedKeysApi.md#blacklisted_key_create) | **POST** /projects/{project_id}/blacklisted_keys | Create a blacklisted key
[**blacklisted_key_delete**](BlacklistedKeysApi.md#blacklisted_key_delete) | **DELETE** /projects/{project_id}/blacklisted_keys/{id} | Delete a blacklisted key
[**blacklisted_key_show**](BlacklistedKeysApi.md#blacklisted_key_show) | **GET** /projects/{project_id}/blacklisted_keys/{id} | Get a single blacklisted key
[**blacklisted_key_update**](BlacklistedKeysApi.md#blacklisted_key_update) | **PATCH** /projects/{project_id}/blacklisted_keys/{id} | Update a blacklisted key
[**blacklisted_keys_list**](BlacklistedKeysApi.md#blacklisted_keys_list) | **GET** /projects/{project_id}/blacklisted_keys | List blacklisted keys



## blacklisted_key_create

> blacklisted_key_create(project_id, blacklisted_key_create_parameters, opts)

Create a blacklisted key

Create a new rule for blacklisting keys.

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

api_instance = Phrase::BlacklistedKeysApi.new
project_id = 'project_id_example' # String | Project ID
blacklisted_key_create_parameters = Phrase::BlacklistedKeyCreateParameters.new # BlacklistedKeyCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a blacklisted key
  api_instance.blacklisted_key_create(project_id, blacklisted_key_create_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling BlacklistedKeysApi->blacklisted_key_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **blacklisted_key_create_parameters** | [**BlacklistedKeyCreateParameters**](BlacklistedKeyCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## blacklisted_key_delete

> blacklisted_key_delete(project_id, id, opts)

Delete a blacklisted key

Delete an existing rule for blacklisting keys.

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

api_instance = Phrase::BlacklistedKeysApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a blacklisted key
  api_instance.blacklisted_key_delete(project_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling BlacklistedKeysApi->blacklisted_key_delete: #{e}"
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


## blacklisted_key_show

> BlacklistedKey blacklisted_key_show(project_id, id, opts)

Get a single blacklisted key

Get details on a single rule for blacklisting keys for a given project.

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

api_instance = Phrase::BlacklistedKeysApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single blacklisted key
  result = api_instance.blacklisted_key_show(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling BlacklistedKeysApi->blacklisted_key_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**BlacklistedKey**](BlacklistedKey.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## blacklisted_key_update

> BlacklistedKey blacklisted_key_update(project_id, id, blacklisted_key_update_parameters, opts)

Update a blacklisted key

Update an existing rule for blacklisting keys.

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

api_instance = Phrase::BlacklistedKeysApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
blacklisted_key_update_parameters = Phrase::BlacklistedKeyUpdateParameters.new # BlacklistedKeyUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a blacklisted key
  result = api_instance.blacklisted_key_update(project_id, id, blacklisted_key_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling BlacklistedKeysApi->blacklisted_key_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **blacklisted_key_update_parameters** | [**BlacklistedKeyUpdateParameters**](BlacklistedKeyUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**BlacklistedKey**](BlacklistedKey.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## blacklisted_keys_list

> Array&lt;BlacklistedKey&gt; blacklisted_keys_list(project_id, opts)

List blacklisted keys

List all rules for blacklisting keys for the given project.

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

api_instance = Phrase::BlacklistedKeysApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List blacklisted keys
  result = api_instance.blacklisted_keys_list(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling BlacklistedKeysApi->blacklisted_keys_list: #{e}"
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

Response<([**Array&lt;BlacklistedKey&gt;**](BlacklistedKey.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

