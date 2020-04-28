# Phrase::VersionsHistoryApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**version_show**](VersionsHistoryApi.md#version_show) | **GET** /projects/{project_id}/translations/{translation_id}/versions/{id} | Get a single version
[**versions_list**](VersionsHistoryApi.md#versions_list) | **GET** /projects/{project_id}/translations/{translation_id}/versions | List all versions



## version_show

> Object version_show(project_id, translation_id, id, version_show_parameters, opts)

Get a single version

Get details on a single version.

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

api_instance = Phrase::VersionsHistoryApi.new
project_id = 'project_id_example' # String | Project ID
translation_id = 'translation_id_example' # String | Translation ID
id = 'id_example' # String | ID
version_show_parameters = Phrase::VersionShowParameters.new # VersionShowParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single version
  result = api_instance.version_show(project_id, translation_id, id, version_show_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling VersionsHistoryApi->version_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translation_id** | **String**| Translation ID | 
 **id** | **String**| ID | 
 **version_show_parameters** | [**VersionShowParameters**](VersionShowParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## versions_list

> Array&lt;TranslationVersion&gt; versions_list(project_id, translation_id, versions_list_parameters, opts)

List all versions

List all versions for the given translation.

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

api_instance = Phrase::VersionsHistoryApi.new
project_id = 'project_id_example' # String | Project ID
translation_id = 'translation_id_example' # String | Translation ID
versions_list_parameters = Phrase::VersionsListParameters.new # VersionsListParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List all versions
  result = api_instance.versions_list(project_id, translation_id, versions_list_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling VersionsHistoryApi->versions_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translation_id** | **String**| Translation ID | 
 **versions_list_parameters** | [**VersionsListParameters**](VersionsListParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<([**Array&lt;TranslationVersion&gt;**](TranslationVersion.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

