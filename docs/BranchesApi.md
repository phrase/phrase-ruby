# Phrase::BranchesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**branch_compare**](BranchesApi.md#branch_compare) | **GET** /projects/{project_id}/branches/{name}/compare | Compare branches
[**branch_comparison_create**](BranchesApi.md#branch_comparison_create) | **POST** /projects/{project_id}/branches/{name}/compare | Create comparison (async.)
[**branch_create**](BranchesApi.md#branch_create) | **POST** /projects/{project_id}/branches | Create a branch
[**branch_delete**](BranchesApi.md#branch_delete) | **DELETE** /projects/{project_id}/branches/{name} | Delete a branch
[**branch_merge**](BranchesApi.md#branch_merge) | **PATCH** /projects/{project_id}/branches/{name}/merge | Merge a branch
[**branch_show**](BranchesApi.md#branch_show) | **GET** /projects/{project_id}/branches/{name} | Get a single branch
[**branch_sync**](BranchesApi.md#branch_sync) | **PATCH** /projects/{project_id}/branches/{name}/sync | Sync a branch
[**branch_update**](BranchesApi.md#branch_update) | **PATCH** /projects/{project_id}/branches/{name} | Update a branch
[**branches_list**](BranchesApi.md#branches_list) | **GET** /projects/{project_id}/branches | List branches



## branch_compare

> BranchComparison branch_compare(project_id, name, opts)

Compare branches

Compare branch with main branch.  *Note: Comparing a branch may take several minutes depending on the project size. Consider using the `POST /compare` endpoint for creating comparison asynchronously.* 

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

api_instance = Phrase::BranchesApi.new
project_id = 'project_id_example' # String | Project ID
name = 'name_example' # String | name
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Compare branches
  result = api_instance.branch_compare(project_id, name, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling BranchesApi->branch_compare: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **name** | **String**| name | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**BranchComparison**](BranchComparison.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## branch_comparison_create

> branch_comparison_create(project_id, name, branch_create_comparison_parameters, opts)

Create comparison (async.)

Create a branch comparison asynchronously. 

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

api_instance = Phrase::BranchesApi.new
project_id = 'project_id_example' # String | Project ID
name = 'name_example' # String | name
branch_create_comparison_parameters = Phrase::BranchCreateComparisonParameters.new # BranchCreateComparisonParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create comparison (async.)
  api_instance.branch_comparison_create(project_id, name, branch_create_comparison_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling BranchesApi->branch_comparison_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **name** | **String**| name | 
 **branch_create_comparison_parameters** | [**BranchCreateComparisonParameters**](BranchCreateComparisonParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## branch_create

> Branch branch_create(project_id, branch_create_parameters, opts)

Create a branch

Create a new branch.  Branch project provisioning runs asynchronously, so the newly created branch is returned in a transitional state (typically `creating_branch`) and only reaches `success` once the underlying project has been set up. Poll the branch resource until its `state` becomes `success` before performing further operations on it.  Requires the Branching feature to be enabled on the account.  *Note: Creating a new branch may take several minutes depending on the project size.* 

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

api_instance = Phrase::BranchesApi.new
project_id = 'project_id_example' # String | Project ID
branch_create_parameters = Phrase::BranchCreateParameters.new({name: 'my-branch'}) # BranchCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a branch
  result = api_instance.branch_create(project_id, branch_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling BranchesApi->branch_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **branch_create_parameters** | [**BranchCreateParameters**](BranchCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Branch**](Branch.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## branch_delete

> branch_delete(project_id, name, opts)

Delete a branch

Delete an existing branch.  A branch cannot be deleted while it still has open jobs or open translation orders attached to its branch project — in that case the request is rejected with `409 Conflict`. A branch whose current `state` does not allow deletion (for example, while a merge or sync is in progress) is rejected with `422 Unprocessable Entity`.  Requires the Branching feature to be enabled on the account. 

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
- **Accept**: application/json


## branch_merge

> branch_merge(project_id, name, branch_merge_parameters, opts)

Merge a branch

Merge an existing branch back into its base branch.  The merge runs asynchronously. The branch transitions to `merging_branch` and settles in `merged`, `merge_error`, or `merge_conflict` once the background job completes; the response body for this request is empty. Poll the branch resource to observe the final state.  A branch cannot be merged while it still has open jobs or open translation orders attached to its branch project — in that case the request is rejected with `409 Conflict`. A branch whose current `state` does not allow a merge is rejected with `422 Unprocessable Entity`.  Requires the Branching feature to be enabled on the account.  *Note: Merging a branch may take several minutes depending on diff size.* 

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

api_instance = Phrase::BranchesApi.new
project_id = 'project_id_example' # String | Project ID
name = 'name_example' # String | name
branch_merge_parameters = Phrase::BranchMergeParameters.new # BranchMergeParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Merge a branch
  api_instance.branch_merge(project_id, name, branch_merge_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling BranchesApi->branch_merge: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **name** | **String**| name | 
 **branch_merge_parameters** | [**BranchMergeParameters**](BranchMergeParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## branch_show

> Branch branch_show(project_id, name, opts)

Get a single branch

Get details on a single branch for a given project.  Requires the Branching feature to be enabled on the account. 

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


## branch_sync

> branch_sync(project_id, name, branch_sync_parameters, opts)

Sync a branch

Pull changes from the base branch into this branch, applying the chosen conflict-resolution strategy.  The sync runs asynchronously. The branch transitions to `syncing_branch` and settles back into `success` (or `merge_conflict` / `branch_error`) once the background job completes; the response body for this request is empty. Poll the branch resource to observe the final state.  Only branches created with the newer branching system can be synced. Requests against branches from the older system, or against branches whose current state does not allow a sync, are rejected with `422 Unprocessable Entity` and an empty body.  Requires the Branching feature to be enabled on the account. 

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

api_instance = Phrase::BranchesApi.new
project_id = 'project_id_example' # String | Project ID
name = 'name_example' # String | name
branch_sync_parameters = Phrase::BranchSyncParameters.new # BranchSyncParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Sync a branch
  api_instance.branch_sync(project_id, name, branch_sync_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling BranchesApi->branch_sync: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **name** | **String**| name | 
 **branch_sync_parameters** | [**BranchSyncParameters**](BranchSyncParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## branch_update

> Branch branch_update(project_id, name, branch_update_parameters, opts)

Update a branch

Update an existing branch. Only the branch name can be changed.  Requires the Branching feature to be enabled on the account. 

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

api_instance = Phrase::BranchesApi.new
project_id = 'project_id_example' # String | Project ID
name = 'name_example' # String | name
branch_update_parameters = Phrase::BranchUpdateParameters.new # BranchUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a branch
  result = api_instance.branch_update(project_id, name, branch_update_parameters, opts)
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
 **branch_update_parameters** | [**BranchUpdateParameters**](BranchUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Branch**](Branch.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## branches_list

> Array&lt;Branch&gt; branches_list(project_id, opts)

List branches

List all branches of the current project.  Requires the Branching feature to be enabled on the account. 

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

api_instance = Phrase::BranchesApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
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
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 

### Return type

Response<([**Array&lt;Branch&gt;**](Branch.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

