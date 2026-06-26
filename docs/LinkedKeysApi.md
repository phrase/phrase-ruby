# Phrase::LinkedKeysApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**key_links_batch_destroy**](LinkedKeysApi.md#key_links_batch_destroy) | **DELETE** /projects/{project_id}/keys/{id}/key_links | Batch unlink child keys from a parent key
[**key_links_create**](LinkedKeysApi.md#key_links_create) | **POST** /projects/{project_id}/keys/{id}/key_links | Link child keys to a parent key
[**key_links_destroy**](LinkedKeysApi.md#key_links_destroy) | **DELETE** /projects/{project_id}/keys/{id}/key_links/{child_key_id} | Unlink a child key from a parent key
[**key_links_index**](LinkedKeysApi.md#key_links_index) | **GET** /projects/{project_id}/keys/{id}/key_links | List child keys of a parent key



## key_links_batch_destroy

> KeyLink key_links_batch_destroy(project_id, id, opts)

Batch unlink child keys from a parent key

Removes one or more child keys from a parent key's linked-key group, or dissolves the entire group by setting unlink_parent to true.  Use this when you need to detach specific child keys from a shared translation source, or to fully break apart a linked-key group so each key manages its own translations independently. When child keys are unlinked, their translations are updated with a copy of the parent's current content (strategy keep_content, the default) or cleared (strategy remove_content).  This operation is only available on main projects. It returns 422 when a child key in `child_key_ids` is not currently linked to the parent, or when a translation update fails while unlinking. 

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
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  key_links_batch_destroy_parameters: Phrase::KeyLinksBatchDestroyParameters.new({child_key_ids: ["feature.subtitle", "nav.home"]}) # KeyLinksBatchDestroyParameters | 
}

begin
  #Batch unlink child keys from a parent key
  result = api_instance.key_links_batch_destroy(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling LinkedKeysApi->key_links_batch_destroy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| Parent Translation Key ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **key_links_batch_destroy_parameters** | [**KeyLinksBatchDestroyParameters**](KeyLinksBatchDestroyParameters.md)|  | [optional] 

### Return type

Response<([**KeyLink**](KeyLink.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## key_links_create

> KeyLink key_links_create(project_id, id, key_links_create_parameters, opts)

Link child keys to a parent key

Designates a translation key as a parent and links one or more child keys to it. Once linked, child keys receive a special reference marker as their translation content, signalling that their translations are derived from the parent. Use this when you want to group related keys — for example, a short label and its long-form variant — so translators see them in context together.  Pass an empty child_key_ids array to mark the key as a parent without linking any children yet. Both the parent key and every child key must belong to the main project; branch keys cannot participate in key links. A child key can have at most one parent at a time; attempting to link a child that already has a parent returns a 422 error with code CHILD_IS_ALREADY_LINKED. Parent and child key plurality must match — linking a plural child to a non-plural parent (or vice versa) also returns a 422. 

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
key_links_create_parameters = Phrase::KeyLinksCreateParameters.new({child_key_ids: ["ijkl9012mnop3456ijkl9012mnop3456", "abcd1234efgh5678abcd1234efgh5678"]}) # KeyLinksCreateParameters | 
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

Removes a single child key from a parent key's link group. A link group is the relationship model that keeps child keys synchronized with a parent: while linked, a child key's translations are derived from the parent's content. When you call this endpoint, the child key leaves the group and becomes independent — its existing translations are updated with the parent's current content and then marked unverified, signalling that reviewers should confirm the content is still appropriate for the child's context.  Use this endpoint when you need to detach one specific child key while keeping other children linked. To detach multiple children at once, use the batch unlink endpoint. This operation is only available on main projects.  It returns 422 when the child key is not currently linked to the specified parent key, or when a translation update fails during the unlink process. 

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
child_key_id = '1234abcd1234cdef1234abcd1234cdef' # String | The ID of the child translation key to unlink from the parent.
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
 **child_key_id** | **String**| The ID of the child translation key to unlink from the parent. | 
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

List child keys of a parent key

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
  #List child keys of a parent key
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

