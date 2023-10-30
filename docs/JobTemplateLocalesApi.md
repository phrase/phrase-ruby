# Phrase::JobTemplateLocalesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**job_template_locale_delete**](JobTemplateLocalesApi.md#job_template_locale_delete) | **DELETE** /projects/{project_id}/job_templates/{job_template_id}/locales/{job_template_locale_id} | Delete a job template locale
[**job_template_locale_show**](JobTemplateLocalesApi.md#job_template_locale_show) | **GET** /projects/{project_id}/job_templates/{job_template_id}/locales/{job_template_locale_id} | Get a single job template locale
[**job_template_locale_update**](JobTemplateLocalesApi.md#job_template_locale_update) | **PATCH** /projects/{project_id}/job_templates/{job_template_id}/locales/{job_template_locale_id} | Update a job template locale
[**job_template_locales_create**](JobTemplateLocalesApi.md#job_template_locales_create) | **POST** /projects/{project_id}/job_templates/{job_template_id}/locales | Create a job template locale
[**job_template_locales_list**](JobTemplateLocalesApi.md#job_template_locales_list) | **GET** /projects/{project_id}/job_templates/{job_template_id}/locales | List job template locales



## job_template_locale_delete

> job_template_locale_delete(project_id, job_template_id, job_template_locale_id, opts)

Delete a job template locale

Delete an existing job template locale.

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

api_instance = Phrase::JobTemplateLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_template_id = 'job_template_id_example' # String | Job Template ID
job_template_locale_id = 'job_template_locale_id_example' # String | Job Template Locale ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Delete a job template locale
  api_instance.job_template_locale_delete(project_id, job_template_id, job_template_locale_id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling JobTemplateLocalesApi->job_template_locale_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_template_id** | **String**| Job Template ID | 
 **job_template_locale_id** | **String**| Job Template Locale ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## job_template_locale_show

> JobTemplateLocales job_template_locale_show(project_id, job_template_id, job_template_locale_id, opts)

Get a single job template locale

Get a single job template locale for a given job template.

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

api_instance = Phrase::JobTemplateLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_template_id = 'job_template_id_example' # String | Job Template ID
job_template_locale_id = 'job_template_locale_id_example' # String | Job Template Locale ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Get a single job template locale
  result = api_instance.job_template_locale_show(project_id, job_template_id, job_template_locale_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobTemplateLocalesApi->job_template_locale_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_template_id** | **String**| Job Template ID | 
 **job_template_locale_id** | **String**| Job Template Locale ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**JobTemplateLocales**](JobTemplateLocales.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## job_template_locale_update

> JobTemplateLocales job_template_locale_update(project_id, job_template_id, job_template_locale_id, job_template_locale_update_parameters, opts)

Update a job template locale

Update an existing job template locale.

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

api_instance = Phrase::JobTemplateLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_template_id = 'job_template_id_example' # String | Job Template ID
job_template_locale_id = 'job_template_locale_id_example' # String | Job Template Locale ID
job_template_locale_update_parameters = Phrase::JobTemplateLocaleUpdateParameters.new # JobTemplateLocaleUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a job template locale
  result = api_instance.job_template_locale_update(project_id, job_template_id, job_template_locale_id, job_template_locale_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobTemplateLocalesApi->job_template_locale_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_template_id** | **String**| Job Template ID | 
 **job_template_locale_id** | **String**| Job Template Locale ID | 
 **job_template_locale_update_parameters** | [**JobTemplateLocaleUpdateParameters**](JobTemplateLocaleUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobTemplateLocales**](JobTemplateLocales.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_template_locales_create

> JobTemplateLocales job_template_locales_create(project_id, job_template_id, job_template_locales_create_parameters, opts)

Create a job template locale

Create a new job template locale.

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

api_instance = Phrase::JobTemplateLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_template_id = 'job_template_id_example' # String | Job Template ID
job_template_locales_create_parameters = Phrase::JobTemplateLocalesCreateParameters.new({locale_id: 'abcd1234cdef1234abcd1234cdef1234'}) # JobTemplateLocalesCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a job template locale
  result = api_instance.job_template_locales_create(project_id, job_template_id, job_template_locales_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobTemplateLocalesApi->job_template_locales_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_template_id** | **String**| Job Template ID | 
 **job_template_locales_create_parameters** | [**JobTemplateLocalesCreateParameters**](JobTemplateLocalesCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobTemplateLocales**](JobTemplateLocales.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_template_locales_list

> Array&lt;JobTemplateLocales&gt; job_template_locales_list(project_id, job_template_id, opts)

List job template locales

List all job template locales for a given job template.

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

api_instance = Phrase::JobTemplateLocalesApi.new
project_id = 'project_id_example' # String | Project ID
job_template_id = 'job_template_id_example' # String | Job Template ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #List job template locales
  result = api_instance.job_template_locales_list(project_id, job_template_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobTemplateLocalesApi->job_template_locales_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_template_id** | **String**| Job Template ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**Array&lt;JobTemplateLocales&gt;**](JobTemplateLocales.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

