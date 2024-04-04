# Phrase::LinkedKeysApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**key_links_batch_destroy**](LinkedKeysApi.md#key_links_batch_destroy) | **DELETE** /projects/{project_id}/keys/{id}/key_links | Batch unlink child keys from a parent key
[**key_links_create**](LinkedKeysApi.md#key_links_create) | **POST** /projects/{project_id}/keys/{id}/key_links | Link child keys to a parent key
[**key_links_destroy**](LinkedKeysApi.md#key_links_destroy) | **DELETE** /projects/{project_id}/keys/{id}/key_links/{child_key_id} | Unlink a child key from a parent key
[**key_links_index**](LinkedKeysApi.md#key_links_index) | **GET** /projects/{project_id}/keys/{id}/key_links | Retrieve all child keys linked to a specific parent key



## key_links_batch_destroy

> key_links_batch_destroy(project_id, id, key_links_batch_destroy_parameters, opts)

Batch unlink child keys from a parent key

Unlinks multiple child keys from a given parent key in a single operation.

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

api_instance = Phrase::LinkedKeysApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | Parent Translation Key ID
key_links_batch_destroy_parameters = Phrase::KeyLinksBatchDestroyParameters.new({child_key_ids: ["child_key_id1", "child_key_id2"]}) # KeyLinksBatchDestroyParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  unlink_parent: true # Boolean | Whether to unlink the parent key as well and unmark it as linked-key.
}

begin
  #Batch unlink child keys from a parent key
  api_instance.key_links_batch_destroy(project_id, id, key_links_batch_destroy_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling LinkedKeysApi->key_links_batch_destroy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| Parent Translation Key ID | 
 **key_links_batch_destroy_parameters** | [**KeyLinksBatchDestroyParameters**](KeyLinksBatchDestroyParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **unlink_parent** | **Boolean**| Whether to unlink the parent key as well and unmark it as linked-key. | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## key_links_create

> KeyLink key_links_create(project_id, id, key_links_create_parameters, opts)

Link child keys to a parent key

Creates links between a given parent key and one or more child keys.

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

api_instance = Phrase::LinkedKeysApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | Parent Translation Key ID
key_links_create_parameters = Phrase::KeyLinksCreateParameters.new({child_key_ids: ["child_key_id1", "child_key_id2"]}) # KeyLinksCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Link child keys to a parent key
  result = api_instance.key_links_create(project_id, id, key_links_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling LinkedKeysApi->key_links_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| Parent Translation Key ID | 
 **key_links_create_parameters** | [**KeyLinksCreateParameters**](KeyLinksCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**KeyLink**](KeyLink.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## key_links_destroy

> key_links_destroy(project_id, id, child_key_id, opts)

Unlink a child key from a parent key

Unlinks a single child key from a given parent key.

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

api_instance = Phrase::LinkedKeysApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | Parent Translation Key ID
child_key_id = 'child_key_id_example' # String | The ID of the child key to unlink.
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Unlink a child key from a parent key
  api_instance.key_links_destroy(project_id, id, child_key_id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling LinkedKeysApi->key_links_destroy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| Parent Translation Key ID | 
 **child_key_id** | **String**| The ID of the child key to unlink. | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## key_links_index

> KeyLink key_links_index(project_id, id, opts)

Retrieve all child keys linked to a specific parent key

Returns detailed information about a parent key, including its linked child keys.

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

api_instance = Phrase::LinkedKeysApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | Parent Translation Key ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Retrieve all child keys linked to a specific parent key
  result = api_instance.key_links_index(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling LinkedKeysApi->key_links_index: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| Parent Translation Key ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**KeyLink**](KeyLink.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

