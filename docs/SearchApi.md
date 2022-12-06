# Phrase::SearchApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_in_account**](SearchApi.md#search_in_account) | **POST** /accounts/{account_id}/search | Search across projects



## search_in_account

> AccountSearchResult search_in_account(account_id, search_in_account_parameters, opts)

Search across projects

Search for keys and translations in all account projects <br><br><i>Note: Search is limited to 10000 results and may not include recently updated data depending on the project sizes.</i>

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

api_instance = Phrase::SearchApi.new
account_id = 'account_id_example' # String | Account ID
search_in_account_parameters = Phrase::SearchInAccountParameters.new # SearchInAccountParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Search across projects
  result = api_instance.search_in_account(account_id, search_in_account_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling SearchApi->search_in_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **search_in_account_parameters** | [**SearchInAccountParameters**](SearchInAccountParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**AccountSearchResult**](AccountSearchResult.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

