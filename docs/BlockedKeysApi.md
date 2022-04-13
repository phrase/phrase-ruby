# Phrase::BlockedKeysApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**blacklisted_key_create**](BlockedKeysApi.md#blacklisted_key_create) | **POST** /projects/{project_id}/blacklisted_keys | Create a blocked key
[**blacklisted_key_delete**](BlockedKeysApi.md#blacklisted_key_delete) | **DELETE** /projects/{project_id}/blacklisted_keys/{id} | Delete a blocked key
[**blacklisted_key_show**](BlockedKeysApi.md#blacklisted_key_show) | **GET** /projects/{project_id}/blacklisted_keys/{id} | Get a single blocked key
[**blacklisted_key_update**](BlockedKeysApi.md#blacklisted_key_update) | **PATCH** /projects/{project_id}/blacklisted_keys/{id} | Update a blocked key
[**blacklisted_keys_list**](BlockedKeysApi.md#blacklisted_keys_list) | **GET** /projects/{project_id}/blacklisted_keys | List blocked keys



## blacklisted_key_create

> BlacklistedKey blacklisted_key_create(project_id, blacklisted_key_create_parameters, opts)

Create a blocked key

Create a new rule for blocking keys.

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

api_instance = Phrase::BlockedKeysApi.new
project_id = 'project_id_example' # String | Project ID
blacklisted_key_create_parameters = Phrase::BlacklistedKeyCreateParameters.new # BlacklistedKeyCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a blocked key
  result = api_instance.blacklisted_key_create(project_id, blacklisted_key_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling BlockedKeysApi->blacklisted_key_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **blacklisted_key_create_parameters** | [**BlacklistedKeyCreateParameters**](BlacklistedKeyCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**BlacklistedKey**](BlacklistedKey.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## blacklisted_key_delete

> blacklisted_key_delete(project_id, id, opts)

Delete a blocked key

Delete an existing rule for blocking keys.

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

api_instance = Phrase::BlockedKeysApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a blocked key
  api_instance.blacklisted_key_delete(project_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling BlockedKeysApi->blacklisted_key_delete: #{e}"
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

Get a single blocked key

Get details on a single rule for blocking keys for a given project.

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

api_instance = Phrase::BlockedKeysApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single blocked key
  result = api_instance.blacklisted_key_show(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling BlockedKeysApi->blacklisted_key_show: #{e}"
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

Update a blocked key

Update an existing rule for blocking keys.

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

api_instance = Phrase::BlockedKeysApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
blacklisted_key_update_parameters = Phrase::BlacklistedKeyUpdateParameters.new # BlacklistedKeyUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a blocked key
  result = api_instance.blacklisted_key_update(project_id, id, blacklisted_key_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling BlockedKeysApi->blacklisted_key_update: #{e}"
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

List blocked keys

List all rules for blocking keys for the given project.

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

api_instance = Phrase::BlockedKeysApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | allows you to specify a page size up to 100 items, 25 by default
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #List blocked keys
  result = api_instance.blacklisted_keys_list(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling BlockedKeysApi->blacklisted_keys_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 25 by default | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**Array&lt;BlacklistedKey&gt;**](BlacklistedKey.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

