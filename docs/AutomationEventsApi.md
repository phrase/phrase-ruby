# Phrase::AutomationEventsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_automation_events_list**](AutomationEventsApi.md#account_automation_events_list) | **GET** /accounts/{account_id}/automation_events | List automation events for an account
[**automation_events_list**](AutomationEventsApi.md#automation_events_list) | **GET** /accounts/{account_id}/automations/{automation_id}/events | List events for an automation



## account_automation_events_list

> Array&lt;AutomationEvent&gt; account_automation_events_list(account_id, opts)

List automation events for an account

Returns the run history across all automations in the account, newest-first.  Use `automation_id` to narrow results to a single automation. Use `project_id` or `project_ids` to narrow by project.  For feature availability, see [Jobs (Strings)](https://support.phrase.com/hc/en-us/articles/5784100517788-Jobs-Strings). 

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

api_instance = Phrase::AutomationEventsApi.new
account_id = 'account_id_example' # String | Account ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
  automation_id: 'automation_id_example', # String | Filter events to a single automation by its ID.
  state: 'success', # String | Filter events by outcome state. Unrecognized values are ignored.
  triggered_by: 'manual', # String | Filter events by what triggered the automation run. Unrecognized values are ignored.
  project_id: 'project_id_example', # String | Filter events by project ID. Accepts a single ID or a comma-separated list of IDs.
  project_ids: ['inner_example'], # Array<String> | Filter events by one or more project IDs.
  created_after: '2023-01-01T00:00:00Z', # String | Return only events created after this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time.
  created_before: '2023-01-01T00:00:00Z' # String | Return only events created before this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time.
}

begin
  #List automation events for an account
  result = api_instance.account_automation_events_list(account_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling AutomationEventsApi->account_automation_events_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 
 **automation_id** | **String**| Filter events to a single automation by its ID. | [optional] 
 **state** | **String**| Filter events by outcome state. Unrecognized values are ignored. | [optional] 
 **triggered_by** | **String**| Filter events by what triggered the automation run. Unrecognized values are ignored. | [optional] 
 **project_id** | **String**| Filter events by project ID. Accepts a single ID or a comma-separated list of IDs. | [optional] 
 **project_ids** | [**Array&lt;String&gt;**](String.md)| Filter events by one or more project IDs. | [optional] 
 **created_after** | **String**| Return only events created after this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time. | [optional] 
 **created_before** | **String**| Return only events created before this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time. | [optional] 

### Return type

Response<([**Array&lt;AutomationEvent&gt;**](AutomationEvent.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## automation_events_list

> Array&lt;AutomationEvent&gt; automation_events_list(account_id, id, opts)

List events for an automation

Returns the run history for a specific automation, newest-first.  For feature availability, see [Jobs (Strings)](https://support.phrase.com/hc/en-us/articles/5784100517788-Jobs-Strings). 

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

api_instance = Phrase::AutomationEventsApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
  state: 'success', # String | Filter events by outcome state. Unrecognized values are ignored.
  triggered_by: 'manual', # String | Filter events by what triggered the automation run. Unrecognized values are ignored.
  project_id: 'project_id_example', # String | Filter events by project ID. Accepts a single ID or a comma-separated list of IDs.
  project_ids: ['inner_example'], # Array<String> | Filter events by one or more project IDs.
  created_after: '2023-01-01T00:00:00Z', # String | Return only events created after this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time.
  created_before: '2023-01-01T00:00:00Z' # String | Return only events created before this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time.
}

begin
  #List events for an automation
  result = api_instance.automation_events_list(account_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling AutomationEventsApi->automation_events_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 
 **state** | **String**| Filter events by outcome state. Unrecognized values are ignored. | [optional] 
 **triggered_by** | **String**| Filter events by what triggered the automation run. Unrecognized values are ignored. | [optional] 
 **project_id** | **String**| Filter events by project ID. Accepts a single ID or a comma-separated list of IDs. | [optional] 
 **project_ids** | [**Array&lt;String&gt;**](String.md)| Filter events by one or more project IDs. | [optional] 
 **created_after** | **String**| Return only events created after this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time. | [optional] 
 **created_before** | **String**| Return only events created before this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time. | [optional] 

### Return type

Response<([**Array&lt;AutomationEvent&gt;**](AutomationEvent.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

