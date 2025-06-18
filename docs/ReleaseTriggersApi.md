# Phrase::ReleaseTriggersApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**release_triggers_create**](ReleaseTriggersApi.md#release_triggers_create) | **POST** /accounts/{account_id}/distributions/{distribution_id}/release_triggers | Create a release trigger
[**release_triggers_destroy**](ReleaseTriggersApi.md#release_triggers_destroy) | **DELETE** /accounts/{account_id}/distributions/{distribution_id}/release_triggers/{id} | Delete a single release trigger
[**release_triggers_list**](ReleaseTriggersApi.md#release_triggers_list) | **GET** /accounts/{account_id}/distributions/{distribution_id}/release_triggers | List release triggers
[**release_triggers_show**](ReleaseTriggersApi.md#release_triggers_show) | **GET** /accounts/{account_id}/distributions/{distribution_id}/release_triggers/{id} | Get a single release trigger
[**release_triggers_update**](ReleaseTriggersApi.md#release_triggers_update) | **PATCH** /accounts/{account_id}/distributions/{distribution_id}/release_triggers/{id} | Update a release trigger



## release_triggers_create

> ReleaseTrigger release_triggers_create(account_id, distribution_id, release_create_parameters1, opts)

Create a release trigger

Create a new recurring release. New releases will be published automatically, based on the cron schedule provided. Currently, only one release trigger can exist per distribution.

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

api_instance = Phrase::ReleaseTriggersApi.new
account_id = 'account_id_example' # String | Account ID
distribution_id = 'distribution_id_example' # String | Distribution ID
release_create_parameters1 = Phrase::ReleaseCreateParameters1.new # ReleaseCreateParameters1 | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a release trigger
  result = api_instance.release_triggers_create(account_id, distribution_id, release_create_parameters1, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ReleaseTriggersApi->release_triggers_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **distribution_id** | **String**| Distribution ID | 
 **release_create_parameters1** | [**ReleaseCreateParameters1**](ReleaseCreateParameters1.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**ReleaseTrigger**](ReleaseTrigger.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## release_triggers_destroy

> release_triggers_destroy(account_id, distribution_id, id, opts)

Delete a single release trigger

Delete a single release trigger.

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

api_instance = Phrase::ReleaseTriggersApi.new
account_id = 'account_id_example' # String | Account ID
distribution_id = 'distribution_id_example' # String | Distribution ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a single release trigger
  api_instance.release_triggers_destroy(account_id, distribution_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling ReleaseTriggersApi->release_triggers_destroy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **distribution_id** | **String**| Distribution ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## release_triggers_list

> Array&lt;ReleaseTrigger&gt; release_triggers_list(account_id, distribution_id, opts)

List release triggers

List all release triggers for the given distribution.  Note: Currently only one release trigger can exist per distribution. 

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

api_instance = Phrase::ReleaseTriggersApi.new
account_id = 'account_id_example' # String | Account ID
distribution_id = 'distribution_id_example' # String | Distribution ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #List release triggers
  result = api_instance.release_triggers_list(account_id, distribution_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ReleaseTriggersApi->release_triggers_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **distribution_id** | **String**| Distribution ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Array&lt;ReleaseTrigger&gt;**](ReleaseTrigger.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## release_triggers_show

> ReleaseTrigger release_triggers_show(account_id, distribution_id, id, opts)

Get a single release trigger

Get details of a single release trigger.

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

api_instance = Phrase::ReleaseTriggersApi.new
account_id = 'account_id_example' # String | Account ID
distribution_id = 'distribution_id_example' # String | Distribution ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single release trigger
  result = api_instance.release_triggers_show(account_id, distribution_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ReleaseTriggersApi->release_triggers_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **distribution_id** | **String**| Distribution ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**ReleaseTrigger**](ReleaseTrigger.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## release_triggers_update

> ReleaseTrigger release_triggers_update(account_id, distribution_id, id, release_update_parameters1, opts)

Update a release trigger

Update a recurring release.

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

api_instance = Phrase::ReleaseTriggersApi.new
account_id = 'account_id_example' # String | Account ID
distribution_id = 'distribution_id_example' # String | Distribution ID
id = 'id_example' # String | ID
release_update_parameters1 = Phrase::ReleaseUpdateParameters1.new # ReleaseUpdateParameters1 | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a release trigger
  result = api_instance.release_triggers_update(account_id, distribution_id, id, release_update_parameters1, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ReleaseTriggersApi->release_triggers_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **distribution_id** | **String**| Distribution ID | 
 **id** | **String**| ID | 
 **release_update_parameters1** | [**ReleaseUpdateParameters1**](ReleaseUpdateParameters1.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**ReleaseTrigger**](ReleaseTrigger.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

