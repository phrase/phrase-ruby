# Phrase::JobAnnotationsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**job_annotation_delete**](JobAnnotationsApi.md#job_annotation_delete) | **DELETE** /projects/{project_id}/jobs/{job_id}/annotations/{id} | Delete a job annotation
[**job_annotation_update**](JobAnnotationsApi.md#job_annotation_update) | **PATCH** /projects/{project_id}/jobs/{job_id}/annotations/{id} | Create/Update a job annotation
[**job_annotations_list**](JobAnnotationsApi.md#job_annotations_list) | **GET** /projects/{project_id}/jobs/{job_id}/annotations | List job annotations
[**job_locale_annotation_delete**](JobAnnotationsApi.md#job_locale_annotation_delete) | **DELETE** /projects/{project_id}/jobs/{job_id}/locales/{job_locale_id}/annotations/{id} | Delete a job locale annotation
[**job_locale_annotation_update**](JobAnnotationsApi.md#job_locale_annotation_update) | **PATCH** /projects/{project_id}/jobs/{job_id}/locales/{job_locale_id}/annotations/{id} | Create/Update a job locale annotation
[**job_locale_annotations_list**](JobAnnotationsApi.md#job_locale_annotations_list) | **GET** /projects/{project_id}/jobs/{job_id}/locales/{job_locale_id}/annotations | List job locale annotations



## job_annotation_delete

> job_annotation_delete(project_id, job_id, id, opts)

Delete a job annotation

Delete an annotation for a job.

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

api_instance = Phrase::JobAnnotationsApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | Name of the annotation to delete.
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | Branch to use
}

begin
  #Delete a job annotation
  api_instance.job_annotation_delete(project_id, job_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling JobAnnotationsApi->job_annotation_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **id** | **String**| Name of the annotation to delete. | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| Branch to use | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## job_annotation_update

> JobAnnotation job_annotation_update(project_id, job_id, id, job_annotation_update_parameters, opts)

Create/Update a job annotation

Create or update an annotation for a job. If the annotation already exists, it will be updated; otherwise, a new annotation will be created.

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

api_instance = Phrase::JobAnnotationsApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
id = 'id_example' # String | Name of the annotation to set or update.
job_annotation_update_parameters = Phrase::JobAnnotationUpdateParameters.new # JobAnnotationUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create/Update a job annotation
  result = api_instance.job_annotation_update(project_id, job_id, id, job_annotation_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobAnnotationsApi->job_annotation_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **id** | **String**| Name of the annotation to set or update. | 
 **job_annotation_update_parameters** | [**JobAnnotationUpdateParameters**](JobAnnotationUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobAnnotation**](JobAnnotation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_annotations_list

> Array&lt;JobAnnotation&gt; job_annotations_list(project_id, job_id, opts)

List job annotations

Retrieve a list of annotations for a job.

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

api_instance = Phrase::JobAnnotationsApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | Branch to use
}

begin
  #List job annotations
  result = api_instance.job_annotations_list(project_id, job_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobAnnotationsApi->job_annotations_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| Branch to use | [optional] 

### Return type

Response<([**Array&lt;JobAnnotation&gt;**](JobAnnotation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## job_locale_annotation_delete

> job_locale_annotation_delete(project_id, job_id, job_locale_id, id, opts)

Delete a job locale annotation

Delete an annotation for a job locale.

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

api_instance = Phrase::JobAnnotationsApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
job_locale_id = 'job_locale_id_example' # String | Job Locale ID
id = 'id_example' # String | Name of the annotation to delete.
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | Branch to use
}

begin
  #Delete a job locale annotation
  api_instance.job_locale_annotation_delete(project_id, job_id, job_locale_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling JobAnnotationsApi->job_locale_annotation_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **job_locale_id** | **String**| Job Locale ID | 
 **id** | **String**| Name of the annotation to delete. | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| Branch to use | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## job_locale_annotation_update

> JobAnnotation job_locale_annotation_update(project_id, job_id, job_locale_id, id, job_annotation_update_parameters, opts)

Create/Update a job locale annotation

Create or update an annotation for a job locale. If the annotation already exists, it will be updated; otherwise, a new annotation will be created.

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

api_instance = Phrase::JobAnnotationsApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
job_locale_id = 'job_locale_id_example' # String | Job Locale ID
id = 'id_example' # String | Name of the annotation to set or update.
job_annotation_update_parameters = Phrase::JobAnnotationUpdateParameters.new # JobAnnotationUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create/Update a job locale annotation
  result = api_instance.job_locale_annotation_update(project_id, job_id, job_locale_id, id, job_annotation_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobAnnotationsApi->job_locale_annotation_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **job_locale_id** | **String**| Job Locale ID | 
 **id** | **String**| Name of the annotation to set or update. | 
 **job_annotation_update_parameters** | [**JobAnnotationUpdateParameters**](JobAnnotationUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**JobAnnotation**](JobAnnotation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## job_locale_annotations_list

> Array&lt;JobAnnotation&gt; job_locale_annotations_list(project_id, job_id, job_locale_id, opts)

List job locale annotations

Retrieve a list of annotations for a job locale.

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

api_instance = Phrase::JobAnnotationsApi.new
project_id = 'project_id_example' # String | Project ID
job_id = 'job_id_example' # String | Job ID
job_locale_id = 'job_locale_id_example' # String | Job Locale ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | Branch to use
}

begin
  #List job locale annotations
  result = api_instance.job_locale_annotations_list(project_id, job_id, job_locale_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling JobAnnotationsApi->job_locale_annotations_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **job_id** | **String**| Job ID | 
 **job_locale_id** | **String**| Job Locale ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| Branch to use | [optional] 

### Return type

Response<([**Array&lt;JobAnnotation&gt;**](JobAnnotation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

