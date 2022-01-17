# Phrase::ReleasesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**release_create**](ReleasesApi.md#release_create) | **POST** /accounts/{account_id}/distributions/{distribution_id}/releases | Create a release
[**release_delete**](ReleasesApi.md#release_delete) | **DELETE** /accounts/{account_id}/distributions/{distribution_id}/releases/{id} | Delete a release
[**release_publish**](ReleasesApi.md#release_publish) | **POST** /accounts/{account_id}/distributions/{distribution_id}/releases/{id}/publish | Publish a release
[**release_show**](ReleasesApi.md#release_show) | **GET** /accounts/{account_id}/distributions/{distribution_id}/releases/{id} | Get a single release
[**release_update**](ReleasesApi.md#release_update) | **PATCH** /accounts/{account_id}/distributions/{distribution_id}/releases/{id} | Update a release
[**releases_list**](ReleasesApi.md#releases_list) | **GET** /accounts/{account_id}/distributions/{distribution_id}/releases | List releases



## release_create

> Release release_create(account_id, distribution_id, release_create_parameters, opts)

Create a release

Create a new release.

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

api_instance = Phrase::ReleasesApi.new
account_id = 'account_id_example' # String | Account ID
distribution_id = 'distribution_id_example' # String | Distribution ID
release_create_parameters = Phrase::ReleaseCreateParameters.new # ReleaseCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a release
  result = api_instance.release_create(account_id, distribution_id, release_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ReleasesApi->release_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **distribution_id** | **String**| Distribution ID | 
 **release_create_parameters** | [**ReleaseCreateParameters**](ReleaseCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Release**](Release.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## release_delete

> release_delete(account_id, distribution_id, id, opts)

Delete a release

Delete an existing release.

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

api_instance = Phrase::ReleasesApi.new
account_id = 'account_id_example' # String | Account ID
distribution_id = 'distribution_id_example' # String | Distribution ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a release
  api_instance.release_delete(account_id, distribution_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling ReleasesApi->release_delete: #{e}"
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


## release_publish

> Release release_publish(account_id, distribution_id, id, opts)

Publish a release

Publish a release for production.

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

api_instance = Phrase::ReleasesApi.new
account_id = 'account_id_example' # String | Account ID
distribution_id = 'distribution_id_example' # String | Distribution ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Publish a release
  result = api_instance.release_publish(account_id, distribution_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ReleasesApi->release_publish: #{e}"
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

Response<([**Release**](Release.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## release_show

> Release release_show(account_id, distribution_id, id, opts)

Get a single release

Get details on a single release.

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

api_instance = Phrase::ReleasesApi.new
account_id = 'account_id_example' # String | Account ID
distribution_id = 'distribution_id_example' # String | Distribution ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single release
  result = api_instance.release_show(account_id, distribution_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ReleasesApi->release_show: #{e}"
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

Response<([**Release**](Release.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## release_update

> Release release_update(account_id, distribution_id, id, release_update_parameters, opts)

Update a release

Update an existing release.

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

api_instance = Phrase::ReleasesApi.new
account_id = 'account_id_example' # String | Account ID
distribution_id = 'distribution_id_example' # String | Distribution ID
id = 'id_example' # String | ID
release_update_parameters = Phrase::ReleaseUpdateParameters.new # ReleaseUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a release
  result = api_instance.release_update(account_id, distribution_id, id, release_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ReleasesApi->release_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **distribution_id** | **String**| Distribution ID | 
 **id** | **String**| ID | 
 **release_update_parameters** | [**ReleaseUpdateParameters**](ReleaseUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Release**](Release.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## releases_list

> Array&lt;ReleasePreview&gt; releases_list(account_id, distribution_id, opts)

List releases

List all releases for the given distribution.

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

api_instance = Phrase::ReleasesApi.new
account_id = 'account_id_example' # String | Account ID
distribution_id = 'distribution_id_example' # String | Distribution ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | allows you to specify a page size up to 100 items, 25 by default
}

begin
  #List releases
  result = api_instance.releases_list(account_id, distribution_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ReleasesApi->releases_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **distribution_id** | **String**| Distribution ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 25 by default | [optional] 

### Return type

Response<([**Array&lt;ReleasePreview&gt;**](ReleasePreview.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

