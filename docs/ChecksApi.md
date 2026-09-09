# Phrase::ChecksApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_issue_dismiss**](ChecksApi.md#check_issue_dismiss) | **PATCH** /projects/{project_id}/checks/issues/{id}/dismiss | Dismiss a check issue
[**check_issues_list**](ChecksApi.md#check_issues_list) | **GET** /projects/{project_id}/checks/issues | List check issues



## check_issue_dismiss

> CheckIssue check_issue_dismiss(project_id, id, opts)

Dismiss a check issue

**Note:** The Checks API is still in development and might change in subsequent releases.  Mark a check issue as dismissed so it no longer appears on the list of active check issues.

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

api_instance = Phrase::ChecksApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | Check Issue ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Dismiss a check issue
  result = api_instance.check_issue_dismiss(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ChecksApi->check_issue_dismiss: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| Check Issue ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**CheckIssue**](CheckIssue.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_issues_list

> Array&lt;CheckIssue&gt; check_issues_list(project_id, opts)

List check issues

**Note:** The Checks API is still in development and might change in subsequent releases.  List check issues for the given project. Results can be filtered by locale, check name, and state.

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

api_instance = Phrase::ChecksApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
  state: 'active', # String | Filter by state of the check issue. Can be one of: `active`, `solved`, `dismissed`, `all`. Defaults to `active`.
  locale_ids: ['inner_example'], # Array<String> | Filter by one or more locale IDs.
  check_names: ['translation_content_length'], # Array<String> | Filter by one or more check names. Valid values are:  - `translation_content_length` — the translation exceeds the maximum character limit configured for the key. - `translation_placeholder_usage` — the translation is missing placeholders present in the source, or contains unexpected ones. - `translation_glossary_usage` — the translation does not follow the glossary term translations.
  created_since: '2026-01-01T12:00:00Z' # String | Return only check issues created on or after this ISO 8601 datetime. Returns 400 if the value is not a valid date-time.
}

begin
  #List check issues
  result = api_instance.check_issues_list(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ChecksApi->check_issues_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 
 **state** | **String**| Filter by state of the check issue. Can be one of: &#x60;active&#x60;, &#x60;solved&#x60;, &#x60;dismissed&#x60;, &#x60;all&#x60;. Defaults to &#x60;active&#x60;. | [optional] [default to &#39;active&#39;]
 **locale_ids** | [**Array&lt;String&gt;**](String.md)| Filter by one or more locale IDs. | [optional] 
 **check_names** | [**Array&lt;String&gt;**](String.md)| Filter by one or more check names. Valid values are:  - &#x60;translation_content_length&#x60; — the translation exceeds the maximum character limit configured for the key. - &#x60;translation_placeholder_usage&#x60; — the translation is missing placeholders present in the source, or contains unexpected ones. - &#x60;translation_glossary_usage&#x60; — the translation does not follow the glossary term translations. | [optional] 
 **created_since** | **String**| Return only check issues created on or after this ISO 8601 datetime. Returns 400 if the value is not a valid date-time. | [optional] 

### Return type

Response<([**Array&lt;CheckIssue&gt;**](CheckIssue.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

