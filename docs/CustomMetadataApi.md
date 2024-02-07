# Phrase::CustomMetadataApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**custom_metadata_properties_delete**](CustomMetadataApi.md#custom_metadata_properties_delete) | **DELETE** /accounts/{account_id}/custom_metadata/properties/{id} | Destroy property
[**custom_metadata_properties_list**](CustomMetadataApi.md#custom_metadata_properties_list) | **GET** /accounts/{account_id}/custom_metadata/properties | List properties
[**custom_metadata_property_create**](CustomMetadataApi.md#custom_metadata_property_create) | **POST** /accounts/{account_id}/custom_metadata/properties | Create a property
[**custom_metadata_property_show**](CustomMetadataApi.md#custom_metadata_property_show) | **GET** /accounts/{account_id}/custom_metadata/properties/{id} | Get a single property
[**custom_metadata_property_update**](CustomMetadataApi.md#custom_metadata_property_update) | **PATCH** /accounts/{account_id}/custom_metadata/properties/{id} | Update a property



## custom_metadata_properties_delete

> custom_metadata_properties_delete(account_id, id, opts)

Destroy property

Destroy a custom metadata property of an account.  This endpoint is only available to accounts with advanced plans or above. 

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

api_instance = Phrase::CustomMetadataApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Destroy property
  api_instance.custom_metadata_properties_delete(account_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling CustomMetadataApi->custom_metadata_properties_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## custom_metadata_properties_list

> Array&lt;CustomMetadataProperty&gt; custom_metadata_properties_list(account_id, opts)

List properties

List all custom metadata properties for an account.  This endpoint is only available to accounts with advanced plans or above. 

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

api_instance = Phrase::CustomMetadataApi.new
account_id = 'account_id_example' # String | Account ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  data_type: Phrase::CustomMetadataDataType::BOOLEAN, # CustomMetadataDataType | Data Type of Custom Metadata Property
  project_id: 'abcd1234cdef1234abcd1234cdef1234', # String | id of project that the properties belong to
  page: 1, # Integer | Page number
  per_page: 25, # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
  q: 'character_name', # String | query to find a property by name
  sort: 'updated_at', # String | Sort criteria. Can be one of: name, data_type, created_at.
  order: 'desc' # String | Order direction. Can be one of: asc, desc.
}

begin
  #List properties
  result = api_instance.custom_metadata_properties_list(account_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling CustomMetadataApi->custom_metadata_properties_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **data_type** | [**CustomMetadataDataType**](.md)| Data Type of Custom Metadata Property | [optional] 
 **project_id** | **String**| id of project that the properties belong to | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 
 **q** | **String**| query to find a property by name | [optional] 
 **sort** | **String**| Sort criteria. Can be one of: name, data_type, created_at. | [optional] 
 **order** | **String**| Order direction. Can be one of: asc, desc. | [optional] 

### Return type

Response<([**Array&lt;CustomMetadataProperty&gt;**](CustomMetadataProperty.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## custom_metadata_property_create

> CustomMetadataProperty custom_metadata_property_create(account_id, custom_metadata_properties_create_parameters, opts)

Create a property

Create a new custom metadata property.

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

api_instance = Phrase::CustomMetadataApi.new
account_id = 'account_id_example' # String | Account ID
custom_metadata_properties_create_parameters = Phrase::CustomMetadataPropertiesCreateParameters.new({name: 'Fruit', data_type: Phrase::CustomMetadataDataType::BOOLEAN}) # CustomMetadataPropertiesCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a property
  result = api_instance.custom_metadata_property_create(account_id, custom_metadata_properties_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling CustomMetadataApi->custom_metadata_property_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **custom_metadata_properties_create_parameters** | [**CustomMetadataPropertiesCreateParameters**](CustomMetadataPropertiesCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**CustomMetadataProperty**](CustomMetadataProperty.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## custom_metadata_property_show

> CustomMetadataProperty custom_metadata_property_show(account_id, id, opts)

Get a single property

Get details of a single custom property.

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

api_instance = Phrase::CustomMetadataApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single property
  result = api_instance.custom_metadata_property_show(account_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling CustomMetadataApi->custom_metadata_property_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**CustomMetadataProperty**](CustomMetadataProperty.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## custom_metadata_property_update

> CustomMetadataProperty custom_metadata_property_update(account_id, id, custom_metadata_properties_update_parameters, opts)

Update a property

Update an existing custom metadata property.

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

api_instance = Phrase::CustomMetadataApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
custom_metadata_properties_update_parameters = Phrase::CustomMetadataPropertiesUpdateParameters.new # CustomMetadataPropertiesUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a property
  result = api_instance.custom_metadata_property_update(account_id, id, custom_metadata_properties_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling CustomMetadataApi->custom_metadata_property_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **custom_metadata_properties_update_parameters** | [**CustomMetadataPropertiesUpdateParameters**](CustomMetadataPropertiesUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**CustomMetadataProperty**](CustomMetadataProperty.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

