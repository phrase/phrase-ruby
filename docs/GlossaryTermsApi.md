# Phrase::GlossaryTermsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**glossary_term_create**](GlossaryTermsApi.md#glossary_term_create) | **POST** /accounts/{account_id}/glossaries/{glossary_id}/terms | Create a glossary term
[**glossary_term_delete**](GlossaryTermsApi.md#glossary_term_delete) | **DELETE** /accounts/{account_id}/glossaries/{glossary_id}/terms/{id} | Delete a glossary term
[**glossary_term_show**](GlossaryTermsApi.md#glossary_term_show) | **GET** /accounts/{account_id}/glossaries/{glossary_id}/terms/{id} | Get a single glossary term
[**glossary_term_update**](GlossaryTermsApi.md#glossary_term_update) | **PATCH** /accounts/{account_id}/glossaries/{glossary_id}/terms/{id} | Update a glossary term
[**glossary_terms_list**](GlossaryTermsApi.md#glossary_terms_list) | **GET** /accounts/{account_id}/glossaries/{glossary_id}/terms | List glossary terms



## glossary_term_create

> GlossaryTerm glossary_term_create(account_id, glossary_id, glossary_term_create_parameters, opts)

Create a glossary term

Create a new glossary term.

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

api_instance = Phrase::GlossaryTermsApi.new
account_id = 'account_id_example' # String | Account ID
glossary_id = 'glossary_id_example' # String | Glossary ID
glossary_term_create_parameters = Phrase::GlossaryTermCreateParameters.new # GlossaryTermCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a glossary term
  result = api_instance.glossary_term_create(account_id, glossary_id, glossary_term_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling GlossaryTermsApi->glossary_term_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **glossary_id** | **String**| Glossary ID | 
 **glossary_term_create_parameters** | [**GlossaryTermCreateParameters**](GlossaryTermCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**GlossaryTerm**](GlossaryTerm.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## glossary_term_delete

> glossary_term_delete(account_id, glossary_id, id, opts)

Delete a glossary term

Delete an existing glossary term.

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

api_instance = Phrase::GlossaryTermsApi.new
account_id = 'account_id_example' # String | Account ID
glossary_id = 'glossary_id_example' # String | Glossary ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a glossary term
  api_instance.glossary_term_delete(account_id, glossary_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling GlossaryTermsApi->glossary_term_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **glossary_id** | **String**| Glossary ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## glossary_term_show

> GlossaryTerm glossary_term_show(account_id, glossary_id, id, opts)

Get a single glossary term

Get details on a single glossary term.

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

api_instance = Phrase::GlossaryTermsApi.new
account_id = 'account_id_example' # String | Account ID
glossary_id = 'glossary_id_example' # String | Glossary ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single glossary term
  result = api_instance.glossary_term_show(account_id, glossary_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling GlossaryTermsApi->glossary_term_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **glossary_id** | **String**| Glossary ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**GlossaryTerm**](GlossaryTerm.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## glossary_term_update

> GlossaryTerm glossary_term_update(account_id, glossary_id, id, glossary_term_update_parameters, opts)

Update a glossary term

Update an existing glossary term.

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

api_instance = Phrase::GlossaryTermsApi.new
account_id = 'account_id_example' # String | Account ID
glossary_id = 'glossary_id_example' # String | Glossary ID
id = 'id_example' # String | ID
glossary_term_update_parameters = Phrase::GlossaryTermUpdateParameters.new # GlossaryTermUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a glossary term
  result = api_instance.glossary_term_update(account_id, glossary_id, id, glossary_term_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling GlossaryTermsApi->glossary_term_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **glossary_id** | **String**| Glossary ID | 
 **id** | **String**| ID | 
 **glossary_term_update_parameters** | [**GlossaryTermUpdateParameters**](GlossaryTermUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**GlossaryTerm**](GlossaryTerm.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## glossary_terms_list

> Array&lt;GlossaryTerm&gt; glossary_terms_list(account_id, glossary_id, opts)

List glossary terms

List all glossary terms the current user has access to.

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

api_instance = Phrase::GlossaryTermsApi.new
account_id = 'account_id_example' # String | Account ID
glossary_id = 'glossary_id_example' # String | Glossary ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List glossary terms
  result = api_instance.glossary_terms_list(account_id, glossary_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling GlossaryTermsApi->glossary_terms_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **glossary_id** | **String**| Glossary ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<([**Array&lt;GlossaryTerm&gt;**](GlossaryTerm.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

