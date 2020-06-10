# Phrase::UploadsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**upload_create**](UploadsApi.md#upload_create) | **POST** /projects/{project_id}/uploads | Upload a new file
[**upload_show**](UploadsApi.md#upload_show) | **GET** /projects/{project_id}/uploads/{id} | View upload details
[**uploads_list**](UploadsApi.md#uploads_list) | **GET** /projects/{project_id}/uploads | List uploads



## upload_create

> Upload upload_create(project_id, opts)

Upload a new file

Upload a new language file. Creates necessary resources in your project.

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

api_instance = Phrase::UploadsApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'branch_example', # String | specify the branch to use
  file: File.new('/path/to/file'), # File | File to be imported
  file_format: 'file_format_example', # String | File format. Auto-detected when possible and not specified.
  locale_id: 'locale_id_example', # String | Locale of the file's content. Can be the name or public id of the locale. Preferred is the public id.
  tags: 'tags_example', # String | List of tags separated by comma to be associated with the new keys contained in the upload.
  update_translations: true, # Boolean | Indicates whether existing translations should be updated with the file content.
  update_descriptions: true, # Boolean | Existing key descriptions will be updated with the file content. Empty descriptions overwrite existing descriptions.
  convert_emoji: true, # Boolean | This option is obsolete. Providing the option will cause a bad request error.
  skip_upload_tags: true, # Boolean | Indicates whether the upload should not create upload tags.
  skip_unverification: true, # Boolean | Indicates whether the upload should unverify updated translations.
  file_encoding: 'file_encoding_example', # String | Enforces a specific encoding on the file contents. Valid options are \\\"UTF-8\\\", \\\"UTF-16\\\" and \\\"ISO-8859-1\\\".
  locale_mapping: nil, # Object | Optional, format specific mapping between locale names and the columns the translations to those locales are contained in.
  format_options: nil, # Object | Additional options available for specific formats. See our format guide for complete list.
  autotranslate: true, # Boolean | If set, translations for the uploaded language will be fetched automatically.
  mark_reviewed: true # Boolean | Indicated whether the imported translations should be marked as reviewed. This setting is available if the review workflow (currently beta) is enabled for the project.
}

begin
  #Upload a new file
  result = api_instance.upload_create(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling UploadsApi->upload_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 
 **file** | **File**| File to be imported | [optional] 
 **file_format** | **String**| File format. Auto-detected when possible and not specified. | [optional] 
 **locale_id** | **String**| Locale of the file&#39;s content. Can be the name or public id of the locale. Preferred is the public id. | [optional] 
 **tags** | **String**| List of tags separated by comma to be associated with the new keys contained in the upload. | [optional] 
 **update_translations** | **Boolean**| Indicates whether existing translations should be updated with the file content. | [optional] 
 **update_descriptions** | **Boolean**| Existing key descriptions will be updated with the file content. Empty descriptions overwrite existing descriptions. | [optional] 
 **convert_emoji** | **Boolean**| This option is obsolete. Providing the option will cause a bad request error. | [optional] 
 **skip_upload_tags** | **Boolean**| Indicates whether the upload should not create upload tags. | [optional] 
 **skip_unverification** | **Boolean**| Indicates whether the upload should unverify updated translations. | [optional] 
 **file_encoding** | **String**| Enforces a specific encoding on the file contents. Valid options are \\\&quot;UTF-8\\\&quot;, \\\&quot;UTF-16\\\&quot; and \\\&quot;ISO-8859-1\\\&quot;. | [optional] 
 **locale_mapping** | [**Object**](Object.md)| Optional, format specific mapping between locale names and the columns the translations to those locales are contained in. | [optional] 
 **format_options** | [**Object**](Object.md)| Additional options available for specific formats. See our format guide for complete list. | [optional] 
 **autotranslate** | **Boolean**| If set, translations for the uploaded language will be fetched automatically. | [optional] 
 **mark_reviewed** | **Boolean**| Indicated whether the imported translations should be marked as reviewed. This setting is available if the review workflow (currently beta) is enabled for the project. | [optional] 

### Return type

Response<([**Upload**](Upload.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## upload_show

> Upload upload_show(project_id, id, opts)

View upload details

View details and summary for a single upload.

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

api_instance = Phrase::UploadsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #View upload details
  result = api_instance.upload_show(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling UploadsApi->upload_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**Upload**](Upload.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## uploads_list

> Array&lt;Upload&gt; uploads_list(project_id, opts)

List uploads

List all uploads for the given project.

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

api_instance = Phrase::UploadsApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10, # Integer | allows you to specify a page size up to 100 items, 10 by default
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #List uploads
  result = api_instance.uploads_list(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling UploadsApi->uploads_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**Array&lt;Upload&gt;**](Upload.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

