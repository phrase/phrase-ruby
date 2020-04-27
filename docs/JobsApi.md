# Phrase::JobsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**job_complete**](JobsApi.md#job_complete) | **POST** /projects/{project_id}/jobs/{id}/complete | Complete a job
[**job_create**](JobsApi.md#job_create) | **POST** /projects/{project_id}/jobs | Create a job
[**job_delete**](JobsApi.md#job_delete) | **DELETE** /projects/{project_id}/jobs/{id} | Delete a job
[**job_keys_create**](JobsApi.md#job_keys_create) | **POST** /projects/{project_id}/jobs/{id}/keys | Add keys to job
[**job_keys_delete**](JobsApi.md#job_keys_delete) | **DELETE** /projects/{project_id}/jobs/{id}/keys | Remove keys from job
[**job_reopen**](JobsApi.md#job_reopen) | **POST** /projects/{project_id}/jobs/{id}/reopen | Reopen a job
[**job_show**](JobsApi.md#job_show) | **GET** /projects/{project_id}/jobs/{id} | Get a single job
[**job_start**](JobsApi.md#job_start) | **POST** /projects/{project_id}/jobs/{id}/start | Start a job
[**job_update**](JobsApi.md#job_update) | **PATCH** /projects/{project_id}/jobs/{id} | Update a job
[**jobs_list**](JobsApi.md#jobs_list) | **GET** /projects/{project_id}/jobs | List jobs



## job_complete

> Object job_complete(project_id, id, job_complete, opts)

Complete a job

Mark a job as completed.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
job_complete = Phrase::JobComplete.new # JobComplete | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Complete a job
  result = api_instance.job_complete(project_id, id, job_complete, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobsApi->job_complete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **job_complete** | [**JobComplete**](JobComplete.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_create

> job_create(project_id, job_create, opts)

Create a job

Create a new job.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
job_create = Phrase::JobCreate.new # JobCreate | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a job
  api_instance.job_create(project_id, job_create, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling JobsApi->job_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_create** | [**JobCreate**](JobCreate.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## job_delete

> job_delete(project_id, id, job_delete, opts)

Delete a job

Delete an existing job.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
job_delete = Phrase::JobDelete.new # JobDelete | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a job
  api_instance.job_delete(project_id, id, job_delete, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling JobsApi->job_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **job_delete** | [**JobDelete**](JobDelete.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## job_keys_create

> Object job_keys_create(project_id, id, job_keys_create, opts)

Add keys to job

Add multiple keys to a existing job.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
job_keys_create = Phrase::JobKeysCreate.new # JobKeysCreate | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Add keys to job
  result = api_instance.job_keys_create(project_id, id, job_keys_create, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobsApi->job_keys_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **job_keys_create** | [**JobKeysCreate**](JobKeysCreate.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_keys_delete

> job_keys_delete(project_id, id, job_keys_delete, opts)

Remove keys from job

Remove multiple keys from existing job.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
job_keys_delete = Phrase::JobKeysDelete.new # JobKeysDelete | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Remove keys from job
  api_instance.job_keys_delete(project_id, id, job_keys_delete, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling JobsApi->job_keys_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **job_keys_delete** | [**JobKeysDelete**](JobKeysDelete.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## job_reopen

> Object job_reopen(project_id, id, job_reopen, opts)

Reopen a job

Mark a job as uncompleted.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
job_reopen = Phrase::JobReopen.new # JobReopen | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Reopen a job
  result = api_instance.job_reopen(project_id, id, job_reopen, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobsApi->job_reopen: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **job_reopen** | [**JobReopen**](JobReopen.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_show

> Object job_show(project_id, id, job_show, opts)

Get a single job

Get details on a single job for a given project.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
job_show = Phrase::JobShow.new # JobShow | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single job
  result = api_instance.job_show(project_id, id, job_show, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobsApi->job_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **job_show** | [**JobShow**](JobShow.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_start

> Object job_start(project_id, id, job_start, opts)

Start a job

Starts an existing job in state draft.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
job_start = Phrase::JobStart.new # JobStart | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Start a job
  result = api_instance.job_start(project_id, id, job_start, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobsApi->job_start: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **job_start** | [**JobStart**](JobStart.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_update

> Object job_update(project_id, id, job_update, opts)

Update a job

Update an existing job.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
job_update = Phrase::JobUpdate.new # JobUpdate | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a job
  result = api_instance.job_update(project_id, id, job_update, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobsApi->job_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **job_update** | [**JobUpdate**](JobUpdate.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## jobs_list

> Array&lt;Job&gt; jobs_list(project_id, jobs_list, opts)

List jobs

List all jobs for the given project.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
jobs_list = Phrase::JobsList.new # JobsList | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List jobs
  result = api_instance.jobs_list(project_id, jobs_list, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobsApi->jobs_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **jobs_list** | [**JobsList**](JobsList.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<([**Array&lt;Job&gt;**](Job.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

