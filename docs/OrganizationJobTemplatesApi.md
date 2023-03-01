# Phrase::OrganizationJobTemplatesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**organization_job_template_create**](OrganizationJobTemplatesApi.md#organization_job_template_create) | **POST** /accounts/{account_id}/job_templates | Create an organization job template
[**organization_job_template_delete**](OrganizationJobTemplatesApi.md#organization_job_template_delete) | **DELETE** /accounts/{account_id}/job_templates/{id} | Delete an organization job template
[**organization_job_template_update**](OrganizationJobTemplatesApi.md#organization_job_template_update) | **PATCH** /accounts/{account_id}/job_templates/{id} | Update an organization job template
[**organization_job_templates_list**](OrganizationJobTemplatesApi.md#organization_job_templates_list) | **GET** /accounts/{account_id}/job_templates | List organization job templates
[**organization_job_templates_show**](OrganizationJobTemplatesApi.md#organization_job_templates_show) | **GET** /accounts/{account_id}/job_templates/{id} | Get a single organization job template



## organization_job_template_create

> OrganizationJobTemplateDetails organization_job_template_create(account_id, organization_job_template_create_parameters, opts)

Create an organization job template

Create a new organization job template.

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

api_instance = Phrase::OrganizationJobTemplatesApi.new
account_id = 'account_id_example' # String | Account ID
organization_job_template_create_parameters = Phrase::OrganizationJobTemplateCreateParameters.new # OrganizationJobTemplateCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create an organization job template
  result = api_instance.organization_job_template_create(account_id, organization_job_template_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling OrganizationJobTemplatesApi->organization_job_template_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **organization_job_template_create_parameters** | [**OrganizationJobTemplateCreateParameters**](OrganizationJobTemplateCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**OrganizationJobTemplateDetails**](OrganizationJobTemplateDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## organization_job_template_delete

> organization_job_template_delete(account_id, id, opts)

Delete an organization job template

Delete an existing organization job template.

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

api_instance = Phrase::OrganizationJobTemplatesApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete an organization job template
  api_instance.organization_job_template_delete(account_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling OrganizationJobTemplatesApi->organization_job_template_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## organization_job_template_update

> OrganizationJobTemplateDetails organization_job_template_update(account_id, id, organization_job_template_update_parameters, opts)

Update an organization job template

Update an existing organization job template.

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

api_instance = Phrase::OrganizationJobTemplatesApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
organization_job_template_update_parameters = Phrase::OrganizationJobTemplateUpdateParameters.new # OrganizationJobTemplateUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update an organization job template
  result = api_instance.organization_job_template_update(account_id, id, organization_job_template_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling OrganizationJobTemplatesApi->organization_job_template_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **organization_job_template_update_parameters** | [**OrganizationJobTemplateUpdateParameters**](OrganizationJobTemplateUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**OrganizationJobTemplateDetails**](OrganizationJobTemplateDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## organization_job_templates_list

> Array&lt;OrganizationJobTemplate&gt; organization_job_templates_list(account_id, opts)

List organization job templates

List all job templates for the given account.

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

api_instance = Phrase::OrganizationJobTemplatesApi.new
account_id = 'account_id_example' # String | Account ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
}

begin
  #List organization job templates
  result = api_instance.organization_job_templates_list(account_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling OrganizationJobTemplatesApi->organization_job_templates_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 

### Return type

Response<([**Array&lt;OrganizationJobTemplate&gt;**](OrganizationJobTemplate.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## organization_job_templates_show

> OrganizationJobTemplateDetails organization_job_templates_show(account_id, id, opts)

Get a single organization job template

Get details on a single organization job template for a given account.

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

api_instance = Phrase::OrganizationJobTemplatesApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single organization job template
  result = api_instance.organization_job_templates_show(account_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling OrganizationJobTemplatesApi->organization_job_templates_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**OrganizationJobTemplateDetails**](OrganizationJobTemplateDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

