# Phrase::SpacesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**space_create**](SpacesApi.md#space_create) | **POST** /accounts/{account_id}/spaces | Create a Space
[**space_delete**](SpacesApi.md#space_delete) | **DELETE** /accounts/{account_id}/spaces/{id} | Delete Space
[**space_show**](SpacesApi.md#space_show) | **GET** /accounts/{account_id}/spaces/{id} | Get Space
[**space_update**](SpacesApi.md#space_update) | **PATCH** /accounts/{account_id}/spaces/{id} | Update Space
[**spaces_list**](SpacesApi.md#spaces_list) | **GET** /accounts/{account_id}/spaces | List Spaces
[**spaces_projects_create**](SpacesApi.md#spaces_projects_create) | **POST** /accounts/{account_id}/spaces/{space_id}/projects | Add Project
[**spaces_projects_delete**](SpacesApi.md#spaces_projects_delete) | **DELETE** /accounts/{account_id}/spaces/{space_id}/projects/{id} | Remove Project
[**spaces_projects_list**](SpacesApi.md#spaces_projects_list) | **GET** /accounts/{account_id}/spaces/{space_id}/projects | List Projects



## space_create

> Space space_create(account_id, space_create_parameters, opts)

Create a Space

Create a new Space.

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

api_instance = Phrase::SpacesApi.new
account_id = 'account_id_example' # String | Account ID
space_create_parameters = Phrase::SpaceCreateParameters.new # SpaceCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a Space
  result = api_instance.space_create(account_id, space_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling SpacesApi->space_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **space_create_parameters** | [**SpaceCreateParameters**](SpaceCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Space**](Space.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## space_delete

> space_delete(account_id, id, opts)

Delete Space

Delete the specified Space.

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

api_instance = Phrase::SpacesApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete Space
  api_instance.space_delete(account_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling SpacesApi->space_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## space_show

> Space space_show(account_id, id, opts)

Get Space

Show the specified Space.

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

api_instance = Phrase::SpacesApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get Space
  result = api_instance.space_show(account_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling SpacesApi->space_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Space**](Space.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## space_update

> Space space_update(account_id, id, space_update_parameters, opts)

Update Space

Update the specified Space.

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

api_instance = Phrase::SpacesApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
space_update_parameters = Phrase::SpaceUpdateParameters.new # SpaceUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update Space
  result = api_instance.space_update(account_id, id, space_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling SpacesApi->space_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **space_update_parameters** | [**SpaceUpdateParameters**](SpaceUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Space**](Space.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## spaces_list

> Array&lt;Space&gt; spaces_list(account_id, opts)

List Spaces

List all Spaces for the given account.

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

api_instance = Phrase::SpacesApi.new
account_id = 'account_id_example' # String | Account ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | allows you to specify a page size up to 100 items, 25 by default
}

begin
  #List Spaces
  result = api_instance.spaces_list(account_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling SpacesApi->spaces_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 25 by default | [optional] 

### Return type

Response<([**Array&lt;Space&gt;**](Space.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## spaces_projects_create

> spaces_projects_create(account_id, space_id, spaces_projects_create_parameters, opts)

Add Project

Adds an existing project to the space.

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

api_instance = Phrase::SpacesApi.new
account_id = 'account_id_example' # String | Account ID
space_id = 'space_id_example' # String | Space ID
spaces_projects_create_parameters = Phrase::SpacesProjectsCreateParameters.new # SpacesProjectsCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Add Project
  api_instance.spaces_projects_create(account_id, space_id, spaces_projects_create_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling SpacesApi->spaces_projects_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **space_id** | **String**| Space ID | 
 **spaces_projects_create_parameters** | [**SpacesProjectsCreateParameters**](SpacesProjectsCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## spaces_projects_delete

> spaces_projects_delete(account_id, space_id, id, opts)

Remove Project

Removes a specified project from the specified space.

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

api_instance = Phrase::SpacesApi.new
account_id = 'account_id_example' # String | Account ID
space_id = 'space_id_example' # String | Space ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Remove Project
  api_instance.spaces_projects_delete(account_id, space_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling SpacesApi->spaces_projects_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **space_id** | **String**| Space ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## spaces_projects_list

> Array&lt;Project&gt; spaces_projects_list(account_id, space_id, opts)

List Projects

List all projects for the specified Space.

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

api_instance = Phrase::SpacesApi.new
account_id = 'account_id_example' # String | Account ID
space_id = 'space_id_example' # String | Space ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | allows you to specify a page size up to 100 items, 25 by default
}

begin
  #List Projects
  result = api_instance.spaces_projects_list(account_id, space_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling SpacesApi->spaces_projects_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **space_id** | **String**| Space ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 25 by default | [optional] 

### Return type

Response<([**Array&lt;Project&gt;**](Project.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

