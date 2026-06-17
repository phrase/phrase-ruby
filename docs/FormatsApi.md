# Phrase::FormatsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**formats_list**](FormatsApi.md#formats_list) | **GET** /formats | List formats



## formats_list

> Array&lt;Format&gt; formats_list

List formats

Returns all file formats that Phrase Strings supports. Use the api_name value from each format as the file_format parameter when uploading or downloading locale files. Not every format supports both directions: check the importable and exportable fields before using a format in a workflow. This endpoint does not require authentication and is not subject to rate limiting. 

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

api_instance = Phrase::FormatsApi.new

begin
  #List formats
  result = api_instance.formats_list
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling FormatsApi->formats_list: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

Response<([**Array&lt;Format&gt;**](Format.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

