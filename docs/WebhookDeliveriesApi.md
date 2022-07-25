# Phrase::WebhookDeliveriesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webhook_deliveries_list**](WebhookDeliveriesApi.md#webhook_deliveries_list) | **GET** /projects/{project_id}/webhooks/{webhook_id}/deliveries | List webhook deliveries
[**webhook_deliveries_redeliver**](WebhookDeliveriesApi.md#webhook_deliveries_redeliver) | **POST** /projects/{project_id}/webhooks/{webhook_id}/deliveries/{id}/redeliver | Redeliver a single webhook delivery
[**webhook_deliveries_show**](WebhookDeliveriesApi.md#webhook_deliveries_show) | **GET** /projects/{project_id}/webhooks/{webhook_id}/deliveries/{id} | Get a single webhook delivery



## webhook_deliveries_list

> Array&lt;WebhookDelivery&gt; webhook_deliveries_list(project_id, webhook_id, opts)

List webhook deliveries

List all webhook deliveries for the given webhook_id.

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

api_instance = Phrase::WebhookDeliveriesApi.new
project_id = 'project_id_example' # String | Project ID
webhook_id = 'webhook_id_example' # String | Webhook ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  response_status_codes: 'response_status_codes_example' # String | List of Response Status Codes
}

begin
  #List webhook deliveries
  result = api_instance.webhook_deliveries_list(project_id, webhook_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling WebhookDeliveriesApi->webhook_deliveries_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **webhook_id** | **String**| Webhook ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **response_status_codes** | **String**| List of Response Status Codes | [optional] 

### Return type

Response<([**Array&lt;WebhookDelivery&gt;**](WebhookDelivery.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhook_deliveries_redeliver

> WebhookDelivery webhook_deliveries_redeliver(project_id, webhook_id, id, opts)

Redeliver a single webhook delivery

Trigger an individual webhook delivery to be redelivered.

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

api_instance = Phrase::WebhookDeliveriesApi.new
project_id = 'project_id_example' # String | Project ID
webhook_id = 'webhook_id_example' # String | Webhook ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Redeliver a single webhook delivery
  result = api_instance.webhook_deliveries_redeliver(project_id, webhook_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling WebhookDeliveriesApi->webhook_deliveries_redeliver: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **webhook_id** | **String**| Webhook ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**WebhookDelivery**](WebhookDelivery.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhook_deliveries_show

> WebhookDelivery webhook_deliveries_show(project_id, webhook_id, id, opts)

Get a single webhook delivery

Get all information about a single webhook delivery for the given ID.

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

api_instance = Phrase::WebhookDeliveriesApi.new
project_id = 'project_id_example' # String | Project ID
webhook_id = 'webhook_id_example' # String | Webhook ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single webhook delivery
  result = api_instance.webhook_deliveries_show(project_id, webhook_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling WebhookDeliveriesApi->webhook_deliveries_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **webhook_id** | **String**| Webhook ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**WebhookDelivery**](WebhookDelivery.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

