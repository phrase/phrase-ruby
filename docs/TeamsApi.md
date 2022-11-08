# Phrase::TeamsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**team_create**](TeamsApi.md#team_create) | **POST** /accounts/{account_id}/teams | Create a Team
[**team_delete**](TeamsApi.md#team_delete) | **DELETE** /accounts/{account_id}/teams/{id} | Delete Team
[**team_show**](TeamsApi.md#team_show) | **GET** /accounts/{account_id}/teams/{id} | Get Team
[**team_update**](TeamsApi.md#team_update) | **PATCH** /accounts/{account_id}/teams/{id} | Update Team
[**teams_list**](TeamsApi.md#teams_list) | **GET** /accounts/{account_id}/teams | List Teams
[**teams_projects_create**](TeamsApi.md#teams_projects_create) | **POST** /accounts/{account_id}/teams/{team_id}/projects | Add Project
[**teams_projects_delete**](TeamsApi.md#teams_projects_delete) | **DELETE** /accounts/{account_id}/teams/{team_id}/projects/{id} | Remove Project
[**teams_spaces_create**](TeamsApi.md#teams_spaces_create) | **POST** /accounts/{account_id}/teams/{team_id}/spaces | Add Space
[**teams_spaces_delete**](TeamsApi.md#teams_spaces_delete) | **DELETE** /accounts/{account_id}/teams/{team_id}/spaces/{id} | Remove Space
[**teams_users_create**](TeamsApi.md#teams_users_create) | **POST** /accounts/{account_id}/teams/{team_id}/users | Add User
[**teams_users_delete**](TeamsApi.md#teams_users_delete) | **DELETE** /accounts/{account_id}/teams/{team_id}/users/{id} | Remove User



## team_create

> TeamDetail team_create(account_id, team_create_parameters, opts)

Create a Team

Create a new Team.

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

api_instance = Phrase::TeamsApi.new
account_id = 'account_id_example' # String | Account ID
team_create_parameters = Phrase::TeamCreateParameters.new # TeamCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a Team
  result = api_instance.team_create(account_id, team_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TeamsApi->team_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **team_create_parameters** | [**TeamCreateParameters**](TeamCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**TeamDetail**](TeamDetail.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## team_delete

> team_delete(account_id, id, opts)

Delete Team

Delete the specified Team.

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

api_instance = Phrase::TeamsApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Delete Team
  api_instance.team_delete(account_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling TeamsApi->team_delete: #{e}"
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


## team_show

> TeamDetail team_show(account_id, id, opts)

Get Team

Show the specified Team.

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

api_instance = Phrase::TeamsApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get Team
  result = api_instance.team_show(account_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TeamsApi->team_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**TeamDetail**](TeamDetail.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## team_update

> TeamDetail team_update(account_id, id, team_update_parameters, opts)

Update Team

Update the specified Team.

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

api_instance = Phrase::TeamsApi.new
account_id = 'account_id_example' # String | Account ID
id = 'id_example' # String | ID
team_update_parameters = Phrase::TeamUpdateParameters.new # TeamUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update Team
  result = api_instance.team_update(account_id, id, team_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TeamsApi->team_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **id** | **String**| ID | 
 **team_update_parameters** | [**TeamUpdateParameters**](TeamUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**TeamDetail**](TeamDetail.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## teams_list

> Array&lt;Team&gt; teams_list(account_id, opts)

List Teams

List all Teams for the given account.

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

api_instance = Phrase::TeamsApi.new
account_id = 'account_id_example' # String | Account ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
}

begin
  #List Teams
  result = api_instance.teams_list(account_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TeamsApi->teams_list: #{e}"
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

Response<([**Array&lt;Team&gt;**](Team.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## teams_projects_create

> teams_projects_create(account_id, team_id, teams_projects_create_parameters, opts)

Add Project

Adds an existing project to the team.

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

api_instance = Phrase::TeamsApi.new
account_id = 'account_id_example' # String | Account ID
team_id = 'team_id_example' # String | Team ID
teams_projects_create_parameters = Phrase::TeamsProjectsCreateParameters.new # TeamsProjectsCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Add Project
  api_instance.teams_projects_create(account_id, team_id, teams_projects_create_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling TeamsApi->teams_projects_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **team_id** | **String**| Team ID | 
 **teams_projects_create_parameters** | [**TeamsProjectsCreateParameters**](TeamsProjectsCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## teams_projects_delete

> teams_projects_delete(account_id, team_id, id, opts)

Remove Project

Removes a specified project from the specified team.

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

api_instance = Phrase::TeamsApi.new
account_id = 'account_id_example' # String | Account ID
team_id = 'team_id_example' # String | Team ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Remove Project
  api_instance.teams_projects_delete(account_id, team_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling TeamsApi->teams_projects_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **team_id** | **String**| Team ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## teams_spaces_create

> teams_spaces_create(account_id, team_id, teams_spaces_create_parameters, opts)

Add Space

Adds an existing space to the team.

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

api_instance = Phrase::TeamsApi.new
account_id = 'account_id_example' # String | Account ID
team_id = 'team_id_example' # String | Team ID
teams_spaces_create_parameters = Phrase::TeamsSpacesCreateParameters.new # TeamsSpacesCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Add Space
  api_instance.teams_spaces_create(account_id, team_id, teams_spaces_create_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling TeamsApi->teams_spaces_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **team_id** | **String**| Team ID | 
 **teams_spaces_create_parameters** | [**TeamsSpacesCreateParameters**](TeamsSpacesCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## teams_spaces_delete

> teams_spaces_delete(account_id, team_id, id, opts)

Remove Space

Removes a specified space from the specified team.

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

api_instance = Phrase::TeamsApi.new
account_id = 'account_id_example' # String | Account ID
team_id = 'team_id_example' # String | Team ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Remove Space
  api_instance.teams_spaces_delete(account_id, team_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling TeamsApi->teams_spaces_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **team_id** | **String**| Team ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## teams_users_create

> teams_users_create(account_id, team_id, teams_users_create_parameters, opts)

Add User

Adds an existing user to the team.

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

api_instance = Phrase::TeamsApi.new
account_id = 'account_id_example' # String | Account ID
team_id = 'team_id_example' # String | Team ID
teams_users_create_parameters = Phrase::TeamsUsersCreateParameters.new # TeamsUsersCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Add User
  api_instance.teams_users_create(account_id, team_id, teams_users_create_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling TeamsApi->teams_users_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **team_id** | **String**| Team ID | 
 **teams_users_create_parameters** | [**TeamsUsersCreateParameters**](TeamsUsersCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## teams_users_delete

> teams_users_delete(account_id, team_id, id, opts)

Remove User

Removes a specified user from the specified team.

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

api_instance = Phrase::TeamsApi.new
account_id = 'account_id_example' # String | Account ID
team_id = 'team_id_example' # String | Team ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Remove User
  api_instance.teams_users_delete(account_id, team_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling TeamsApi->teams_users_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID | 
 **team_id** | **String**| Team ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

