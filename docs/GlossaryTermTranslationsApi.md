# Phrase::GlossaryTermTranslationsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**glossary_term_translation_create**](GlossaryTermTranslationsApi.md#glossary_term_translation_create) | **POST** /accounts/{account_id}/glossaries/{glossary_id}/terms/{term_id}/translations | Create a glossary term translation
[**glossary_term_translation_delete**](GlossaryTermTranslationsApi.md#glossary_term_translation_delete) | **DELETE** /accounts/{account_id}/glossaries/{glossary_id}/terms/{term_id}/translations/{id} | Delete a glossary term translation
[**glossary_term_translation_update**](GlossaryTermTranslationsApi.md#glossary_term_translation_update) | **PATCH** /accounts/{account_id}/glossaries/{glossary_id}/terms/{term_id}/translations/{id} | Update a glossary term translation



## glossary_term_translation_create

> glossary_term_translation_create(account_id, glossary_id, term_id, glossary_term_translation_create_parameters, opts)

Create a glossary term translation

Create a new glossary term translation.

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

api_instance = Phrase::GlossaryTermTranslationsApi.new
account_id = 'account_id_example' # String | Account ID
glossary_id = 'glossary_id_example' # String | Glossary ID
term_id = 'term_id_example' # String | Term ID
glossary_term_translation_create_parameters = Phrase::GlossaryTermTranslationCreateParameters.new # GlossaryTermTranslationCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a glossary term translation
  api_instance.glossary_term_translation_create(account_id, glossary_id, term_id, glossary_term_translation_create_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling GlossaryTermTranslationsApi->glossary_term_translation_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **glossary_id** | **String**| Glossary ID | 
 **term_id** | **String**| Term ID | 
 **glossary_term_translation_create_parameters** | [**GlossaryTermTranslationCreateParameters**](GlossaryTermTranslationCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## glossary_term_translation_delete

> glossary_term_translation_delete(account_id, glossary_id, term_id, id, opts)

Delete a glossary term translation

Delete an existing glossary term translation.

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

api_instance = Phrase::GlossaryTermTranslationsApi.new
account_id = 'account_id_example' # String | Account ID
glossary_id = 'glossary_id_example' # String | Glossary ID
term_id = 'term_id_example' # String | Term ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a glossary term translation
  api_instance.glossary_term_translation_delete(account_id, glossary_id, term_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling GlossaryTermTranslationsApi->glossary_term_translation_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **glossary_id** | **String**| Glossary ID | 
 **term_id** | **String**| Term ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## glossary_term_translation_update

> GlossaryTermTranslation glossary_term_translation_update(account_id, glossary_id, term_id, id, glossary_term_translation_update_parameters, opts)

Update a glossary term translation

Update an existing glossary term translation.

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

api_instance = Phrase::GlossaryTermTranslationsApi.new
account_id = 'account_id_example' # String | Account ID
glossary_id = 'glossary_id_example' # String | Glossary ID
term_id = 'term_id_example' # String | Term ID
id = 'id_example' # String | ID
glossary_term_translation_update_parameters = Phrase::GlossaryTermTranslationUpdateParameters.new # GlossaryTermTranslationUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a glossary term translation
  result = api_instance.glossary_term_translation_update(account_id, glossary_id, term_id, id, glossary_term_translation_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling GlossaryTermTranslationsApi->glossary_term_translation_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **glossary_id** | **String**| Glossary ID | 
 **term_id** | **String**| Term ID | 
 **id** | **String**| ID | 
 **glossary_term_translation_update_parameters** | [**GlossaryTermTranslationUpdateParameters**](GlossaryTermTranslationUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**GlossaryTermTranslation**](GlossaryTermTranslation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

