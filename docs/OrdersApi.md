# Phrase::OrdersApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**order_confirm**](OrdersApi.md#order_confirm) | **PATCH** /projects/{project_id}/orders/{id}/confirm | Confirm an order
[**order_create**](OrdersApi.md#order_create) | **POST** /projects/{project_id}/orders | Create a new order
[**order_delete**](OrdersApi.md#order_delete) | **DELETE** /projects/{project_id}/orders/{id} | Cancel an order
[**order_show**](OrdersApi.md#order_show) | **GET** /projects/{project_id}/orders/{id} | Get a single order
[**orders_list**](OrdersApi.md#orders_list) | **GET** /projects/{project_id}/orders | List orders



## order_confirm

> TranslationOrder order_confirm(project_id, id, order_confirm_parameters, opts)

Confirm an order

Confirm an existing order and send it to the provider for translation. Same constraints as for create.

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

api_instance = Phrase::OrdersApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
order_confirm_parameters = Phrase::OrderConfirmParameters.new # OrderConfirmParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Confirm an order
  result = api_instance.order_confirm(project_id, id, order_confirm_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling OrdersApi->order_confirm: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **order_confirm_parameters** | [**OrderConfirmParameters**](OrderConfirmParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**TranslationOrder**](TranslationOrder.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## order_create

> order_create(project_id, order_create_parameters, opts)

Create a new order

Create a new order. Access token scope must include <code>orders.create</code>.

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

api_instance = Phrase::OrdersApi.new
project_id = 'project_id_example' # String | Project ID
order_create_parameters = Phrase::OrderCreateParameters.new # OrderCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a new order
  api_instance.order_create(project_id, order_create_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling OrdersApi->order_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **order_create_parameters** | [**OrderCreateParameters**](OrderCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## order_delete

> order_delete(project_id, id, opts)

Cancel an order

Cancel an existing order. Must not yet be confirmed.

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

api_instance = Phrase::OrdersApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Cancel an order
  api_instance.order_delete(project_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling OrdersApi->order_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
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


## order_show

> TranslationOrder order_show(project_id, id, opts)

Get a single order

Get details on a single order.

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

api_instance = Phrase::OrdersApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Get a single order
  result = api_instance.order_show(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling OrdersApi->order_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**TranslationOrder**](TranslationOrder.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## orders_list

> Array&lt;TranslationOrder&gt; orders_list(project_id, opts)

List orders

List all orders for the given project.

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

api_instance = Phrase::OrdersApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10, # Integer | allows you to specify a page size up to 100 items, 10 by default
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #List orders
  result = api_instance.orders_list(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling OrdersApi->orders_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**Array&lt;TranslationOrder&gt;**](TranslationOrder.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

