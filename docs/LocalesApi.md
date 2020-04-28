# Phrase::LocalesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**locale_create**](LocalesApi.md#locale_create) | **POST** /projects/{project_id}/locales | Create a locale
[**locale_delete**](LocalesApi.md#locale_delete) | **DELETE** /projects/{project_id}/locales/{id} | Delete a locale
[**locale_download**](LocalesApi.md#locale_download) | **GET** /projects/{project_id}/locales/{id}/download | Download a locale
[**locale_show**](LocalesApi.md#locale_show) | **GET** /projects/{project_id}/locales/{id} | Get a single locale
[**locale_update**](LocalesApi.md#locale_update) | **PATCH** /projects/{project_id}/locales/{id} | Update a locale
[**locales_list**](LocalesApi.md#locales_list) | **GET** /projects/{project_id}/locales | List locales



## locale_create

> locale_create(project_id, locale_create_parameters, opts)

Create a locale

Create a new locale.

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

api_instance = Phrase::LocalesApi.new
project_id = 'project_id_example' # String | Project ID
locale_create_parameters = Phrase::LocaleCreateParameters.new # LocaleCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a locale
  api_instance.locale_create(project_id, locale_create_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling LocalesApi->locale_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **locale_create_parameters** | [**LocaleCreateParameters**](LocaleCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## locale_delete

> locale_delete(project_id, id, locale_delete_parameters, opts)

Delete a locale

Delete an existing locale.

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

api_instance = Phrase::LocalesApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
locale_delete_parameters = Phrase::LocaleDeleteParameters.new # LocaleDeleteParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a locale
  api_instance.locale_delete(project_id, id, locale_delete_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling LocalesApi->locale_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **locale_delete_parameters** | [**LocaleDeleteParameters**](LocaleDeleteParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## locale_download

> locale_download(project_id, id, locale_download_parameters, opts)

Download a locale

Download a locale in a specific file format.

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

api_instance = Phrase::LocalesApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
locale_download_parameters = Phrase::LocaleDownloadParameters.new # LocaleDownloadParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Download a locale
  api_instance.locale_download(project_id, id, locale_download_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling LocalesApi->locale_download: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **locale_download_parameters** | [**LocaleDownloadParameters**](LocaleDownloadParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## locale_show

> LocaleDetails locale_show(project_id, id, locale_show_parameters, opts)

Get a single locale

Get details on a single locale for a given project.

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

api_instance = Phrase::LocalesApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
locale_show_parameters = Phrase::LocaleShowParameters.new # LocaleShowParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single locale
  result = api_instance.locale_show(project_id, id, locale_show_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling LocalesApi->locale_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **locale_show_parameters** | [**LocaleShowParameters**](LocaleShowParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**LocaleDetails**](LocaleDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## locale_update

> LocaleDetails locale_update(project_id, id, locale_update_parameters, opts)

Update a locale

Update an existing locale.

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

api_instance = Phrase::LocalesApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
locale_update_parameters = Phrase::LocaleUpdateParameters.new # LocaleUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a locale
  result = api_instance.locale_update(project_id, id, locale_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling LocalesApi->locale_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **locale_update_parameters** | [**LocaleUpdateParameters**](LocaleUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**LocaleDetails**](LocaleDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## locales_list

> Array&lt;Locale&gt; locales_list(project_id, locales_list_parameters, opts)

List locales

List all locales for the given project.

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

api_instance = Phrase::LocalesApi.new
project_id = 'project_id_example' # String | Project ID
locales_list_parameters = Phrase::LocalesListParameters.new # LocalesListParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List locales
  result = api_instance.locales_list(project_id, locales_list_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling LocalesApi->locales_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **locales_list_parameters** | [**LocalesListParameters**](LocalesListParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<([**Array&lt;Locale&gt;**](Locale.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

