# Phrase::AutomationsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**automation_activate**](AutomationsApi.md#automation_activate) | **POST** /accounts/{account_id}/automations/{automation_id}/activate | Activate an automation
[**automation_create**](AutomationsApi.md#automation_create) | **POST** /accounts/{account_id}/automations | Create an automation
[**automation_deactivate**](AutomationsApi.md#automation_deactivate) | **POST** /accounts/{account_id}/automations/{automation_id}/deactivate | Deactivate an automation
[**automation_delete**](AutomationsApi.md#automation_delete) | **DELETE** /accounts/{account_id}/automations/{automation_id} | Destroy automation
[**automation_show**](AutomationsApi.md#automation_show) | **GET** /accounts/{account_id}/automations/{automation_id} | Get a single automation
[**automation_update**](AutomationsApi.md#automation_update) | **PATCH** /accounts/{account_id}/automations/{automation_id} | Update an automation
[**automations_list**](AutomationsApi.md#automations_list) | **GET** /accounts/{account_id}/automations | List automations



## automation_activate

> Automation automation_activate(account_id, id, opts)

Activate an automation

Activate an automation.  For feature availability, see [Jobs (Strings)](https://support.phrase.com/hc/en-us/articles/5784100517788-Jobs-Strings). 

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

api_instance = Phrase::AutomationsApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Activate an automation
  result = api_instance.automation_activate(account_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling AutomationsApi->automation_activate: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Automation**](Automation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## automation_create

> Automation automation_create(account_id, automations_create_parameters, opts)

Create an automation

Create a new automation.  For feature availability, see [Jobs (Strings)](https://support.phrase.com/hc/en-us/articles/5784100517788-Jobs-Strings). 

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

api_instance = Phrase::AutomationsApi.new
account_id = 'account_id_example' # String | Account ID
automations_create_parameters = Phrase::AutomationsCreateParameters.new({name: 'Scheduled Job Automation - Hourly', trigger: 'schedule', project_ids: ["abcd1234cdef1234abcd1234cdef1234"], status_filters: ['unverified']}) # AutomationsCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create an automation
  result = api_instance.automation_create(account_id, automations_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling AutomationsApi->automation_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **automations_create_parameters** | [**AutomationsCreateParameters**](AutomationsCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Automation**](Automation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## automation_deactivate

> Automation automation_deactivate(account_id, id, opts)

Deactivate an automation

Deactivate an automation.  For feature availability, see [Jobs (Strings)](https://support.phrase.com/hc/en-us/articles/5784100517788-Jobs-Strings). 

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

api_instance = Phrase::AutomationsApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Deactivate an automation
  result = api_instance.automation_deactivate(account_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling AutomationsApi->automation_deactivate: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Automation**](Automation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## automation_delete

> automation_delete(account_id, id, opts)

Destroy automation

Destroy an automation of an account.  For feature availability, see [Jobs (Strings)](https://support.phrase.com/hc/en-us/articles/5784100517788-Jobs-Strings). 

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

api_instance = Phrase::AutomationsApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Destroy automation
  api_instance.automation_delete(account_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling AutomationsApi->automation_delete: #{e}"
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


## automation_show

> Automation automation_show(account_id, id, opts)

Get a single automation

Get details of a single automation.  For feature availability, see [Jobs (Strings)](https://support.phrase.com/hc/en-us/articles/5784100517788-Jobs-Strings). 

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

api_instance = Phrase::AutomationsApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single automation
  result = api_instance.automation_show(account_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling AutomationsApi->automation_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Automation**](Automation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## automation_update

> Automation automation_update(account_id, id, automations_create_parameters1, opts)

Update an automation

Update an existing automation.  For feature availability, see [Jobs (Strings)](https://support.phrase.com/hc/en-us/articles/5784100517788-Jobs-Strings). 

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

api_instance = Phrase::AutomationsApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
automations_create_parameters1 = Phrase::AutomationsCreateParameters1.new({name: 'Scheduled Job Automation - Hourly', trigger: 'schedule', project_ids: ["abcd1234cdef1234abcd1234cdef1234"], status_filters: ['unverified']}) # AutomationsCreateParameters1 | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update an automation
  result = api_instance.automation_update(account_id, id, automations_create_parameters1, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling AutomationsApi->automation_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **automations_create_parameters1** | [**AutomationsCreateParameters1**](AutomationsCreateParameters1.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Automation**](Automation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## automations_list

> Array&lt;Automation&gt; automations_list(account_id, opts)

List automations

List all automations for an account.  For feature availability, see [Jobs (Strings)](https://support.phrase.com/hc/en-us/articles/5784100517788-Jobs-Strings). 

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

api_instance = Phrase::AutomationsApi.new
account_id = 'account_id_example' # String | Account ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
}

begin
  #List automations
  result = api_instance.automations_list(account_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling AutomationsApi->automations_list: #{e}"
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

Response<([**Array&lt;Automation&gt;**](Automation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

