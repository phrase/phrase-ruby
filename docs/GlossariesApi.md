# Phrase::GlossariesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**glossaries_list**](GlossariesApi.md#glossaries_list) | **GET** /accounts/{account_id}/glossaries | List glossaries
[**glossary_create**](GlossariesApi.md#glossary_create) | **POST** /accounts/{account_id}/glossaries | Create a glossary
[**glossary_delete**](GlossariesApi.md#glossary_delete) | **DELETE** /accounts/{account_id}/glossaries/{id} | Delete a glossary
[**glossary_show**](GlossariesApi.md#glossary_show) | **GET** /accounts/{account_id}/glossaries/{id} | Get a single glossary
[**glossary_update**](GlossariesApi.md#glossary_update) | **PATCH** /accounts/{account_id}/glossaries/{id} | Update a glossary



## glossaries_list

> Array&lt;Glossary&gt; glossaries_list(account_id, opts)

List glossaries

List all glossaries the current user has access to.

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

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Phrase::GlossariesApi.new
account_id = 'account_id_example' # String | Account ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | allows you to specify a page size up to 100 items, 25 by default
}

begin
  #List glossaries
  result = api_instance.glossaries_list(account_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling GlossariesApi->glossaries_list: #{e}"
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

Response<([**Array&lt;Glossary&gt;**](Glossary.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## glossary_create

> Glossary glossary_create(account_id, glossary_create_parameters, opts)

Create a glossary

Create a new glossary.

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

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Phrase::GlossariesApi.new
account_id = 'account_id_example' # String | Account ID
glossary_create_parameters = Phrase::GlossaryCreateParameters.new # GlossaryCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a glossary
  result = api_instance.glossary_create(account_id, glossary_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling GlossariesApi->glossary_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **glossary_create_parameters** | [**GlossaryCreateParameters**](GlossaryCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Glossary**](Glossary.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## glossary_delete

> glossary_delete(account_id, id, opts)

Delete a glossary

Delete an existing glossary.

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

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Phrase::GlossariesApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a glossary
  api_instance.glossary_delete(account_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling GlossariesApi->glossary_delete: #{e}"
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

[Basic](../README.md#Basic), [Token](../README.md#Token), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## glossary_show

> Glossary glossary_show(account_id, id, opts)

Get a single glossary

Get details on a single glossary.

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

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Phrase::GlossariesApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single glossary
  result = api_instance.glossary_show(account_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling GlossariesApi->glossary_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Glossary**](Glossary.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## glossary_update

> Glossary glossary_update(account_id, id, glossary_update_parameters, opts)

Update a glossary

Update an existing glossary.

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

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Phrase::GlossariesApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
glossary_update_parameters = Phrase::GlossaryUpdateParameters.new # GlossaryUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a glossary
  result = api_instance.glossary_update(account_id, id, glossary_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling GlossariesApi->glossary_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **glossary_update_parameters** | [**GlossaryUpdateParameters**](GlossaryUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Glossary**](Glossary.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

