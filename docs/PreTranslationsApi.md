# Phrase::PreTranslationsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pre_translation_create**](PreTranslationsApi.md#pre_translation_create) | **POST** /projects/{project_id}/pre_translations | Create a pre-translation job
[**pre_translation_show**](PreTranslationsApi.md#pre_translation_show) | **GET** /projects/{project_id}/pre_translations/{id} | Get a single pre-translation job
[**pre_translations_list**](PreTranslationsApi.md#pre_translations_list) | **GET** /projects/{project_id}/pre_translations | List pre-translation jobs



## pre_translation_create

> PreTranslation pre_translation_create(project_id, pre_translation_create_parameters, opts)

Create a pre-translation job

Triggers a pre-translation job for a resource within a project, addressed by `translatable_type` (`locale`, `job`, `translation_key`, or `upload`) and `translatable_id` (its ID).  Enqueues machine translation using the project's configured MT engine. 

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

api_instance = Phrase::PreTranslationsApi.new
project_id = 'project_id_example' # String | Project ID
pre_translation_create_parameters = Phrase::PreTranslationCreateParameters.new # PreTranslationCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a pre-translation job
  result = api_instance.pre_translation_create(project_id, pre_translation_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling PreTranslationsApi->pre_translation_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **pre_translation_create_parameters** | [**PreTranslationCreateParameters**](PreTranslationCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**PreTranslation**](PreTranslation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pre_translation_show

> PreTranslation pre_translation_show(project_id, id, opts)

Get a single pre-translation job

Returns a single pre-translation job identified by its ID. 

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

api_instance = Phrase::PreTranslationsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  if_modified_since: 'if_modified_since_example', # String | Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
  if_none_match: 'if_none_match_example' # String | ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
}

begin
  #Get a single pre-translation job
  result = api_instance.pre_translation_show(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling PreTranslationsApi->pre_translation_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **if_modified_since** | **String**| Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional) | [optional] 
 **if_none_match** | **String**| ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional) | [optional] 

### Return type

Response<([**PreTranslation**](PreTranslation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pre_translations_list

> Array&lt;PreTranslation&gt; pre_translations_list(project_id, opts)

List pre-translation jobs

Returns all pre-translation jobs scoped to a project, ordered by creation date descending. 

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

api_instance = Phrase::PreTranslationsApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  if_modified_since: 'if_modified_since_example', # String | Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
  if_none_match: 'if_none_match_example', # String | ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
}

begin
  #List pre-translation jobs
  result = api_instance.pre_translations_list(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling PreTranslationsApi->pre_translations_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **if_modified_since** | **String**| Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional) | [optional] 
 **if_none_match** | **String**| ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 

### Return type

Response<([**Array&lt;PreTranslation&gt;**](PreTranslation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

