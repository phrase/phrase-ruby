# Phrase::CommentRepliesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**replies_list**](CommentRepliesApi.md#replies_list) | **GET** /projects/{project_id}/keys/{key_id}/comments/{comment_id}/replies | List replies
[**reply_create**](CommentRepliesApi.md#reply_create) | **POST** /projects/{project_id}/keys/{key_id}/comments/{comment_id}/replies | Create a reply
[**reply_delete**](CommentRepliesApi.md#reply_delete) | **DELETE** /projects/{project_id}/keys/{key_id}/comments/{comment_id}/replies/{id} | Delete a reply
[**reply_mark_as_read**](CommentRepliesApi.md#reply_mark_as_read) | **PATCH** /projects/{project_id}/keys/{key_id}/comments/{comment_id}/replies/{id}/mark_as_read | Mark a reply as read
[**reply_mark_as_unread**](CommentRepliesApi.md#reply_mark_as_unread) | **PATCH** /projects/{project_id}/keys/{key_id}/comments/{comment_id}/replies/{id}/mark_as_unread | Mark a reply as unread
[**reply_show**](CommentRepliesApi.md#reply_show) | **GET** /projects/{project_id}/keys/{key_id}/comments/{comment_id}/replies/{id} | Get a single reply



## replies_list

> Array&lt;Comment&gt; replies_list(project_id, key_id, comment_id, replies_list_parameters, opts)

List replies

List all replies for a comment.

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

api_instance = Phrase::CommentRepliesApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
comment_id = 'comment_id_example' # String | Comment ID
replies_list_parameters = Phrase::RepliesListParameters.new # RepliesListParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
  branch: 'my-feature-branch', # String | specify the branch to use
  query: 'Some comment content', # String | Search query for comment messages
  filters: ['inner_example'], # Array<String> | Specify the filter for the comments
  order: 'desc' # String | Order direction. Can be one of: asc, desc.
}

begin
  #List replies
  result = api_instance.replies_list(project_id, key_id, comment_id, replies_list_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling CommentRepliesApi->replies_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **comment_id** | **String**| Comment ID | 
 **replies_list_parameters** | [**RepliesListParameters**](RepliesListParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 
 **query** | **String**| Search query for comment messages | [optional] 
 **filters** | [**Array&lt;String&gt;**](String.md)| Specify the filter for the comments | [optional] 
 **order** | **String**| Order direction. Can be one of: asc, desc. | [optional] 

### Return type

Response<([**Array&lt;Comment&gt;**](Comment.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reply_create

> Comment reply_create(project_id, key_id, comment_id, opts)

Create a reply

Create a new reply for a comment.

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

api_instance = Phrase::CommentRepliesApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
comment_id = 'comment_id_example' # String | Comment ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch', # String | specify the branch to use
  message: 'some message...' # String | specify the message for the comment
}

begin
  #Create a reply
  result = api_instance.reply_create(project_id, key_id, comment_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling CommentRepliesApi->reply_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **comment_id** | **String**| Comment ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 
 **message** | **String**| specify the message for the comment | [optional] 

### Return type

Response<([**Comment**](Comment.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reply_delete

> reply_delete(project_id, key_id, comment_id, id, opts)

Delete a reply

Delete an existing reply.

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

api_instance = Phrase::CommentRepliesApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
comment_id = 'comment_id_example' # String | Comment ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Delete a reply
  api_instance.reply_delete(project_id, key_id, comment_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling CommentRepliesApi->reply_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **comment_id** | **String**| Comment ID | 
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


## reply_mark_as_read

> reply_mark_as_read(project_id, key_id, comment_id, id, opts)

Mark a reply as read

Mark a reply as read.

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

api_instance = Phrase::CommentRepliesApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
comment_id = 'comment_id_example' # String | Comment ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Mark a reply as read
  api_instance.reply_mark_as_read(project_id, key_id, comment_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling CommentRepliesApi->reply_mark_as_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **comment_id** | **String**| Comment ID | 
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


## reply_mark_as_unread

> reply_mark_as_unread(project_id, key_id, comment_id, id, opts)

Mark a reply as unread

Mark a reply as unread.

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

api_instance = Phrase::CommentRepliesApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
comment_id = 'comment_id_example' # String | Comment ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Mark a reply as unread
  api_instance.reply_mark_as_unread(project_id, key_id, comment_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling CommentRepliesApi->reply_mark_as_unread: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **comment_id** | **String**| Comment ID | 
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


## reply_show

> Comment reply_show(project_id, key_id, comment_id, id, opts)

Get a single reply

Get details on a single reply.

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

api_instance = Phrase::CommentRepliesApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
comment_id = 'comment_id_example' # String | Comment ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Get a single reply
  result = api_instance.reply_show(project_id, key_id, comment_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling CommentRepliesApi->reply_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **comment_id** | **String**| Comment ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**Comment**](Comment.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

