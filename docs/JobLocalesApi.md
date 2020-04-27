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

> Object job_locale_complete(project_id, job_id, id, job_locale_complete, opts)

Complete a job locale

Mark a job locale as completed.

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

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
job_locale_complete = Phrase::JobLocaleComplete.new # JobLocaleComplete | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Complete a job locale
  result = api_instance.job_locale_complete(project_id, job_id, id, job_locale_complete, opts)
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
 **job_locale_complete** | [**JobLocaleComplete**](JobLocaleComplete.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_locale_delete

> job_locale_delete(project_id, job_id, id, job_locale_delete, opts)

Delete a job locale

Delete an existing job locale.

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

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
job_locale_delete = Phrase::JobLocaleDelete.new # JobLocaleDelete | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a job locale
  api_instance.job_locale_delete(project_id, job_id, id, job_locale_delete, opts)
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
 **job_locale_delete** | [**JobLocaleDelete**](JobLocaleDelete.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## job_locale_reopen

> Object job_locale_reopen(project_id, job_id, id, job_locale_reopen, opts)

Reopen a job locale

Mark a job locale as uncompleted.

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

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
job_locale_reopen = Phrase::JobLocaleReopen.new # JobLocaleReopen | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Reopen a job locale
  result = api_instance.job_locale_reopen(project_id, job_id, id, job_locale_reopen, opts)
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
 **job_locale_reopen** | [**JobLocaleReopen**](JobLocaleReopen.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_locale_show

> JobLocale job_locale_show(project_id, job_id, id, job_locale_show, opts)

Get a single job locale

Get a single job locale for a given job.

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

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
job_locale_show = Phrase::JobLocaleShow.new # JobLocaleShow | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single job locale
  result = api_instance.job_locale_show(project_id, job_id, id, job_locale_show, opts)
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
 **job_locale_show** | [**JobLocaleShow**](JobLocaleShow.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobLocale**](JobLocale.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_locale_update

> Object job_locale_update(project_id, job_id, id, job_locale_update, opts)

Update a job locale

Update an existing job locale.

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

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
job_locale_update = Phrase::JobLocaleUpdate.new # JobLocaleUpdate | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a job locale
  result = api_instance.job_locale_update(project_id, job_id, id, job_locale_update, opts)
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
 **job_locale_update** | [**JobLocaleUpdate**](JobLocaleUpdate.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_locales_create

> job_locales_create(project_id, job_id, job_locales_create, opts)

Create a job locale

Create a new job locale.

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

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
job_locales_create = Phrase::JobLocalesCreate.new # JobLocalesCreate | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a job locale
  api_instance.job_locales_create(project_id, job_id, job_locales_create, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling JobLocalesApi->job_locales_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **job_locales_create** | [**JobLocalesCreate**](JobLocalesCreate.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## job_locales_list

> Array&lt;Object&gt; job_locales_list(project_id, job_id, job_locales_list, opts)

List job locales

List all job locales for a given job.

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

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
job_locales_list = Phrase::JobLocalesList.new # JobLocalesList | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List job locales
  result = api_instance.job_locales_list(project_id, job_id, job_locales_list, opts)
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
 **job_locales_list** | [**JobLocalesList**](JobLocalesList.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<(**Array&lt;Object&gt;**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

