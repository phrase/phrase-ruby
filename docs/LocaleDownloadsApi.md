# Phrase::LocaleDownloadsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**locale_download_create**](LocaleDownloadsApi.md#locale_download_create) | **POST** /projects/{project_id}/locales/{locale_id}/downloads | Initiate async download of a locale
[**locale_download_show**](LocaleDownloadsApi.md#locale_download_show) | **GET** /projects/{project_id}/locales/{locale_id}/downloads/{id} | Show status of an async locale download



## locale_download_create

> LocaleDownload locale_download_create(project_id, locale_id, locale_download_create_parameters, opts)

Initiate async download of a locale

Prepare a locale for download in a specific file format.

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

api_instance = Phrase::LocaleDownloadsApi.new
project_id = 'project_id_example' # String | Project ID
locale_id = 'locale_id_example' # String | Locale ID
locale_download_create_parameters = Phrase::LocaleDownloadCreateParameters.new({file_format: 'yml'}) # LocaleDownloadCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  if_modified_since: 'if_modified_since_example', # String | Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
  if_none_match: 'if_none_match_example' # String | ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
}

begin
  #Initiate async download of a locale
  result = api_instance.locale_download_create(project_id, locale_id, locale_download_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling LocaleDownloadsApi->locale_download_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **locale_id** | **String**| Locale ID | 
 **locale_download_create_parameters** | [**LocaleDownloadCreateParameters**](LocaleDownloadCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **if_modified_since** | **String**| Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional) | [optional] 
 **if_none_match** | **String**| ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional) | [optional] 

### Return type

Response<([**LocaleDownload**](LocaleDownload.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## locale_download_show

> LocaleDownload locale_download_show(project_id, locale_id, id, opts)

Show status of an async locale download

Show status of already started async locale download. If the download is finished, the download link will be returned.

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

api_instance = Phrase::LocaleDownloadsApi.new
project_id = 'project_id_example' # String | Project ID
locale_id = 'locale_id_example' # String | Locale ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  if_modified_since: 'if_modified_since_example', # String | Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
  if_none_match: 'if_none_match_example' # String | ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
}

begin
  #Show status of an async locale download
  result = api_instance.locale_download_show(project_id, locale_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling LocaleDownloadsApi->locale_download_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **locale_id** | **String**| Locale ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **if_modified_since** | **String**| Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional) | [optional] 
 **if_none_match** | **String**| ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional) | [optional] 

### Return type

Response<([**LocaleDownload**](LocaleDownload.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

