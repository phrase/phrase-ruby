# Phrase::NotificationsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notifications_list**](NotificationsApi.md#notifications_list) | **GET** /notifications | List notifications
[**notifications_mark_all_as_read**](NotificationsApi.md#notifications_mark_all_as_read) | **POST** /notifications/mark_all_as_read | Mark all notifications as read
[**notifications_show**](NotificationsApi.md#notifications_show) | **GET** /notifications/{id} | Get a single notification



## notifications_list

> Array&lt;Notification&gt; notifications_list(opts)

List notifications

List all notifications from the current user

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

api_instance = Phrase::NotificationsApi.new
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
  unseen: true # Boolean | Include only unseen notifications
}

begin
  #List notifications
  result = api_instance.notifications_list(opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling NotificationsApi->notifications_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 
 **unseen** | **Boolean**| Include only unseen notifications | [optional] 

### Return type

Response<([**Array&lt;Notification&gt;**](Notification.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## notifications_mark_all_as_read

> Array&lt;Notification&gt; notifications_mark_all_as_read(opts)

Mark all notifications as read

Mark all notifications of the current user as read

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

api_instance = Phrase::NotificationsApi.new
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Mark all notifications as read
  result = api_instance.notifications_mark_all_as_read(opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling NotificationsApi->notifications_mark_all_as_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Array&lt;Notification&gt;**](Notification.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## notifications_show

> Notification notifications_show(id, opts)

Get a single notification

Get details on a single notification.

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

api_instance = Phrase::NotificationsApi.new
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single notification
  result = api_instance.notifications_show(id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling NotificationsApi->notifications_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Notification**](Notification.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

