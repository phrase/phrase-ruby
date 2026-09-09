# Phrase::MachineTranslationApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**machine_translation_locale_provider_mappings_create**](MachineTranslationApi.md#machine_translation_locale_provider_mappings_create) | **POST** /accounts/{account_id}/machine_translation_locale_provider_mappings | Create a locale provider mapping
[**machine_translation_locale_provider_mappings_destroy**](MachineTranslationApi.md#machine_translation_locale_provider_mappings_destroy) | **DELETE** /accounts/{account_id}/machine_translation_locale_provider_mappings | Delete a locale provider mapping
[**machine_translation_settings_show**](MachineTranslationApi.md#machine_translation_settings_show) | **GET** /accounts/{account_id}/machine_translation_settings | Get machine translation settings
[**machine_translation_settings_update**](MachineTranslationApi.md#machine_translation_settings_update) | **PATCH** /accounts/{account_id}/machine_translation_settings | Update machine translation settings



## machine_translation_locale_provider_mappings_create

> MachineTranslationLocaleProviderMapping machine_translation_locale_provider_mappings_create(account_id, machine_translation_locale_provider_mappings_create_parameters, opts)

Create a locale provider mapping

Creates a locale-pair-specific machine translation provider override for the account. When a mapping exists for a given source/target locale pair, that provider is used instead of the account default. Only one mapping may exist per source/target locale pair; attempting to create a duplicate returns a validation error. The source and target locale codes must differ. 

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

api_instance = Phrase::MachineTranslationApi.new
account_id = 'account_id_example' # String | Account ID
machine_translation_locale_provider_mappings_create_parameters = Phrase::MachineTranslationLocaleProviderMappingsCreateParameters.new({source_locale_code: 'en', target_locale_code: 'de', service: 'google_translate'}) # MachineTranslationLocaleProviderMappingsCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a locale provider mapping
  result = api_instance.machine_translation_locale_provider_mappings_create(account_id, machine_translation_locale_provider_mappings_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling MachineTranslationApi->machine_translation_locale_provider_mappings_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **machine_translation_locale_provider_mappings_create_parameters** | [**MachineTranslationLocaleProviderMappingsCreateParameters**](MachineTranslationLocaleProviderMappingsCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**MachineTranslationLocaleProviderMapping**](MachineTranslationLocaleProviderMapping.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## machine_translation_locale_provider_mappings_destroy

> machine_translation_locale_provider_mappings_destroy(account_id, source_locale_code, target_locale_code, opts)

Delete a locale provider mapping

Removes the machine translation provider override for the specified source and target locale pair. The mapping is identified by locale codes supplied as query parameters rather than a path ID. 

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

api_instance = Phrase::MachineTranslationApi.new
account_id = 'account_id_example' # String | Account ID
source_locale_code = 'en' # String | The locale code of the source language of the mapping to delete.
target_locale_code = 'de' # String | The locale code of the target language of the mapping to delete.
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete a locale provider mapping
  api_instance.machine_translation_locale_provider_mappings_destroy(account_id, source_locale_code, target_locale_code, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling MachineTranslationApi->machine_translation_locale_provider_mappings_destroy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **source_locale_code** | **String**| The locale code of the source language of the mapping to delete. | 
 **target_locale_code** | **String**| The locale code of the target language of the mapping to delete. | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## machine_translation_settings_show

> MachineTranslationSettings machine_translation_settings_show(account_id, opts)

Get machine translation settings

Returns the machine translation configuration for the account, including the default translation service, current machine translation unit usage, and any locale-pair-specific provider mappings. 

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

api_instance = Phrase::MachineTranslationApi.new
account_id = 'account_id_example' # String | Account ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get machine translation settings
  result = api_instance.machine_translation_settings_show(account_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling MachineTranslationApi->machine_translation_settings_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**MachineTranslationSettings**](MachineTranslationSettings.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## machine_translation_settings_update

> MachineTranslationSettings machine_translation_settings_update(account_id, machine_translation_settings_update_parameters, opts)

Update machine translation settings

Sets the default machine translation service for the account. Requires write access to the account's machine translation settings. Passing an empty or absent value for `default_service` resets the account to its plan default (Microsoft Translate). 

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

api_instance = Phrase::MachineTranslationApi.new
account_id = 'account_id_example' # String | Account ID
machine_translation_settings_update_parameters = Phrase::MachineTranslationSettingsUpdateParameters.new # MachineTranslationSettingsUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update machine translation settings
  result = api_instance.machine_translation_settings_update(account_id, machine_translation_settings_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling MachineTranslationApi->machine_translation_settings_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **machine_translation_settings_update_parameters** | [**MachineTranslationSettingsUpdateParameters**](MachineTranslationSettingsUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**MachineTranslationSettings**](MachineTranslationSettings.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

