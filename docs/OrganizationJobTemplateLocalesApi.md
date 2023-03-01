# Phrase::OrganizationJobTemplateLocalesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**organization_job_template_locale_delete**](OrganizationJobTemplateLocalesApi.md#organization_job_template_locale_delete) | **DELETE** /accounts/{account_id}/job_templates/{job_template_id}/locales/{job_template_locale_id} | Delete an organization job template locale
[**organization_job_template_locale_show**](OrganizationJobTemplateLocalesApi.md#organization_job_template_locale_show) | **GET** /accounts/{account_id}/job_templates/{job_template_id}/locales/{job_template_locale_id} | Get a single organization job template locale
[**organization_job_template_locale_update**](OrganizationJobTemplateLocalesApi.md#organization_job_template_locale_update) | **PATCH** /accounts/{account_id}/job_templates/{job_template_id}/locales/{job_template_locale_id} | Update an organization job template locale
[**organization_job_template_locales_create**](OrganizationJobTemplateLocalesApi.md#organization_job_template_locales_create) | **POST** /accounts/{account_id}/job_templates/{job_template_id}/locales | Create an organization job template locale
[**organization_job_template_locales_list**](OrganizationJobTemplateLocalesApi.md#organization_job_template_locales_list) | **GET** /accounts/{account_id}/job_templates/{job_template_id}/locales | List organization job template locales



## organization_job_template_locale_delete

> organization_job_template_locale_delete(account_id, job_template_id, job_template_locale_id, opts)

Delete an organization job template locale

Delete an existing organization job template locale.

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

api_instance = Phrase::OrganizationJobTemplateLocalesApi.new
account_id = 'account_id_example' # String | Account ID
job_template_id = 'job_template_id_example' # String | Job Template ID
job_template_locale_id = 'job_template_locale_id_example' # String | Job Template Locale ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete an organization job template locale
  api_instance.organization_job_template_locale_delete(account_id, job_template_id, job_template_locale_id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling OrganizationJobTemplateLocalesApi->organization_job_template_locale_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **job_template_id** | **String**| Job Template ID | 
 **job_template_locale_id** | **String**| Job Template Locale ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## organization_job_template_locale_show

> JobTemplateLocales organization_job_template_locale_show(account_id, job_template_id, job_template_locale_id, opts)

Get a single organization job template locale

Get a single job template locale for a given organization job template.

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

api_instance = Phrase::OrganizationJobTemplateLocalesApi.new
account_id = 'account_id_example' # String | Account ID
job_template_id = 'job_template_id_example' # String | Job Template ID
job_template_locale_id = 'job_template_locale_id_example' # String | Job Template Locale ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single organization job template locale
  result = api_instance.organization_job_template_locale_show(account_id, job_template_id, job_template_locale_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling OrganizationJobTemplateLocalesApi->organization_job_template_locale_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **job_template_id** | **String**| Job Template ID | 
 **job_template_locale_id** | **String**| Job Template Locale ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobTemplateLocales**](JobTemplateLocales.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## organization_job_template_locale_update

> JobTemplateLocales organization_job_template_locale_update(account_id, job_template_id, job_template_locale_id, organization_job_template_locale_update_parameters, opts)

Update an organization job template locale

Update an existing organization job template locale.

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

api_instance = Phrase::OrganizationJobTemplateLocalesApi.new
account_id = 'account_id_example' # String | Account ID
job_template_id = 'job_template_id_example' # String | Job Template ID
job_template_locale_id = 'job_template_locale_id_example' # String | Job Template Locale ID
organization_job_template_locale_update_parameters = Phrase::OrganizationJobTemplateLocaleUpdateParameters.new # OrganizationJobTemplateLocaleUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update an organization job template locale
  result = api_instance.organization_job_template_locale_update(account_id, job_template_id, job_template_locale_id, organization_job_template_locale_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling OrganizationJobTemplateLocalesApi->organization_job_template_locale_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **job_template_id** | **String**| Job Template ID | 
 **job_template_locale_id** | **String**| Job Template Locale ID | 
 **organization_job_template_locale_update_parameters** | [**OrganizationJobTemplateLocaleUpdateParameters**](OrganizationJobTemplateLocaleUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobTemplateLocales**](JobTemplateLocales.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## organization_job_template_locales_create

> JobTemplateLocales organization_job_template_locales_create(account_id, job_template_id, organization_job_template_locales_create_parameters, opts)

Create an organization job template locale

Create a new organization job template locale.

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

api_instance = Phrase::OrganizationJobTemplateLocalesApi.new
account_id = 'account_id_example' # String | Account ID
job_template_id = 'job_template_id_example' # String | Job Template ID
organization_job_template_locales_create_parameters = Phrase::OrganizationJobTemplateLocalesCreateParameters.new # OrganizationJobTemplateLocalesCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create an organization job template locale
  result = api_instance.organization_job_template_locales_create(account_id, job_template_id, organization_job_template_locales_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling OrganizationJobTemplateLocalesApi->organization_job_template_locales_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **job_template_id** | **String**| Job Template ID | 
 **organization_job_template_locales_create_parameters** | [**OrganizationJobTemplateLocalesCreateParameters**](OrganizationJobTemplateLocalesCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobTemplateLocales**](JobTemplateLocales.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## organization_job_template_locales_list

> Array&lt;JobTemplateLocales&gt; organization_job_template_locales_list(account_id, job_template_id, opts)

List organization job template locales

List all job template locales for a given organization job template.

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

api_instance = Phrase::OrganizationJobTemplateLocalesApi.new
account_id = 'account_id_example' # String | Account ID
job_template_id = 'job_template_id_example' # String | Job Template ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
}

begin
  #List organization job template locales
  result = api_instance.organization_job_template_locales_list(account_id, job_template_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling OrganizationJobTemplateLocalesApi->organization_job_template_locales_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **job_template_id** | **String**| Job Template ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 

### Return type

Response<([**Array&lt;JobTemplateLocales&gt;**](JobTemplateLocales.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

