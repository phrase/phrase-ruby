# Phrase::JobLocalesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**job_locale_complete**](JobLocalesApi.md#job_locale_complete) | **POST** /projects/{project_id}/jobs/{job_id}/locales/{id}/complete | Complete a job locale
[**job_locale_delete**](JobLocalesApi.md#job_locale_delete) | **DELETE** /projects/{project_id}/jobs/{job_id}/locales/{id} | Delete a job locale
[**job_locale_reopen**](JobLocalesApi.md#job_locale_reopen) | **POST** /projects/{project_id}/jobs/{job_id}/locales/{id}/reopen | Reopen a job locale
[**job_locale_show**](JobLocalesApi.md#job_locale_show) | **GET** /projects/{project_id}/jobs/{job_id}/locale/{id} | Get a single job locale
[**job_locale_update**](JobLocalesApi.md#job_locale_update) | **PATCH** /projects/{project_id}/jobs/{job_id}/locales/{id} | Update a job locale
[**job_locales_create**](JobLocalesApi.md#job_locales_create) | **POST** /projects/{project_id}/jobs/{job_id}/locales | Create a job locale
[**job_locales_list**](JobLocalesApi.md#job_locales_list) | **GET** /projects/{project_id}/jobs/{job_id}/locales | List job locales



## job_locale_complete

> JobLocale job_locale_complete(project_id, job_id, id, job_locale_complete_parameters, opts)

Complete a job locale

Mark a job locale as completed.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
job_locale_complete_parameters = Phrase::JobLocaleCompleteParameters.new # JobLocaleCompleteParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Complete a job locale
  result = api_instance.job_locale_complete(project_id, job_id, id, job_locale_complete_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobLocalesApi->job_locale_complete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **id** | **String**| ID | 
 **job_locale_complete_parameters** | [**JobLocaleCompleteParameters**](JobLocaleCompleteParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobLocale**](JobLocale.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_locale_delete

> job_locale_delete(project_id, job_id, id, job_locale_delete_parameters, opts)

Delete a job locale

Delete an existing job locale.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
job_locale_delete_parameters = Phrase::JobLocaleDeleteParameters.new # JobLocaleDeleteParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a job locale
  api_instance.job_locale_delete(project_id, job_id, id, job_locale_delete_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling JobLocalesApi->job_locale_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **id** | **String**| ID | 
 **job_locale_delete_parameters** | [**JobLocaleDeleteParameters**](JobLocaleDeleteParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## job_locale_reopen

> JobLocale job_locale_reopen(project_id, job_id, id, job_locale_reopen_parameters, opts)

Reopen a job locale

Mark a job locale as uncompleted.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
job_locale_reopen_parameters = Phrase::JobLocaleReopenParameters.new # JobLocaleReopenParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Reopen a job locale
  result = api_instance.job_locale_reopen(project_id, job_id, id, job_locale_reopen_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobLocalesApi->job_locale_reopen: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **id** | **String**| ID | 
 **job_locale_reopen_parameters** | [**JobLocaleReopenParameters**](JobLocaleReopenParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobLocale**](JobLocale.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_locale_show

> JobLocale job_locale_show(project_id, job_id, id, job_locale_show_parameters, opts)

Get a single job locale

Get a single job locale for a given job.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
job_locale_show_parameters = Phrase::JobLocaleShowParameters.new # JobLocaleShowParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single job locale
  result = api_instance.job_locale_show(project_id, job_id, id, job_locale_show_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobLocalesApi->job_locale_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **id** | **String**| ID | 
 **job_locale_show_parameters** | [**JobLocaleShowParameters**](JobLocaleShowParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobLocale**](JobLocale.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_locale_update

> JobLocale job_locale_update(project_id, job_id, id, job_locale_update_parameters, opts)

Update a job locale

Update an existing job locale.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
job_locale_update_parameters = Phrase::JobLocaleUpdateParameters.new # JobLocaleUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a job locale
  result = api_instance.job_locale_update(project_id, job_id, id, job_locale_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobLocalesApi->job_locale_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **id** | **String**| ID | 
 **job_locale_update_parameters** | [**JobLocaleUpdateParameters**](JobLocaleUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobLocale**](JobLocale.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_locales_create

> job_locales_create(project_id, job_id, job_locales_create_parameters, opts)

Create a job locale

Create a new job locale.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
job_locales_create_parameters = Phrase::JobLocalesCreateParameters.new # JobLocalesCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a job locale
  api_instance.job_locales_create(project_id, job_id, job_locales_create_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling JobLocalesApi->job_locales_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **job_locales_create_parameters** | [**JobLocalesCreateParameters**](JobLocalesCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## job_locales_list

> Array&lt;JobLocale&gt; job_locales_list(project_id, job_id, job_locales_list_parameters, opts)

List job locales

List all job locales for a given job.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
job_locales_list_parameters = Phrase::JobLocalesListParameters.new # JobLocalesListParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List job locales
  result = api_instance.job_locales_list(project_id, job_id, job_locales_list_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobLocalesApi->job_locales_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **job_locales_list_parameters** | [**JobLocalesListParameters**](JobLocalesListParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<([**Array&lt;JobLocale&gt;**](JobLocale.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

