# Phrase::NotificationGroupsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notification_groups_list**](NotificationGroupsApi.md#notification_groups_list) | **GET** /notification_groups | List notification groups
[**notification_groups_mark_all_as_read**](NotificationGroupsApi.md#notification_groups_mark_all_as_read) | **PATCH** /notification_groups/mark_all_as_read | Mark all notification groups as read
[**notification_groups_mark_as_read**](NotificationGroupsApi.md#notification_groups_mark_as_read) | **PATCH** /notification_groups/{id}/mark_as_read | Mark a notification group as read



## notification_groups_list

> Array&lt;Object&gt; notification_groups_list(opts)

List notification groups

List all notification groups from the current user

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

api_instance = Phrase::NotificationGroupsApi.new
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
}

begin
  #List notification groups
  result = api_instance.notification_groups_list(opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling NotificationGroupsApi->notification_groups_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 

### Return type

Response<(**Array&lt;Object&gt;**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## notification_groups_mark_all_as_read

> Array&lt;Object&gt; notification_groups_mark_all_as_read(opts)

Mark all notification groups as read

Mark all notification groups of the current user as read

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

api_instance = Phrase::NotificationGroupsApi.new
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Mark all notification groups as read
  result = api_instance.notification_groups_mark_all_as_read(opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling NotificationGroupsApi->notification_groups_mark_all_as_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Array&lt;Object&gt;**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## notification_groups_mark_as_read

> NotificationGroupDetail notification_groups_mark_as_read(id, opts)

Mark a notification group as read

Mark a notifications group of the current user as read

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

api_instance = Phrase::NotificationGroupsApi.new
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Mark a notification group as read
  result = api_instance.notification_groups_mark_as_read(id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling NotificationGroupsApi->notification_groups_mark_as_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**NotificationGroupDetail**](NotificationGroupDetail.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

