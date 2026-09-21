# Phrase::SupportedLanguagesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**languages_list**](SupportedLanguagesApi.md#languages_list) | **GET** /languages | List supported languages



## languages_list

> Hash&lt;String, String&gt; languages_list

List supported languages

Returns all languages/locale codes that Phrase Strings recognizes, mapped to their human-readable display name. This endpoint does not require authentication. 

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

api_instance = Phrase::SupportedLanguagesApi.new

begin
  #List supported languages
  result = api_instance.languages_list
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling SupportedLanguagesApi->languages_list: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

Response<(**Hash&lt;String, String&gt;**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

