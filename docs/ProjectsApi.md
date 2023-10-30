# Phrase::ProjectsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**project_create**](ProjectsApi.md#project_create) | **POST** /projects | Create a project
[**project_delete**](ProjectsApi.md#project_delete) | **DELETE** /projects/{id} | Delete a project
[**project_show**](ProjectsApi.md#project_show) | **GET** /projects/{id} | Get a single project
[**project_update**](ProjectsApi.md#project_update) | **PATCH** /projects/{id} | Update a project
[**projects_list**](ProjectsApi.md#projects_list) | **GET** /projects | List projects



## project_create

> ProjectDetails project_create(project_create_parameters, opts)

Create a project

Create a new project.

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

api_instance = Phrase::ProjectsApi.new
project_create_parameters = Phrase::ProjectCreateParameters.new # ProjectCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a project
  result = api_instance.project_create(project_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ProjectsApi->project_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_create_parameters** | [**ProjectCreateParameters**](ProjectCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**ProjectDetails**](ProjectDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## project_delete

> project_delete(id, opts)

Delete a project

Delete an existing project.

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

api_instance = Phrase::ProjectsApi.new
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a project
  api_instance.project_delete(id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling ProjectsApi->project_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## project_show

> ProjectDetails project_show(id, opts)

Get a single project

Get details on a single project.

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

api_instance = Phrase::ProjectsApi.new
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single project
  result = api_instance.project_show(id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ProjectsApi->project_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**ProjectDetails**](ProjectDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## project_update

> ProjectDetails project_update(id, project_update_parameters, opts)

Update a project

Update an existing project.

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

api_instance = Phrase::ProjectsApi.new
id = 'id_example' # String | ID
project_update_parameters = Phrase::ProjectUpdateParameters.new # ProjectUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a project
  result = api_instance.project_update(id, project_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ProjectsApi->project_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 
 **project_update_parameters** | [**ProjectUpdateParameters**](ProjectUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**ProjectDetails**](ProjectDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## projects_list

> Array&lt;Project&gt; projects_list(opts)

List projects

List all projects the current user has access to.

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

api_instance = Phrase::ProjectsApi.new
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
  account_id: 'account_id_example', # String | Filter by Account ID
  sort_by: 'sort_by_example', # String | Sort projects. Valid options are \"name_asc\", \"name_desc\", \"updated_at_asc\", \"updated_at_desc\", \"space_asc\" and \"space_desc\".
  filters: ['inner_example'] # Array<String> | Filter projects. Valid options are [\"favorites\"].
}

begin
  #List projects
  result = api_instance.projects_list(opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ProjectsApi->projects_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 
 **account_id** | **String**| Filter by Account ID | [optional] 
 **sort_by** | **String**| Sort projects. Valid options are \&quot;name_asc\&quot;, \&quot;name_desc\&quot;, \&quot;updated_at_asc\&quot;, \&quot;updated_at_desc\&quot;, \&quot;space_asc\&quot; and \&quot;space_desc\&quot;. | [optional] 
 **filters** | [**Array&lt;String&gt;**](String.md)| Filter projects. Valid options are [\&quot;favorites\&quot;]. | [optional] 

### Return type

Response<([**Array&lt;Project&gt;**](Project.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

