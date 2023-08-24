# Phrase::CommentReactionsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reaction_create**](CommentReactionsApi.md#reaction_create) | **POST** /projects/{project_id}/keys/{key_id}/comments/{comment_id}/reactions | Create a reaction
[**reaction_delete**](CommentReactionsApi.md#reaction_delete) | **DELETE** /projects/{project_id}/keys/{key_id}/comments/{comment_id}/reactions/{id} | Delete a reaction
[**reaction_show**](CommentReactionsApi.md#reaction_show) | **GET** /projects/{project_id}/keys/{key_id}/comments/{comment_id}/reactions/{id} | Get a single reaction
[**reactions_list**](CommentReactionsApi.md#reactions_list) | **GET** /projects/{project_id}/keys/{key_id}/comments/{comment_id}/reactions | List reactions



## reaction_create

> CommentReaction reaction_create(project_id, key_id, comment_id, opts)

Create a reaction

Create a new reaction for a comment.

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

api_instance = Phrase::CommentReactionsApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
comment_id = 'comment_id_example' # String | Comment ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch', # String | specify the branch to use
  emoji: '👍' # String | specify the emoji for the reaction
}

begin
  #Create a reaction
  result = api_instance.reaction_create(project_id, key_id, comment_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling CommentReactionsApi->reaction_create: #{e}"
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
 **emoji** | **String**| specify the emoji for the reaction | [optional] 

### Return type

Response<([**CommentReaction**](CommentReaction.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reaction_delete

> reaction_delete(project_id, key_id, comment_id, id, opts)

Delete a reaction

Delete an existing reaction.

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

api_instance = Phrase::CommentReactionsApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
comment_id = 'comment_id_example' # String | Comment ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Delete a reaction
  api_instance.reaction_delete(project_id, key_id, comment_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling CommentReactionsApi->reaction_delete: #{e}"
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


## reaction_show

> CommentReaction reaction_show(project_id, key_id, comment_id, id, opts)

Get a single reaction

Get details on a single reaction.

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

api_instance = Phrase::CommentReactionsApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
comment_id = 'comment_id_example' # String | Comment ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Get a single reaction
  result = api_instance.reaction_show(project_id, key_id, comment_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling CommentReactionsApi->reaction_show: #{e}"
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

Response<([**CommentReaction**](CommentReaction.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reactions_list

> Array&lt;CommentReaction&gt; reactions_list(project_id, key_id, comment_id, opts)

List reactions

List all reactions for a comment.

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

api_instance = Phrase::CommentReactionsApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
comment_id = 'comment_id_example' # String | Comment ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #List reactions
  result = api_instance.reactions_list(project_id, key_id, comment_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling CommentReactionsApi->reactions_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **comment_id** | **String**| Comment ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**Array&lt;CommentReaction&gt;**](CommentReaction.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

