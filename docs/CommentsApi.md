# Phrase::CommentsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**comment_create**](CommentsApi.md#comment_create) | **POST** /projects/{project_id}/keys/{key_id}/comments | Create a comment
[**comment_delete**](CommentsApi.md#comment_delete) | **DELETE** /projects/{project_id}/keys/{key_id}/comments/{id} | Delete a comment
[**comment_mark_check**](CommentsApi.md#comment_mark_check) | **GET** /projects/{project_id}/keys/{key_id}/comments/{id}/read | Check if comment is read
[**comment_mark_read**](CommentsApi.md#comment_mark_read) | **PATCH** /projects/{project_id}/keys/{key_id}/comments/{id}/read | Mark a comment as read
[**comment_mark_unread**](CommentsApi.md#comment_mark_unread) | **DELETE** /projects/{project_id}/keys/{key_id}/comments/{id}/read | Mark a comment as unread
[**comment_show**](CommentsApi.md#comment_show) | **GET** /projects/{project_id}/keys/{key_id}/comments/{id} | Get a single comment
[**comment_update**](CommentsApi.md#comment_update) | **PATCH** /projects/{project_id}/keys/{key_id}/comments/{id} | Update a comment
[**comments_list**](CommentsApi.md#comments_list) | **GET** /projects/{project_id}/keys/{key_id}/comments | List comments



## comment_create

> comment_create(project_id, key_id, comment_create_parameters, opts)

Create a comment

Create a new comment for a key.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::CommentsApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
comment_create_parameters = Phrase::CommentCreateParameters.new # CommentCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a comment
  api_instance.comment_create(project_id, key_id, comment_create_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling CommentsApi->comment_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **comment_create_parameters** | [**CommentCreateParameters**](CommentCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## comment_delete

> comment_delete(project_id, key_id, id, comment_delete_parameters, opts)

Delete a comment

Delete an existing comment.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::CommentsApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
id = 'id_example' # String | ID
comment_delete_parameters = Phrase::CommentDeleteParameters.new # CommentDeleteParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a comment
  api_instance.comment_delete(project_id, key_id, id, comment_delete_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling CommentsApi->comment_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **id** | **String**| ID | 
 **comment_delete_parameters** | [**CommentDeleteParameters**](CommentDeleteParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## comment_mark_check

> comment_mark_check(project_id, key_id, id, comment_mark_check_parameters, opts)

Check if comment is read

Check if comment was marked as read. Returns 204 if read, 404 if unread.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::CommentsApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
id = 'id_example' # String | ID
comment_mark_check_parameters = Phrase::CommentMarkCheckParameters.new # CommentMarkCheckParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Check if comment is read
  api_instance.comment_mark_check(project_id, key_id, id, comment_mark_check_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling CommentsApi->comment_mark_check: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **id** | **String**| ID | 
 **comment_mark_check_parameters** | [**CommentMarkCheckParameters**](CommentMarkCheckParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## comment_mark_read

> comment_mark_read(project_id, key_id, id, comment_mark_read_parameters, opts)

Mark a comment as read

Mark a comment as read.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::CommentsApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
id = 'id_example' # String | ID
comment_mark_read_parameters = Phrase::CommentMarkReadParameters.new # CommentMarkReadParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Mark a comment as read
  api_instance.comment_mark_read(project_id, key_id, id, comment_mark_read_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling CommentsApi->comment_mark_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **id** | **String**| ID | 
 **comment_mark_read_parameters** | [**CommentMarkReadParameters**](CommentMarkReadParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## comment_mark_unread

> comment_mark_unread(project_id, key_id, id, comment_mark_unread_parameters, opts)

Mark a comment as unread

Mark a comment as unread.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::CommentsApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
id = 'id_example' # String | ID
comment_mark_unread_parameters = Phrase::CommentMarkUnreadParameters.new # CommentMarkUnreadParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Mark a comment as unread
  api_instance.comment_mark_unread(project_id, key_id, id, comment_mark_unread_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling CommentsApi->comment_mark_unread: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **id** | **String**| ID | 
 **comment_mark_unread_parameters** | [**CommentMarkUnreadParameters**](CommentMarkUnreadParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## comment_show

> Comment comment_show(project_id, key_id, id, comment_show_parameters, opts)

Get a single comment

Get details on a single comment.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::CommentsApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
id = 'id_example' # String | ID
comment_show_parameters = Phrase::CommentShowParameters.new # CommentShowParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single comment
  result = api_instance.comment_show(project_id, key_id, id, comment_show_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling CommentsApi->comment_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **id** | **String**| ID | 
 **comment_show_parameters** | [**CommentShowParameters**](CommentShowParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Comment**](Comment.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## comment_update

> Comment comment_update(project_id, key_id, id, comment_update_parameters, opts)

Update a comment

Update an existing comment.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::CommentsApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
id = 'id_example' # String | ID
comment_update_parameters = Phrase::CommentUpdateParameters.new # CommentUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a comment
  result = api_instance.comment_update(project_id, key_id, id, comment_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling CommentsApi->comment_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **id** | **String**| ID | 
 **comment_update_parameters** | [**CommentUpdateParameters**](CommentUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Comment**](Comment.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## comments_list

> Array&lt;Comment&gt; comments_list(project_id, key_id, comments_list_parameters, opts)

List comments

List all comments for a key.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::CommentsApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
comments_list_parameters = Phrase::CommentsListParameters.new # CommentsListParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List comments
  result = api_instance.comments_list(project_id, key_id, comments_list_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling CommentsApi->comments_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **comments_list_parameters** | [**CommentsListParameters**](CommentsListParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<([**Array&lt;Comment&gt;**](Comment.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

