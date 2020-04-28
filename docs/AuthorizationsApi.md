# Phrase::AuthorizationsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorization_create**](AuthorizationsApi.md#authorization_create) | **POST** /authorizations | Create an authorization
[**authorization_delete**](AuthorizationsApi.md#authorization_delete) | **DELETE** /authorizations/{id} | Delete an authorization
[**authorization_show**](AuthorizationsApi.md#authorization_show) | **GET** /authorizations/{id} | Get a single authorization
[**authorization_update**](AuthorizationsApi.md#authorization_update) | **PATCH** /authorizations/{id} | Update an authorization
[**authorizations_list**](AuthorizationsApi.md#authorizations_list) | **GET** /authorizations | List authorizations



## authorization_create

> authorization_create(authorization_create_parameters, opts)

Create an authorization

Create a new authorization.

### Example

```ruby
# load the gem
require 'Phrase'
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

api_instance = Phrase::AuthorizationsApi.new
authorization_create_parameters = Phrase::AuthorizationCreateParameters.new # AuthorizationCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create an authorization
  api_instance.authorization_create(authorization_create_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling AuthorizationsApi->authorization_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization_create_parameters** | [**AuthorizationCreateParameters**](AuthorizationCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## authorization_delete

> authorization_delete(id, opts)

Delete an authorization

Delete an existing authorization. API calls using that token will stop working.

### Example

```ruby
# load the gem
require 'Phrase'
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

api_instance = Phrase::AuthorizationsApi.new
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete an authorization
  api_instance.authorization_delete(id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling AuthorizationsApi->authorization_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## authorization_show

> Authorization authorization_show(id, opts)

Get a single authorization

Get details on a single authorization.

### Example

```ruby
# load the gem
require 'Phrase'
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

api_instance = Phrase::AuthorizationsApi.new
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single authorization
  result = api_instance.authorization_show(id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling AuthorizationsApi->authorization_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Authorization**](Authorization.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## authorization_update

> Object authorization_update(id, authorization_update_parameters, opts)

Update an authorization

Update an existing authorization.

### Example

```ruby
# load the gem
require 'Phrase'
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

api_instance = Phrase::AuthorizationsApi.new
id = 'id_example' # String | ID
authorization_update_parameters = Phrase::AuthorizationUpdateParameters.new # AuthorizationUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update an authorization
  result = api_instance.authorization_update(id, authorization_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling AuthorizationsApi->authorization_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 
 **authorization_update_parameters** | [**AuthorizationUpdateParameters**](AuthorizationUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## authorizations_list

> Array&lt;Object&gt; authorizations_list(opts)

List authorizations

List all your authorizations.

### Example

```ruby
# load the gem
require 'Phrase'
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

api_instance = Phrase::AuthorizationsApi.new
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List authorizations
  result = api_instance.authorizations_list(opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling AuthorizationsApi->authorizations_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<(**Array&lt;Object&gt;**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

