# Phrase::GitLabSyncApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gitlab_sync_delete**](GitLabSyncApi.md#gitlab_sync_delete) | **DELETE** /gitlab_syncs/{id} | Delete single Sync Setting
[**gitlab_sync_export**](GitLabSyncApi.md#gitlab_sync_export) | **POST** /gitlab_syncs/{gitlab_sync_id}/export | Export from Phrase to GitLab
[**gitlab_sync_history**](GitLabSyncApi.md#gitlab_sync_history) | **GET** /gitlab_syncs/{gitlab_sync_id}/history | History of single Sync Setting
[**gitlab_sync_import**](GitLabSyncApi.md#gitlab_sync_import) | **POST** /gitlab_syncs/{gitlab_sync_id}/import | Import from GitLab to Phrase
[**gitlab_sync_list**](GitLabSyncApi.md#gitlab_sync_list) | **GET** /gitlab_syncs | List GitLab syncs
[**gitlab_sync_show**](GitLabSyncApi.md#gitlab_sync_show) | **GET** /gitlab_syncs/{id} | Get single Sync Setting
[**gitlab_sync_update**](GitLabSyncApi.md#gitlab_sync_update) | **PUT** /gitlab_syncs/{id} | Update single Sync Setting



## gitlab_sync_delete

> gitlab_sync_delete(id, gitlab_sync_delete_parameters, opts)

Delete single Sync Setting

Deletes a single GitLab Sync Setting.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::GitLabSyncApi.new
id = 'id_example' # String | ID
gitlab_sync_delete_parameters = Phrase::GitlabSyncDeleteParameters.new # GitlabSyncDeleteParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete single Sync Setting
  api_instance.gitlab_sync_delete(id, gitlab_sync_delete_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling GitLabSyncApi->gitlab_sync_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 
 **gitlab_sync_delete_parameters** | [**GitlabSyncDeleteParameters**](GitlabSyncDeleteParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## gitlab_sync_export

> GitlabSyncExport gitlab_sync_export(gitlab_sync_id, gitlab_sync_export_parameters, opts)

Export from Phrase to GitLab

Export translations from Phrase to GitLab according to the .phraseapp.yml file within the GitLab repository.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::GitLabSyncApi.new
gitlab_sync_id = 'gitlab_sync_id_example' # String | Gitlab Sync ID
gitlab_sync_export_parameters = Phrase::GitlabSyncExportParameters.new # GitlabSyncExportParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Export from Phrase to GitLab
  result = api_instance.gitlab_sync_export(gitlab_sync_id, gitlab_sync_export_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling GitLabSyncApi->gitlab_sync_export: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gitlab_sync_id** | **String**| Gitlab Sync ID | 
 **gitlab_sync_export_parameters** | [**GitlabSyncExportParameters**](GitlabSyncExportParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**GitlabSyncExport**](GitlabSyncExport.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## gitlab_sync_history

> Array&lt;GitlabSyncHistory&gt; gitlab_sync_history(gitlab_sync_id, gitlab_sync_history_parameters, opts)

History of single Sync Setting

List history for a single Sync Setting.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::GitLabSyncApi.new
gitlab_sync_id = 'gitlab_sync_id_example' # String | Gitlab Sync ID
gitlab_sync_history_parameters = Phrase::GitlabSyncHistoryParameters.new # GitlabSyncHistoryParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #History of single Sync Setting
  result = api_instance.gitlab_sync_history(gitlab_sync_id, gitlab_sync_history_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling GitLabSyncApi->gitlab_sync_history: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gitlab_sync_id** | **String**| Gitlab Sync ID | 
 **gitlab_sync_history_parameters** | [**GitlabSyncHistoryParameters**](GitlabSyncHistoryParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<([**Array&lt;GitlabSyncHistory&gt;**](GitlabSyncHistory.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## gitlab_sync_import

> Array&lt;Upload&gt; gitlab_sync_import(gitlab_sync_id, gitlab_sync_import_parameters, opts)

Import from GitLab to Phrase

Import translations from GitLab to Phrase according to the .phraseapp.yml file within the GitLab repository.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::GitLabSyncApi.new
gitlab_sync_id = 'gitlab_sync_id_example' # String | Gitlab Sync ID
gitlab_sync_import_parameters = Phrase::GitlabSyncImportParameters.new # GitlabSyncImportParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Import from GitLab to Phrase
  result = api_instance.gitlab_sync_import(gitlab_sync_id, gitlab_sync_import_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling GitLabSyncApi->gitlab_sync_import: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gitlab_sync_id** | **String**| Gitlab Sync ID | 
 **gitlab_sync_import_parameters** | [**GitlabSyncImportParameters**](GitlabSyncImportParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Array&lt;Upload&gt;**](Upload.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## gitlab_sync_list

> Array&lt;GitlabSync&gt; gitlab_sync_list(gitlab_sync_list_parameters, opts)

List GitLab syncs

List all GitLab Sync Settings for which synchronisation with Phrase and GitLab is activated.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::GitLabSyncApi.new
gitlab_sync_list_parameters = Phrase::GitlabSyncListParameters.new # GitlabSyncListParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #List GitLab syncs
  result = api_instance.gitlab_sync_list(gitlab_sync_list_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling GitLabSyncApi->gitlab_sync_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gitlab_sync_list_parameters** | [**GitlabSyncListParameters**](GitlabSyncListParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Array&lt;GitlabSync&gt;**](GitlabSync.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## gitlab_sync_show

> GitlabSync gitlab_sync_show(id, gitlab_sync_show_parameters, opts)

Get single Sync Setting

Shows a single GitLab Sync Setting.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::GitLabSyncApi.new
id = 'id_example' # String | ID
gitlab_sync_show_parameters = Phrase::GitlabSyncShowParameters.new # GitlabSyncShowParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get single Sync Setting
  result = api_instance.gitlab_sync_show(id, gitlab_sync_show_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling GitLabSyncApi->gitlab_sync_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 
 **gitlab_sync_show_parameters** | [**GitlabSyncShowParameters**](GitlabSyncShowParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**GitlabSync**](GitlabSync.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## gitlab_sync_update

> GitlabSync gitlab_sync_update(id, gitlab_sync_update_parameters, opts)

Update single Sync Setting

Updates a single GitLab Sync Setting.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::GitLabSyncApi.new
id = 'id_example' # String | ID
gitlab_sync_update_parameters = Phrase::GitlabSyncUpdateParameters.new # GitlabSyncUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update single Sync Setting
  result = api_instance.gitlab_sync_update(id, gitlab_sync_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling GitLabSyncApi->gitlab_sync_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 
 **gitlab_sync_update_parameters** | [**GitlabSyncUpdateParameters**](GitlabSyncUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**GitlabSync**](GitlabSync.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

