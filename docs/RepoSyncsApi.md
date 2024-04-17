# Phrase::RepoSyncsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**repo_sync_activate**](RepoSyncsApi.md#repo_sync_activate) | **POST** /accounts/{account_id}/repo_syncs/{repo_sync_id}/activate | Activate a Repo Sync
[**repo_sync_deactivate**](RepoSyncsApi.md#repo_sync_deactivate) | **POST** /accounts/{account_id}/repo_syncs/{repo_sync_id}/deactivate | Deactivate a Repo Sync
[**repo_sync_events**](RepoSyncsApi.md#repo_sync_events) | **GET** /accounts/{account_id}/repo_syncs/{repo_sync_id}/events | Repository Syncs History
[**repo_sync_export**](RepoSyncsApi.md#repo_sync_export) | **POST** /accounts/{account_id}/repo_syncs/{repo_sync_id}/export | Export to code repository
[**repo_sync_import**](RepoSyncsApi.md#repo_sync_import) | **POST** /accounts/{account_id}/repo_syncs/{repo_sync_id}/import | Import from code repository
[**repo_sync_list**](RepoSyncsApi.md#repo_sync_list) | **GET** /accounts/{account_id}/repo_syncs | Get Repo Syncs
[**repo_sync_show**](RepoSyncsApi.md#repo_sync_show) | **GET** /accounts/{account_id}/repo_syncs/{repo_sync_id} | Get a single Repo Sync



## repo_sync_activate

> RepoSync repo_sync_activate(account_id, repo_sync_id, opts)

Activate a Repo Sync

Activate a deactivated Repo Sync. Active syncs can be used to import and export translations, and imports to Phrase are automatically triggered by pushes to the repository, if configured.

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

api_instance = Phrase::RepoSyncsApi.new
account_id = 'account_id_example' # String | Account ID
repo_sync_id = 'repo_sync_id_example' # String | Repo Sync ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Activate a Repo Sync
  result = api_instance.repo_sync_activate(account_id, repo_sync_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling RepoSyncsApi->repo_sync_activate: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **repo_sync_id** | **String**| Repo Sync ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**RepoSync**](RepoSync.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repo_sync_deactivate

> RepoSync repo_sync_deactivate(account_id, repo_sync_id, opts)

Deactivate a Repo Sync

Deactivate an active Repo Sync. Import and export can't be performed on deactivated syncs and the pushes to the repository won't trigger the import to Phrase.

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

api_instance = Phrase::RepoSyncsApi.new
account_id = 'account_id_example' # String | Account ID
repo_sync_id = 'repo_sync_id_example' # String | Repo Sync ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Deactivate a Repo Sync
  result = api_instance.repo_sync_deactivate(account_id, repo_sync_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling RepoSyncsApi->repo_sync_deactivate: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **repo_sync_id** | **String**| Repo Sync ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**RepoSync**](RepoSync.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repo_sync_events

> Array&lt;RepoSyncEvent&gt; repo_sync_events(account_id, repo_sync_id, opts)

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

api_instance = Phrase::RepoSyncsApi.new
account_id = 'account_id_example' # String | Account ID
repo_sync_id = 'repo_sync_id_example' # String | Repo Sync ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Repository Syncs History
  result = api_instance.repo_sync_events(account_id, repo_sync_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling RepoSyncsApi->repo_sync_events: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **repo_sync_id** | **String**| Repo Sync ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Array&lt;RepoSyncEvent&gt;**](RepoSyncEvent.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repo_sync_export

> RepoSyncExport repo_sync_export(account_id, repo_sync_id, opts)

Export to code repository

> Beta: this feature will change in the future.  Export translations from Phrase Strings to repository provider according to the .phrase.yml file within the code repository.  *Export is done asynchronously and may take several seconds depending on the project size.*

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

api_instance = Phrase::RepoSyncsApi.new
account_id = 'account_id_example' # String | Account ID
repo_sync_id = 'repo_sync_id_example' # String | Repo Sync ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Export to code repository
  result = api_instance.repo_sync_export(account_id, repo_sync_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling RepoSyncsApi->repo_sync_export: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **repo_sync_id** | **String**| Repo Sync ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**RepoSyncExport**](RepoSyncExport.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repo_sync_import

> RepoSyncImport repo_sync_import(account_id, repo_sync_id, opts)

Import from code repository

> Beta: this feature will change in the future.  Import translations from repository provider to Phrase Strings according to the .phrase.yml file within the code repository.  _Import is done asynchronously and may take several seconds depending on the project size._

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

api_instance = Phrase::RepoSyncsApi.new
account_id = 'account_id_example' # String | Account ID
repo_sync_id = 'repo_sync_id_example' # String | Repo Sync ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Import from code repository
  result = api_instance.repo_sync_import(account_id, repo_sync_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling RepoSyncsApi->repo_sync_import: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **repo_sync_id** | **String**| Repo Sync ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**RepoSyncImport**](RepoSyncImport.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repo_sync_list

> Array&lt;RepoSync&gt; repo_sync_list(account_id, opts)

Get Repo Syncs

Lists all Repo Syncs from an account

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

api_instance = Phrase::RepoSyncsApi.new
account_id = 'account_id_example' # String | Account ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get Repo Syncs
  result = api_instance.repo_sync_list(account_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling RepoSyncsApi->repo_sync_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Array&lt;RepoSync&gt;**](RepoSync.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repo_sync_show

> RepoSync repo_sync_show(account_id, repo_sync_id, opts)

Get a single Repo Sync

Shows a single Repo Sync setting.

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

api_instance = Phrase::RepoSyncsApi.new
account_id = 'account_id_example' # String | Account ID
repo_sync_id = 'repo_sync_id_example' # String | Repo Sync ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single Repo Sync
  result = api_instance.repo_sync_show(account_id, repo_sync_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling RepoSyncsApi->repo_sync_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **repo_sync_id** | **String**| Repo Sync ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**RepoSync**](RepoSync.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

