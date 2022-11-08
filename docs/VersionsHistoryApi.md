# Phrase::VersionsHistoryApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**version_show**](VersionsHistoryApi.md#version_show) | **GET** /projects/{project_id}/translations/{translation_id}/versions/{id} | Get a single version
[**versions_list**](VersionsHistoryApi.md#versions_list) | **GET** /projects/{project_id}/translations/{translation_id}/versions | List all versions



## version_show

> TranslationVersionWithUser version_show(project_id, translation_id, id, opts)

Get a single version

Get details on a single version.

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

api_instance = Phrase::VersionsHistoryApi.new
project_id = 'project_id_example' # String | Project ID
translation_id = 'translation_id_example' # String | Translation ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Get a single version
  result = api_instance.version_show(project_id, translation_id, id, opts)
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
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**TranslationVersionWithUser**](TranslationVersionWithUser.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## versions_list

> Array&lt;TranslationVersion&gt; versions_list(project_id, translation_id, opts)

List all versions

List all changes done to a given translation.

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

api_instance = Phrase::VersionsHistoryApi.new
project_id = 'project_id_example' # String | Project ID
translation_id = 'translation_id_example' # String | Translation ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #List all versions
  result = api_instance.versions_list(project_id, translation_id, opts)
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
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**Array&lt;TranslationVersion&gt;**](TranslationVersion.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

