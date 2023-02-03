# Phrase::JobCommentsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**job_comment_create**](JobCommentsApi.md#job_comment_create) | **POST** /projects/{project_id}/jobs/{job_id}/comments | Create a job comment
[**job_comment_delete**](JobCommentsApi.md#job_comment_delete) | **DELETE** /projects/{project_id}/jobs/{job_id}/comments/{id} | Delete a job comment
[**job_comment_show**](JobCommentsApi.md#job_comment_show) | **GET** /projects/{project_id}/jobs/{job_id}/comments/{id} | Get a single job comment
[**job_comment_update**](JobCommentsApi.md#job_comment_update) | **PATCH** /projects/{project_id}/jobs/{job_id}/comments/{id} | Update a job comment
[**job_comments_list**](JobCommentsApi.md#job_comments_list) | **GET** /projects/{project_id}/jobs/{job_id}/comments | List job comments



## job_comment_create

> JobComment job_comment_create(project_id, job_id, job_comment_create_parameters, opts)

Create a job comment

Create a new comment for a job.

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

api_instance = Phrase::JobCommentsApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
job_comment_create_parameters = Phrase::JobCommentCreateParameters.new # JobCommentCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a job comment
  result = api_instance.job_comment_create(project_id, job_id, job_comment_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobCommentsApi->job_comment_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **job_comment_create_parameters** | [**JobCommentCreateParameters**](JobCommentCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobComment**](JobComment.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_comment_delete

> job_comment_delete(project_id, job_id, id, opts)

Delete a job comment

Delete an existing job comment.

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

api_instance = Phrase::JobCommentsApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Delete a job comment
  api_instance.job_comment_delete(project_id, job_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling JobCommentsApi->job_comment_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
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


## job_comment_show

> JobComment job_comment_show(project_id, job_id, id, opts)

Get a single job comment

Get details on a single job comment.

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

api_instance = Phrase::JobCommentsApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Get a single job comment
  result = api_instance.job_comment_show(project_id, job_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobCommentsApi->job_comment_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**JobComment**](JobComment.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## job_comment_update

> JobComment job_comment_update(project_id, key_id, id, job_comment_update_parameters, opts)

Update a job comment

Update an existing job comment.

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

api_instance = Phrase::JobCommentsApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
id = 'id_example' # String | ID
job_comment_update_parameters = Phrase::JobCommentUpdateParameters.new # JobCommentUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a job comment
  result = api_instance.job_comment_update(project_id, key_id, id, job_comment_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobCommentsApi->job_comment_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **id** | **String**| ID | 
 **job_comment_update_parameters** | [**JobCommentUpdateParameters**](JobCommentUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobComment**](JobComment.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_comments_list

> Array&lt;JobComment&gt; job_comments_list(project_id, job_id, opts)

List job comments

List all comments for a job.

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

api_instance = Phrase::JobCommentsApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #List job comments
  result = api_instance.job_comments_list(project_id, job_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobCommentsApi->job_comments_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**Array&lt;JobComment&gt;**](JobComment.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

