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

Create a new project in the given account.  When `source_project_id` is supplied, the new project is created as a clone of that project. All locales, keys, and translations are copied asynchronously after the response is returned, so they may not be available immediately. Settings from the source project are inherited unless explicitly overridden in the request; in clone mode, the `shares_translation_memory` field is ignored and inherited from the source.  `shares_translation_memory` defaults to `true` when omitted on a non-clone create. 

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
project_create_parameters = Phrase::ProjectCreateParameters.new({name: 'My Android Project'}) # ProjectCreateParameters | 
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

Delete an existing project. Associated repository syncs and OTA distributions are removed. A `project:delete` event is dispatched. 

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
- **Accept**: application/json


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

List all projects the current user has access to.  When the `account_id` query parameter is omitted, the response includes projects across every account the user is a member of. Pass `account_id` to scope the results to a single account. 

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
  sort_by: 'name_asc', # String | Sort projects. Valid values are `name_asc`, `name_desc`, `updated_at_asc`, `updated_at_desc`, `space_asc`, and `space_desc`. The trailing direction segment is optional; if omitted or invalid, projects are sorted ascending. Any other value is ignored and the default ordering is returned.
  filters: ['favorites'], # Array<String> | Filter projects. The only supported value is `favorites`, which restricts the results to projects the current user has starred.
  q: 'name:android' # String | Search query. The only supported syntax is `name:<text>` — for example `name:android` returns projects whose name matches `android` (case-insensitive substring). Any value that does not match the `name:` prefix is ignored.
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
 **sort_by** | **String**| Sort projects. Valid values are &#x60;name_asc&#x60;, &#x60;name_desc&#x60;, &#x60;updated_at_asc&#x60;, &#x60;updated_at_desc&#x60;, &#x60;space_asc&#x60;, and &#x60;space_desc&#x60;. The trailing direction segment is optional; if omitted or invalid, projects are sorted ascending. Any other value is ignored and the default ordering is returned. | [optional] 
 **filters** | [**Array&lt;String&gt;**](String.md)| Filter projects. The only supported value is &#x60;favorites&#x60;, which restricts the results to projects the current user has starred. | [optional] 
 **q** | **String**| Search query. The only supported syntax is &#x60;name:&lt;text&gt;&#x60; — for example &#x60;name:android&#x60; returns projects whose name matches &#x60;android&#x60; (case-insensitive substring). Any value that does not match the &#x60;name:&#x60; prefix is ignored. | [optional] 

### Return type

Response<([**Array&lt;Project&gt;**](Project.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

