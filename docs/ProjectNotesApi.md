# Phrase::ProjectNotesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**project_note_destroy**](ProjectNotesApi.md#project_note_destroy) | **DELETE** /projects/{project_id}/note | Delete a project note
[**project_note_show**](ProjectNotesApi.md#project_note_show) | **GET** /projects/{project_id}/note | Get a project note
[**project_note_update**](ProjectNotesApi.md#project_note_update) | **PATCH** /projects/{project_id}/note | Create or update a project note



## project_note_destroy

> project_note_destroy(project_id, opts)

Delete a project note

Deletes the note associated with a project. This operation is idempotent — it succeeds silently even when no note exists. The note is resolved against the main project — branch projects delete the main project's note. Requires manage permissions on the project and the `write` OAuth scope. 

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

api_instance = Phrase::ProjectNotesApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | Branch to use
}

begin
  #Delete a project note
  api_instance.project_note_destroy(project_id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling ProjectNotesApi->project_note_destroy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| Branch to use | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## project_note_show

> Note project_note_show(project_id, opts)

Get a project note

Returns the Markdown-formatted note attached to a project. The note is resolved against the main project — branch projects return the main project's note. Returns 404 when no note has been created yet. Requires the `read` OAuth scope. 

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

api_instance = Phrase::ProjectNotesApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | Branch to use
}

begin
  #Get a project note
  result = api_instance.project_note_show(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ProjectNotesApi->project_note_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| Branch to use | [optional] 

### Return type

Response<([**Note**](Note.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## project_note_update

> Note project_note_update(project_id, project_note_update_parameters, opts)

Create or update a project note

Creates or updates the Markdown-formatted note for a project. If a note already exists it is updated in place; otherwise a new note is created. The note is stored on the main project — branch projects write to the main project's note. `body` is required. Requires manage permissions on the project and the `write` OAuth scope. 

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

api_instance = Phrase::ProjectNotesApi.new
project_id = 'project_id_example' # String | Project ID
project_note_update_parameters = Phrase::ProjectNoteUpdateParameters.new({body: '## Project context

This project contains all marketing strings.'}) # ProjectNoteUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | Branch to use
}

begin
  #Create or update a project note
  result = api_instance.project_note_update(project_id, project_note_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling ProjectNotesApi->project_note_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **project_note_update_parameters** | [**ProjectNoteUpdateParameters**](ProjectNoteUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| Branch to use | [optional] 

### Return type

Response<([**Note**](Note.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

