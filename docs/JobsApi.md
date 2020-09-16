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

> JobDetails job_complete(project_id, id, job_complete_parameters, opts)

Complete a job

Mark a job as completed.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
job_complete_parameters = Phrase::JobCompleteParameters.new # JobCompleteParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Complete a job
  result = api_instance.job_complete(project_id, id, job_complete_parameters, opts)
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
 **job_complete_parameters** | [**JobCompleteParameters**](JobCompleteParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobDetails**](JobDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_create

> JobDetails job_create(project_id, job_create_parameters, opts)

Create a job

Create a new job.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
job_create_parameters = Phrase::JobCreateParameters.new # JobCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a job
  result = api_instance.job_create(project_id, job_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobsApi->job_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_create_parameters** | [**JobCreateParameters**](JobCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobDetails**](JobDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_delete

> job_delete(project_id, id, opts)

Delete a job

Delete an existing job.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Delete a job
  api_instance.job_delete(project_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling JobsApi->job_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## job_keys_create

> JobDetails job_keys_create(project_id, id, job_keys_create_parameters, opts)

Add keys to job

Add multiple keys to a existing job.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
job_keys_create_parameters = Phrase::JobKeysCreateParameters.new # JobKeysCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Add keys to job
  result = api_instance.job_keys_create(project_id, id, job_keys_create_parameters, opts)
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
 **job_keys_create_parameters** | [**JobKeysCreateParameters**](JobKeysCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobDetails**](JobDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_keys_delete

> job_keys_delete(project_id, id, opts)

Remove keys from job

Remove multiple keys from existing job.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch', # String | specify the branch to use
  translation_key_ids: ['[\"abcd1234cdef1234abcd1234cdef1234\"]'] # Array<String> | ids of keys that should added to the job
}

begin
  #Remove keys from job
  api_instance.job_keys_delete(project_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling JobsApi->job_keys_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 
 **translation_key_ids** | [**Array&lt;String&gt;**](String.md)| ids of keys that should added to the job | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## job_reopen

> JobDetails job_reopen(project_id, id, job_reopen_parameters, opts)

Reopen a job

Mark a job as uncompleted.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
job_reopen_parameters = Phrase::JobReopenParameters.new # JobReopenParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Reopen a job
  result = api_instance.job_reopen(project_id, id, job_reopen_parameters, opts)
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
 **job_reopen_parameters** | [**JobReopenParameters**](JobReopenParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobDetails**](JobDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_show

> JobDetails job_show(project_id, id, opts)

Get a single job

Get details on a single job for a given project.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Get a single job
  result = api_instance.job_show(project_id, id, opts)
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
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**JobDetails**](JobDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## job_start

> JobDetails job_start(project_id, id, job_start_parameters, opts)

Start a job

Starts an existing job in state draft.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
job_start_parameters = Phrase::JobStartParameters.new # JobStartParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Start a job
  result = api_instance.job_start(project_id, id, job_start_parameters, opts)
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
 **job_start_parameters** | [**JobStartParameters**](JobStartParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobDetails**](JobDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_update

> JobDetails job_update(project_id, id, job_update_parameters, opts)

Update a job

Update an existing job.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
job_update_parameters = Phrase::JobUpdateParameters.new # JobUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a job
  result = api_instance.job_update(project_id, id, job_update_parameters, opts)
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
 **job_update_parameters** | [**JobUpdateParameters**](JobUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobDetails**](JobDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## jobs_list

> Array&lt;Job&gt; jobs_list(project_id, opts)

List jobs

List all jobs for the given project.

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

api_instance = Phrase::JobsApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | allows you to specify a page size up to 100 items, 25 by default
  branch: 'my-feature-branch', # String | specify the branch to use
  owned_by: 'abcd1234cdef1234abcd1234cdef1234', # String | filter by user owning job
  assigned_to: 'abcd1234cdef1234abcd1234cdef1234', # String | filter by user assigned to job
  state: 'completed' # String | filter by state of job Valid states are <code>draft</code>, <code>in_progress</code>, <code>completed</code>
}

begin
  #List jobs
  result = api_instance.jobs_list(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobsApi->jobs_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 25 by default | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 
 **owned_by** | **String**| filter by user owning job | [optional] 
 **assigned_to** | **String**| filter by user assigned to job | [optional] 
 **state** | **String**| filter by state of job Valid states are &lt;code&gt;draft&lt;/code&gt;, &lt;code&gt;in_progress&lt;/code&gt;, &lt;code&gt;completed&lt;/code&gt; | [optional] 

### Return type

Response<([**Array&lt;Job&gt;**](Job.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

