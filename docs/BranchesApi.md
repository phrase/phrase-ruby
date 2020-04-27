# Phrase::BranchesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**branch_compare**](BranchesApi.md#branch_compare) | **GET** /projects/{project_id}/branches/{name}/compare | Compare branches
[**branch_create**](BranchesApi.md#branch_create) | **POST** /projects/{project_id}/branches | Create a branch
[**branch_delete**](BranchesApi.md#branch_delete) | **DELETE** /projects/{project_id}/branches/{name} | Delete a branch
[**branch_merge**](BranchesApi.md#branch_merge) | **PATCH** /projects/{project_id}/branches/{name}/merge | Merge a branch
[**branch_show**](BranchesApi.md#branch_show) | **GET** /projects/{project_id}/branches/{name} | Get a single branch
[**branch_update**](BranchesApi.md#branch_update) | **PATCH** /projects/{project_id}/branches/{name} | Update a branch
[**branches_list**](BranchesApi.md#branches_list) | **GET** /projects/{project_id}/branches | List branches



## branch_compare

> branch_compare(project_id, name, branch_compare, opts)

Compare branches

Compare branch with main branch.

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

api_instance = Phrase::BranchesApi.new
project_id = 'project_id_example' # String | Project ID
name = 'name_example' # String | name
branch_compare = Phrase::BranchCompare.new # BranchCompare | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Compare branches
  api_instance.branch_compare(project_id, name, branch_compare, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling BranchesApi->branch_compare: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **name** | **String**| name | 
 **branch_compare** | [**BranchCompare**](BranchCompare.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## branch_create

> branch_create(project_id, branch_create, opts)

Create a branch

Create a new branch.

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

api_instance = Phrase::BranchesApi.new
project_id = 'project_id_example' # String | Project ID
branch_create = Phrase::BranchCreate.new # BranchCreate | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a branch
  api_instance.branch_create(project_id, branch_create, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling BranchesApi->branch_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **branch_create** | [**BranchCreate**](BranchCreate.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## branch_delete

> branch_delete(project_id, name, opts)

Delete a branch

Delete an existing branch.

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

api_instance = Phrase::BranchesApi.new
project_id = 'project_id_example' # String | Project ID
name = 'name_example' # String | name
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a branch
  api_instance.branch_delete(project_id, name, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling BranchesApi->branch_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **name** | **String**| name | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## branch_merge

> branch_merge(project_id, name, branch_merge, opts)

Merge a branch

Merge an existing branch.

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

api_instance = Phrase::BranchesApi.new
project_id = 'project_id_example' # String | Project ID
name = 'name_example' # String | name
branch_merge = Phrase::BranchMerge.new # BranchMerge | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Merge a branch
  api_instance.branch_merge(project_id, name, branch_merge, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling BranchesApi->branch_merge: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **name** | **String**| name | 
 **branch_merge** | [**BranchMerge**](BranchMerge.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## branch_show

> Branch branch_show(project_id, name, opts)

Get a single branch

Get details on a single branch for a given project.

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

api_instance = Phrase::BranchesApi.new
project_id = 'project_id_example' # String | Project ID
name = 'name_example' # String | name
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single branch
  result = api_instance.branch_show(project_id, name, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling BranchesApi->branch_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **name** | **String**| name | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Branch**](Branch.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## branch_update

> Object branch_update(project_id, name, branch_update, opts)

Update a branch

Update an existing branch.

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

api_instance = Phrase::BranchesApi.new
project_id = 'project_id_example' # String | Project ID
name = 'name_example' # String | name
branch_update = Phrase::BranchUpdate.new # BranchUpdate | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a branch
  result = api_instance.branch_update(project_id, name, branch_update, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling BranchesApi->branch_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **name** | **String**| name | 
 **branch_update** | [**BranchUpdate**](BranchUpdate.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## branches_list

> Array&lt;Object&gt; branches_list(project_id, opts)

List branches

List all branches the of the current project.

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

api_instance = Phrase::BranchesApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List branches
  result = api_instance.branches_list(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling BranchesApi->branches_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<(**Array&lt;Object&gt;**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

