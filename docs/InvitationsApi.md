# Phrase::InvitationsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**invitation_create**](InvitationsApi.md#invitation_create) | **POST** /accounts/{account_id}/invitations | Create a new invitation
[**invitation_delete**](InvitationsApi.md#invitation_delete) | **DELETE** /accounts/{account_id}/invitations/{id} | Delete an invitation
[**invitation_resend**](InvitationsApi.md#invitation_resend) | **POST** /accounts/{account_id}/invitations/{id}/resend | Resend an invitation
[**invitation_show**](InvitationsApi.md#invitation_show) | **GET** /accounts/{account_id}/invitations/{id} | Get a single invitation
[**invitation_update**](InvitationsApi.md#invitation_update) | **PATCH** /accounts/{account_id}/invitations/{id} | Update an invitation
[**invitation_update_settings**](InvitationsApi.md#invitation_update_settings) | **PATCH** /projects/{project_id}/invitations/{id} | Update a member&#39;s invitation access
[**invitations_list**](InvitationsApi.md#invitations_list) | **GET** /accounts/{account_id}/invitations | List invitations



## invitation_create

> Invitation invitation_create(account_id, invitation_create_parameters, opts)

Create a new invitation

Invite a person to an account. Developers and translators need `project_ids` and `locale_ids` assigned to access them. Access token scope must include `team.manage`.

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

api_instance = Phrase::InvitationsApi.new
account_id = 'account_id_example' # String | Account ID
invitation_create_parameters = Phrase::InvitationCreateParameters.new({email: 'example@mail.com', role: 'Developer'}) # InvitationCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a new invitation
  result = api_instance.invitation_create(account_id, invitation_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling InvitationsApi->invitation_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **invitation_create_parameters** | [**InvitationCreateParameters**](InvitationCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Invitation**](Invitation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## invitation_delete

> invitation_delete(account_id, id, opts)

Delete an invitation

Delete an existing invitation (must not be accepted yet). Access token scope must include `team.manage`.

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

api_instance = Phrase::InvitationsApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete an invitation
  api_instance.invitation_delete(account_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling InvitationsApi->invitation_delete: #{e}"
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


## invitation_resend

> Invitation invitation_resend(account_id, id, opts)

Resend an invitation

Resend the invitation email (must not be accepted yet). Access token scope must include `team.manage`.

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

api_instance = Phrase::InvitationsApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Resend an invitation
  result = api_instance.invitation_resend(account_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling InvitationsApi->invitation_resend: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Invitation**](Invitation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invitation_show

> Invitation invitation_show(account_id, id, opts)

Get a single invitation

Get details on a single invitation. Access token scope must include `team.manage`.

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

api_instance = Phrase::InvitationsApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single invitation
  result = api_instance.invitation_show(account_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling InvitationsApi->invitation_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Invitation**](Invitation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invitation_update

> Invitation invitation_update(account_id, id, invitation_update_parameters, opts)

Update an invitation

Update an existing invitation (must not be accepted yet). The `email` cannot be updated. Developers and translators need `project_ids` and `locale_ids` assigned to access them. Access token scope must include `team.manage`.

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

api_instance = Phrase::InvitationsApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
invitation_update_parameters = Phrase::InvitationUpdateParameters.new # InvitationUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update an invitation
  result = api_instance.invitation_update(account_id, id, invitation_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling InvitationsApi->invitation_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **invitation_update_parameters** | [**InvitationUpdateParameters**](InvitationUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Invitation**](Invitation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## invitation_update_settings

> Invitation invitation_update_settings(project_id, id, invitation_update_settings_parameters, opts)

Update a member's invitation access

Update member's settings in the invitations. Access token scope must include `team.manage`.

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

api_instance = Phrase::InvitationsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
invitation_update_settings_parameters = Phrase::InvitationUpdateSettingsParameters.new # InvitationUpdateSettingsParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a member's invitation access
  result = api_instance.invitation_update_settings(project_id, id, invitation_update_settings_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling InvitationsApi->invitation_update_settings: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **invitation_update_settings_parameters** | [**InvitationUpdateSettingsParameters**](InvitationUpdateSettingsParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**Invitation**](Invitation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## invitations_list

> Array&lt;Invitation&gt; invitations_list(account_id, opts)

List invitations

List invitations for an account. It will also list the accessible resources like projects and locales the invited user has access to. In case nothing is shown the default access from the role is used. Access token scope must include `team.manage`.

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

api_instance = Phrase::InvitationsApi.new
account_id = 'account_id_example' # String | Account ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
}

begin
  #List invitations
  result = api_instance.invitations_list(account_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling InvitationsApi->invitations_list: #{e}"
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

Response<([**Array&lt;Invitation&gt;**](Invitation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

