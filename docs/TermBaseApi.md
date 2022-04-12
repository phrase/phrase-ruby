# Phrase::TermBaseApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**glossaries_list**](TermBaseApi.md#glossaries_list) | **GET** /accounts/{account_id}/glossaries | List term bases
[**glossary_create**](TermBaseApi.md#glossary_create) | **POST** /accounts/{account_id}/glossaries | Create a term base
[**glossary_delete**](TermBaseApi.md#glossary_delete) | **DELETE** /accounts/{account_id}/glossaries/{id} | Delete a term base
[**glossary_show**](TermBaseApi.md#glossary_show) | **GET** /accounts/{account_id}/glossaries/{id} | Get a single term base
[**glossary_update**](TermBaseApi.md#glossary_update) | **PATCH** /accounts/{account_id}/glossaries/{id} | Update a term base



## glossaries_list

> Array&lt;Glossary&gt; glossaries_list(account_id, opts)

List term bases

List all term bases (previously: glossaries) the current user has access to.

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

api_instance = Phrase::TermBaseApi.new
account_id = 'account_id_example' # String | Account ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | allows you to specify a page size up to 100 items, 25 by default
}

begin
  #List term bases
  result = api_instance.glossaries_list(account_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TermBaseApi->glossaries_list: #{e}"
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

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## glossary_create

> Glossary glossary_create(account_id, glossary_create_parameters, opts)

Create a term base

Create a new term base (previously: glossary).

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

api_instance = Phrase::TermBaseApi.new
account_id = 'account_id_example' # String | Account ID
glossary_create_parameters = Phrase::GlossaryCreateParameters.new # GlossaryCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a term base
  result = api_instance.glossary_create(account_id, glossary_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TermBaseApi->glossary_create: #{e}"
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

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## glossary_delete

> glossary_delete(account_id, id, opts)

Delete a term base

Delete an existing term base (previously: glossary).

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

api_instance = Phrase::TermBaseApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a term base
  api_instance.glossary_delete(account_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling TermBaseApi->glossary_delete: #{e}"
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


## glossary_show

> Glossary glossary_show(account_id, id, opts)

Get a single term base

Get details on a single term base (previously: glossary).

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

api_instance = Phrase::TermBaseApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single term base
  result = api_instance.glossary_show(account_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TermBaseApi->glossary_show: #{e}"
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

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## glossary_update

> Glossary glossary_update(account_id, id, glossary_update_parameters, opts)

Update a term base

Update an existing term base (previously: glossary).

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

api_instance = Phrase::TermBaseApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
glossary_update_parameters = Phrase::GlossaryUpdateParameters.new # GlossaryUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a term base
  result = api_instance.glossary_update(account_id, id, glossary_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TermBaseApi->glossary_update: #{e}"
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

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

