# Phrase::GitHubSyncApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**github_sync_export**](GitHubSyncApi.md#github_sync_export) | **POST** /github_syncs/export | Export from Phrase to GitHub
[**github_sync_import**](GitHubSyncApi.md#github_sync_import) | **POST** /github_syncs/import | Import to Phrase from GitHub



## github_sync_export

> github_sync_export(github_sync_export_parameters, opts)

Export from Phrase to GitHub

Export translations from Phrase to GitHub according to the .phraseapp.yml file within the GitHub repository.

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

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Phrase::GitHubSyncApi.new
github_sync_export_parameters = Phrase::GithubSyncExportParameters.new # GithubSyncExportParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Export from Phrase to GitHub
  api_instance.github_sync_export(github_sync_export_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling GitHubSyncApi->github_sync_export: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **github_sync_export_parameters** | [**GithubSyncExportParameters**](GithubSyncExportParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## github_sync_import

> github_sync_import(github_sync_import_parameters, opts)

Import to Phrase from GitHub

Import files to Phrase from your connected GitHub repository.

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

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Phrase::GitHubSyncApi.new
github_sync_import_parameters = Phrase::GithubSyncImportParameters.new # GithubSyncImportParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Import to Phrase from GitHub
  api_instance.github_sync_import(github_sync_import_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling GitHubSyncApi->github_sync_import: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **github_sync_import_parameters** | [**GithubSyncImportParameters**](GithubSyncImportParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

