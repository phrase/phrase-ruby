# Phrase::RepoSyncEventsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**repo_sync_event_list**](RepoSyncEventsApi.md#repo_sync_event_list) | **GET** /accounts/{account_id}/repo_syncs/{id}/events | Repository Syncs History
[**repo_sync_event_show**](RepoSyncEventsApi.md#repo_sync_event_show) | **GET** /accounts/{account_id}/repo_syncs/{repo_sync_id}/events/{id} | Get a single Repo Sync Event



## repo_sync_event_list

> Array&lt;RepoSyncEvent&gt; repo_sync_event_list(account_id, id, opts)

Repository Syncs History

Get the history of a single Repo Sync. The history includes all imports and exports performed by the Repo Sync.

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

api_instance = Phrase::RepoSyncEventsApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Repository Syncs History
  result = api_instance.repo_sync_event_list(account_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling RepoSyncEventsApi->repo_sync_event_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Array&lt;RepoSyncEvent&gt;**](RepoSyncEvent.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repo_sync_event_show

> RepoSyncEvent repo_sync_event_show(account_id, repo_sync_id, id, opts)

Get a single Repo Sync Event

Shows a single Repo Sync event.

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

api_instance = Phrase::RepoSyncEventsApi.new
account_id = 'account_id_example' # String | Account ID
repo_sync_id = 'repo_sync_id_example' # String | Repo Sync ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single Repo Sync Event
  result = api_instance.repo_sync_event_show(account_id, repo_sync_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling RepoSyncEventsApi->repo_sync_event_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **repo_sync_id** | **String**| Repo Sync ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**RepoSyncEvent**](RepoSyncEvent.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

