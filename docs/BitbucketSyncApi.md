# Phrase::BitbucketSyncApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bitbucket_sync_export**](BitbucketSyncApi.md#bitbucket_sync_export) | **POST** /bitbucket_syncs/{id}/export | Export from Phrase to Bitbucket
[**bitbucket_sync_import**](BitbucketSyncApi.md#bitbucket_sync_import) | **POST** /bitbucket_syncs/{id}/import | Import to Phrase from Bitbucket
[**bitbucket_syncs_list**](BitbucketSyncApi.md#bitbucket_syncs_list) | **GET** /bitbucket_syncs | List Bitbucket syncs



## bitbucket_sync_export

> BitbucketSyncExportResponse bitbucket_sync_export(id, bitbucket_sync_export_parameters, opts)

Export from Phrase to Bitbucket

Export translations from Phrase to Bitbucket according to the .phraseapp.yml file within the Bitbucket Repository.

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

api_instance = Phrase::BitbucketSyncApi.new
id = 'id_example' # String | ID
bitbucket_sync_export_parameters = Phrase::BitbucketSyncExportParameters.new # BitbucketSyncExportParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Export from Phrase to Bitbucket
  result = api_instance.bitbucket_sync_export(id, bitbucket_sync_export_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling BitbucketSyncApi->bitbucket_sync_export: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 
 **bitbucket_sync_export_parameters** | [**BitbucketSyncExportParameters**](BitbucketSyncExportParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**BitbucketSyncExportResponse**](BitbucketSyncExportResponse.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## bitbucket_sync_import

> bitbucket_sync_import(id, bitbucket_sync_import_parameters, opts)

Import to Phrase from Bitbucket

Import translations from Bitbucket to Phrase according to the .phraseapp.yml file within the Bitbucket repository.

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

api_instance = Phrase::BitbucketSyncApi.new
id = 'id_example' # String | ID
bitbucket_sync_import_parameters = Phrase::BitbucketSyncImportParameters.new # BitbucketSyncImportParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Import to Phrase from Bitbucket
  api_instance.bitbucket_sync_import(id, bitbucket_sync_import_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling BitbucketSyncApi->bitbucket_sync_import: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 
 **bitbucket_sync_import_parameters** | [**BitbucketSyncImportParameters**](BitbucketSyncImportParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## bitbucket_syncs_list

> Array&lt;BitbucketSync&gt; bitbucket_syncs_list(opts)

List Bitbucket syncs

List all Bitbucket repositories for which synchronisation with Phrase is activated.

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

api_instance = Phrase::BitbucketSyncApi.new
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  account_id: 'abcd1234' # String | Account ID to specify the actual account the project should be created in. Required if the requesting user is a member of multiple accounts.
}

begin
  #List Bitbucket syncs
  result = api_instance.bitbucket_syncs_list(opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling BitbucketSyncApi->bitbucket_syncs_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **account_id** | **String**| Account ID to specify the actual account the project should be created in. Required if the requesting user is a member of multiple accounts. | [optional] 

### Return type

Response<([**Array&lt;BitbucketSync&gt;**](BitbucketSync.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

