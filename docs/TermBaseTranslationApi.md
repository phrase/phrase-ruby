# Phrase::TermBaseTranslationApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**glossary_term_translation_delete**](TermBaseTranslationApi.md#glossary_term_translation_delete) | **DELETE** /accounts/{account_id}/glossaries/{glossary_id}/terms/{term_id}/translations/{id} | Delete a translation for a term



## glossary_term_translation_delete

> glossary_term_translation_delete(account_id, glossary_id, term_id, id, opts)

Delete a translation for a term

Delete an existing translation of a term in a term base (previously: glossary).

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

api_instance = Phrase::TermBaseTranslationApi.new
account_id = 'account_id_example' # String | Account ID
glossary_id = 'glossary_id_example' # String | Glossary ID
term_id = 'term_id_example' # String | Term ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a translation for a term
  api_instance.glossary_term_translation_delete(account_id, glossary_id, term_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling TermBaseTranslationApi->glossary_term_translation_delete: #{e}"
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

