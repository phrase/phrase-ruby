# Phrase::ICUApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**icu_skeleton**](ICUApi.md#icu_skeleton) | **POST** /icu/skeleton | Build icu skeletons



## icu_skeleton

> Icu icu_skeleton(icu_skeleton_parameters, opts)

Build icu skeletons

Returns icu skeletons for multiple locale codes based on a source content.

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

api_instance = Phrase::ICUApi.new
icu_skeleton_parameters = Phrase::IcuSkeletonParameters.new # IcuSkeletonParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Build icu skeletons
  result = api_instance.icu_skeleton(icu_skeleton_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ICUApi->icu_skeleton: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icu_skeleton_parameters** | [**IcuSkeletonParameters**](IcuSkeletonParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Icu**](Icu.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
