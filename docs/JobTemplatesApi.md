# Phrase::JobTemplatesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**job_template_create**](JobTemplatesApi.md#job_template_create) | **POST** /projects/{project_id}/job_templates | Create a job template
[**job_template_delete**](JobTemplatesApi.md#job_template_delete) | **DELETE** /projects/{project_id}/job_templates/{id} | Delete a job template
[**job_template_show**](JobTemplatesApi.md#job_template_show) | **GET** /projects/{project_id}/job_templates/{id} | Get a single job template
[**job_template_update**](JobTemplatesApi.md#job_template_update) | **PATCH** /projects/{project_id}/job_templates/{id} | Update a job template
[**job_templates_list**](JobTemplatesApi.md#job_templates_list) | **GET** /projects/{project_id}/job_templates | List job templates



## job_template_create

> Object job_template_create(project_id, job_template_create_parameters, opts)

Create a job template

Create a new job template.

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

api_instance = Phrase::JobTemplatesApi.new
project_id = 'project_id_example' # String | Project ID
job_template_create_parameters = Phrase::JobTemplateCreateParameters.new # JobTemplateCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a job template
  result = api_instance.job_template_create(project_id, job_template_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobTemplatesApi->job_template_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_template_create_parameters** | [**JobTemplateCreateParameters**](JobTemplateCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_template_delete

> job_template_delete(project_id, id, opts)

Delete a job template

Delete an existing job template.

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

api_instance = Phrase::JobTemplatesApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Delete a job template
  api_instance.job_template_delete(project_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling JobTemplatesApi->job_template_delete: #{e}"
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


## job_template_show

> Object job_template_show(project_id, id, opts)

Get a single job template

Get details on a single job template for a given project.

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

api_instance = Phrase::JobTemplatesApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Get a single job template
  result = api_instance.job_template_show(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobTemplatesApi->job_template_show: #{e}"
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

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## job_template_update

> Object job_template_update(project_id, id, job_template_update_parameters, opts)

Update a job template

Update an existing job template.

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

api_instance = Phrase::JobTemplatesApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
job_template_update_parameters = Phrase::JobTemplateUpdateParameters.new # JobTemplateUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a job template
  result = api_instance.job_template_update(project_id, id, job_template_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobTemplatesApi->job_template_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **job_template_update_parameters** | [**JobTemplateUpdateParameters**](JobTemplateUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_templates_list

> Array&lt;JobTemplate&gt; job_templates_list(project_id, opts)

List job templates

List all job templates for the given project.

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

api_instance = Phrase::JobTemplatesApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | allows you to specify a page size up to 100 items, 25 by default
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #List job templates
  result = api_instance.job_templates_list(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobTemplatesApi->job_templates_list: #{e}"
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

### Return type

Response<([**Array&lt;JobTemplate&gt;**](JobTemplate.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

