# Phrase::MembersApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**member_delete**](MembersApi.md#member_delete) | **DELETE** /accounts/{account_id}/members/{id} | Remove a user from the account
[**member_show**](MembersApi.md#member_show) | **GET** /accounts/{account_id}/members/{id} | Get single member
[**member_update**](MembersApi.md#member_update) | **PATCH** /accounts/{account_id}/members/{id} | Update a member
[**member_update_settings**](MembersApi.md#member_update_settings) | **PATCH** /projects/{project_id}/members/{id} | Update a member&#39;s project settings
[**members_list**](MembersApi.md#members_list) | **GET** /accounts/{account_id}/members | List members



## member_delete

> member_delete(account_id, id, opts)

Remove a user from the account

Remove a user from the account. The user will be removed from the account but not deleted from Phrase. Access token scope must include <code>team.manage</code>.

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

api_instance = Phrase::MembersApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Remove a user from the account
  api_instance.member_delete(account_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling MembersApi->member_delete: #{e}"
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


## member_show

> Member member_show(account_id, id, opts)

Get single member

Get details on a single user in the account. Access token scope must include <code>team.manage</code>.

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

api_instance = Phrase::MembersApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get single member
  result = api_instance.member_show(account_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling MembersApi->member_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Member**](Member.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## member_update

> Member member_update(account_id, id, member_update_parameters, opts)

Update a member

Update user permissions in the account. Developers and translators need <code>project_ids</code> and <code>locale_ids</code> assigned to access them. Access token scope must include <code>team.manage</code>.

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

api_instance = Phrase::MembersApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
member_update_parameters = Phrase::MemberUpdateParameters.new # MemberUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a member
  result = api_instance.member_update(account_id, id, member_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling MembersApi->member_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **member_update_parameters** | [**MemberUpdateParameters**](MemberUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Member**](Member.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## member_update_settings

> MemberProjectDetail member_update_settings(project_id, id, member_update_settings_parameters, opts)

Update a member's project settings

Update user settings in the project. Access token scope must include <code>team.manage</code>.

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

api_instance = Phrase::MembersApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
member_update_settings_parameters = Phrase::MemberUpdateSettingsParameters.new # MemberUpdateSettingsParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a member's project settings
  result = api_instance.member_update_settings(project_id, id, member_update_settings_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling MembersApi->member_update_settings: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **member_update_settings_parameters** | [**MemberUpdateSettingsParameters**](MemberUpdateSettingsParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**MemberProjectDetail**](MemberProjectDetail.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## members_list

> Array&lt;Member&gt; members_list(account_id, opts)

List members

Get all users active in the account. It also lists resources like projects and locales the member has access to. In case nothing is shown the default access from the role is used. Access token scope must include <code>team.manage</code>.

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

api_instance = Phrase::MembersApi.new
account_id = 'account_id_example' # String | Account ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | allows you to specify a page size up to 100 items, 25 by default
}

begin
  #List members
  result = api_instance.members_list(account_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling MembersApi->members_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 25 by default | [optional] 

### Return type

Response<([**Array&lt;Member&gt;**](Member.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

