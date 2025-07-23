# Phrase::JobLocalesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**job_locale_complete**](JobLocalesApi.md#job_locale_complete) | **POST** /projects/{project_id}/jobs/{job_id}/locales/{id}/complete | Complete a job locale
[**job_locale_complete_review**](JobLocalesApi.md#job_locale_complete_review) | **POST** /projects/{project_id}/jobs/{job_id}/locales/{id}/complete_review | Review a job locale
[**job_locale_delete**](JobLocalesApi.md#job_locale_delete) | **DELETE** /projects/{project_id}/jobs/{job_id}/locales/{id} | Remove a target locale from a job
[**job_locale_reopen**](JobLocalesApi.md#job_locale_reopen) | **POST** /projects/{project_id}/jobs/{job_id}/locales/{id}/reopen | Reopen a job locale
[**job_locale_show**](JobLocalesApi.md#job_locale_show) | **GET** /projects/{project_id}/jobs/{job_id}/locales/{id} | Show single job target locale
[**job_locale_update**](JobLocalesApi.md#job_locale_update) | **PATCH** /projects/{project_id}/jobs/{job_id}/locales/{id} | Update a job target locale
[**job_locales_create**](JobLocalesApi.md#job_locales_create) | **POST** /projects/{project_id}/jobs/{job_id}/locales | Add a target locale to a job
[**job_locales_list**](JobLocalesApi.md#job_locales_list) | **GET** /projects/{project_id}/jobs/{job_id}/locales | List job target locales



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
  config.api_key_prefix['Authorization'] = 'token'
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


## job_locale_complete_review

> JobLocale job_locale_complete_review(project_id, job_id, id, job_locale_complete_review_parameters, opts)

Review a job locale

Mark job locale as reviewed.

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

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
job_locale_complete_review_parameters = Phrase::JobLocaleCompleteReviewParameters.new # JobLocaleCompleteReviewParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Review a job locale
  result = api_instance.job_locale_complete_review(project_id, job_id, id, job_locale_complete_review_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobLocalesApi->job_locale_complete_review: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **id** | **String**| ID | 
 **job_locale_complete_review_parameters** | [**JobLocaleCompleteReviewParameters**](JobLocaleCompleteReviewParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobLocale**](JobLocale.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_locale_delete

> job_locale_delete(project_id, job_id, id, opts)

Remove a target locale from a job

Removes a target locale from a job.

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

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | Branch to use
}

begin
  #Remove a target locale from a job
  api_instance.job_locale_delete(project_id, job_id, id, opts)
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
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| Branch to use | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
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
  config.api_key_prefix['Authorization'] = 'token'
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

> JobLocale job_locale_show(project_id, job_id, id, opts)

Show single job target locale

Get a single target locale for a given job.

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

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch', # String | Branch to use
  include_annotations: true # Boolean | Include job-locale annotations in the response
}

begin
  #Show single job target locale
  result = api_instance.job_locale_show(project_id, job_id, id, opts)
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
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| Branch to use | [optional] 
 **include_annotations** | **Boolean**| Include job-locale annotations in the response | [optional] [default to false]

### Return type

Response<([**JobLocale**](JobLocale.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## job_locale_update

> JobLocale job_locale_update(project_id, job_id, id, job_locale_update_parameters, opts)

Update a job target locale

Update an existing job target locale.

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

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
job_locale_update_parameters = Phrase::JobLocaleUpdateParameters.new # JobLocaleUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a job target locale
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

> JobLocale job_locales_create(project_id, job_id, job_locales_create_parameters, opts)

Add a target locale to a job

Adds a target locale to a job.

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

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
job_locales_create_parameters = Phrase::JobLocalesCreateParameters.new({locale_id: 'abcd1234cdef1234abcd1234cdef1234'}) # JobLocalesCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Add a target locale to a job
  result = api_instance.job_locales_create(project_id, job_id, job_locales_create_parameters, opts)
  pp result
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

Response<([**JobLocale**](JobLocale.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_locales_list

> Array&lt;JobLocale&gt; job_locales_list(project_id, job_id, opts)

List job target locales

List all target locales for a given job.

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

api_instance = Phrase::JobLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
  branch: 'my-feature-branch', # String | Branch to use
  include_annotations: true # Boolean | Include job-locale annotations in the response
}

begin
  #List job target locales
  result = api_instance.job_locales_list(project_id, job_id, opts)
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
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 
 **branch** | **String**| Branch to use | [optional] 
 **include_annotations** | **Boolean**| Include job-locale annotations in the response | [optional] [default to false]

### Return type

Response<([**Array&lt;JobLocale&gt;**](JobLocale.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

