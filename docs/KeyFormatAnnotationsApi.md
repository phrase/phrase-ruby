# Phrase::KeyFormatAnnotationsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**key_format_annotations_list**](KeyFormatAnnotationsApi.md#key_format_annotations_list) | **GET** /projects/{project_id}/keys/{id}/format_annotations | List format annotations for a key



## key_format_annotations_list

> Array&lt;KeyFormatAnnotationsList200ResponseInner&gt; key_format_annotations_list(project_id, id, opts)

List format annotations for a key

Returns the format annotations stored on a translation key. Format annotations capture file-format data recorded when the key was imported — for example, an ARB placeholder block or an XLIFF note.  Results are limited to 1,000 entries. 

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

api_instance = Phrase::KeyFormatAnnotationsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | Branch to use
}

begin
  #List format annotations for a key
  result = api_instance.key_format_annotations_list(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling KeyFormatAnnotationsApi->key_format_annotations_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| Branch to use | [optional] 

### Return type

Response<([**Array&lt;KeyFormatAnnotationsList200ResponseInner&gt;**](KeyFormatAnnotationsList200ResponseInner.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

