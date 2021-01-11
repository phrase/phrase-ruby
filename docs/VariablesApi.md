# Phrase::VariablesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**variable_create**](VariablesApi.md#variable_create) | **POST** /projects/{project_id}/variables | Create a variable
[**variable_delete**](VariablesApi.md#variable_delete) | **DELETE** /projects/{project_id}/variables/{name} | Delete a variable
[**variable_show**](VariablesApi.md#variable_show) | **GET** /projects/{project_id}/variables/{name} | Get a single variable
[**variable_update**](VariablesApi.md#variable_update) | **PATCH** /projects/{project_id}/variables/{name} | Update a variable



## variable_create

> Variable variable_create(project_id, variable_create_parameters, opts)

Create a variable

Create a new variable.

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

api_instance = Phrase::VariablesApi.new
project_id = 'project_id_example' # String | Project ID
variable_create_parameters = Phrase::VariableCreateParameters.new # VariableCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a variable
  result = api_instance.variable_create(project_id, variable_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling VariablesApi->variable_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **variable_create_parameters** | [**VariableCreateParameters**](VariableCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Variable**](Variable.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## variable_delete

> variable_delete(project_id, name, opts)

Delete a variable

Delete an existing variable.

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

api_instance = Phrase::VariablesApi.new
project_id = 'project_id_example' # String | Project ID
name = 'name_example' # String | name
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a variable
  api_instance.variable_delete(project_id, name, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling VariablesApi->variable_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **name** | **String**| name | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## variable_show

> Object variable_show(project_id, name, opts)

Get a single variable

Get details on a single variable for a given project.

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

api_instance = Phrase::VariablesApi.new
project_id = 'project_id_example' # String | Project ID
name = 'name_example' # String | name
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single variable
  result = api_instance.variable_show(project_id, name, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling VariablesApi->variable_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **name** | **String**| name | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## variable_update

> Object variable_update(project_id, name, branch_update_parameters, opts)

Update a variable

Update an existing variable.

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

api_instance = Phrase::VariablesApi.new
project_id = 'project_id_example' # String | Project ID
name = 'name_example' # String | name
branch_update_parameters = Phrase::BranchUpdateParameters.new # BranchUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a variable
  result = api_instance.variable_update(project_id, name, branch_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling VariablesApi->variable_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **name** | **String**| name | 
 **branch_update_parameters** | [**BranchUpdateParameters**](BranchUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

