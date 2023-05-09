# Phrase::LocalesApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_locales**](LocalesApi.md#account_locales) | **GET** /accounts/{id}/locales | List locales used in account
[**locale_create**](LocalesApi.md#locale_create) | **POST** /projects/{project_id}/locales | Create a locale
[**locale_delete**](LocalesApi.md#locale_delete) | **DELETE** /projects/{project_id}/locales/{id} | Delete a locale
[**locale_download**](LocalesApi.md#locale_download) | **GET** /projects/{project_id}/locales/{id}/download | Download a locale
[**locale_show**](LocalesApi.md#locale_show) | **GET** /projects/{project_id}/locales/{id} | Get a single locale
[**locale_update**](LocalesApi.md#locale_update) | **PATCH** /projects/{project_id}/locales/{id} | Update a locale
[**locales_list**](LocalesApi.md#locales_list) | **GET** /projects/{project_id}/locales | List locales



## account_locales

> Array&lt;LocalePreview1&gt; account_locales(id, opts)

List locales used in account

List all locales unique by locale code used across all projects within an account.

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

api_instance = Phrase::LocalesApi.new
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
}

begin
  #List locales used in account
  result = api_instance.account_locales(id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling LocalesApi->account_locales: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 

### Return type

Response<([**Array&lt;LocalePreview1&gt;**](LocalePreview1.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## locale_create

> LocaleDetails locale_create(project_id, locale_create_parameters, opts)

Create a locale

Create a new locale.

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

api_instance = Phrase::LocalesApi.new
project_id = 'project_id_example' # String | Project ID
locale_create_parameters = Phrase::LocaleCreateParameters.new # LocaleCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a locale
  result = api_instance.locale_create(project_id, locale_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling LocalesApi->locale_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **locale_create_parameters** | [**LocaleCreateParameters**](LocaleCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**LocaleDetails**](LocaleDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## locale_delete

> locale_delete(project_id, id, opts)

Delete a locale

Delete an existing locale.

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

api_instance = Phrase::LocalesApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Delete a locale
  api_instance.locale_delete(project_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling LocalesApi->locale_delete: #{e}"
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

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## locale_download

> File locale_download(project_id, id, opts)

Download a locale

Download a locale in a specific file format.

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

api_instance = Phrase::LocalesApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  if_modified_since: 'if_modified_since_example', # String | Last modified condition, see <a href=\"#overview--conditional-get-requests--http-caching\">Conditional GET requests / HTTP Caching</a> (optional)
  if_none_match: 'if_none_match_example', # String | ETag condition, see <a href=\"#overview--conditional-get-requests--http-caching\">Conditional GET requests / HTTP Caching</a> (optional)
  branch: 'my-feature-branch', # String | specify the branch to use
  file_format: 'yml', # String | File format name. See the <a href=\"https://support.phrase.com/hc/en-us/sections/6111343326364\">format guide</a> for all supported file formats.
  tags: 'feature1,feature2', # String | Limit results to keys tagged with a list of comma separated tag names.
  tag: 'feature', # String | Limit download to tagged keys. This parameter is deprecated. Please use the \"tags\" parameter instead
  include_empty_translations: true, # Boolean | Indicates whether keys without translations should be included in the output as well.
  exclude_empty_zero_forms: true, # Boolean | Indicates whether zero forms should be included when empty in pluralized keys.
  include_translated_keys: true, # Boolean | Include translated keys in the locale file. Use in combination with include_empty_translations to obtain only untranslated keys.
  keep_notranslate_tags: true, # Boolean | Indicates whether [NOTRANSLATE] tags should be kept.
  convert_emoji: true, # Boolean | This option is obsolete. Projects that were created on or after Nov 29th 2019 or that did not contain emoji by then will not require this flag any longer since emoji are now supported natively.
  format_options: nil, # Object | Additional formatting and render options. See the <a href=\"https://support.phrase.com/hc/en-us/sections/6111343326364\">format guide</a> for a list of options available for each format. Specify format options like this: <code>...&format_options[foo]=bar</code>
  encoding: 'encoding_example', # String | Enforces a specific encoding on the file contents. Valid options are \"UTF-8\", \"UTF-16\" and \"ISO-8859-1\".
  skip_unverified_translations: true, # Boolean | Indicates whether the locale file should skip all unverified translations. This parameter is deprecated and should be replaced with <code>include_unverified_translations</code>.
  include_unverified_translations: true, # Boolean | if set to false unverified translations are excluded
  use_last_reviewed_version: true, # Boolean | If set to true the last reviewed version of a translation is used. This is only available if the review workflow is enabled for the project.
  fallback_locale_id: 'fallback_locale_id_example', # String | If a key has no translation in the locale being downloaded the translation in the fallback locale will be used. Provide the public ID of the locale that should be used as the fallback. Requires include_empty_translations to be set to <code>true</code>.
  source_locale_id: 'source_locale_id_example' # String | Provides the source language of a corresponding job as the source language of the generated locale file. This parameter will be ignored unless used in combination with a <code>tag</code> parameter indicating a specific job.
}

begin
  #Download a locale
  result = api_instance.locale_download(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling LocalesApi->locale_download: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **if_modified_since** | **String**| Last modified condition, see &lt;a href&#x3D;\&quot;#overview--conditional-get-requests--http-caching\&quot;&gt;Conditional GET requests / HTTP Caching&lt;/a&gt; (optional) | [optional] 
 **if_none_match** | **String**| ETag condition, see &lt;a href&#x3D;\&quot;#overview--conditional-get-requests--http-caching\&quot;&gt;Conditional GET requests / HTTP Caching&lt;/a&gt; (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 
 **file_format** | **String**| File format name. See the &lt;a href&#x3D;\&quot;https://support.phrase.com/hc/en-us/sections/6111343326364\&quot;&gt;format guide&lt;/a&gt; for all supported file formats. | [optional] 
 **tags** | **String**| Limit results to keys tagged with a list of comma separated tag names. | [optional] 
 **tag** | **String**| Limit download to tagged keys. This parameter is deprecated. Please use the \&quot;tags\&quot; parameter instead | [optional] 
 **include_empty_translations** | **Boolean**| Indicates whether keys without translations should be included in the output as well. | [optional] 
 **exclude_empty_zero_forms** | **Boolean**| Indicates whether zero forms should be included when empty in pluralized keys. | [optional] 
 **include_translated_keys** | **Boolean**| Include translated keys in the locale file. Use in combination with include_empty_translations to obtain only untranslated keys. | [optional] 
 **keep_notranslate_tags** | **Boolean**| Indicates whether [NOTRANSLATE] tags should be kept. | [optional] 
 **convert_emoji** | **Boolean**| This option is obsolete. Projects that were created on or after Nov 29th 2019 or that did not contain emoji by then will not require this flag any longer since emoji are now supported natively. | [optional] 
 **format_options** | [**Object**](.md)| Additional formatting and render options. See the &lt;a href&#x3D;\&quot;https://support.phrase.com/hc/en-us/sections/6111343326364\&quot;&gt;format guide&lt;/a&gt; for a list of options available for each format. Specify format options like this: &lt;code&gt;...&amp;format_options[foo]&#x3D;bar&lt;/code&gt; | [optional] 
 **encoding** | **String**| Enforces a specific encoding on the file contents. Valid options are \&quot;UTF-8\&quot;, \&quot;UTF-16\&quot; and \&quot;ISO-8859-1\&quot;. | [optional] 
 **skip_unverified_translations** | **Boolean**| Indicates whether the locale file should skip all unverified translations. This parameter is deprecated and should be replaced with &lt;code&gt;include_unverified_translations&lt;/code&gt;. | [optional] 
 **include_unverified_translations** | **Boolean**| if set to false unverified translations are excluded | [optional] 
 **use_last_reviewed_version** | **Boolean**| If set to true the last reviewed version of a translation is used. This is only available if the review workflow is enabled for the project. | [optional] 
 **fallback_locale_id** | **String**| If a key has no translation in the locale being downloaded the translation in the fallback locale will be used. Provide the public ID of the locale that should be used as the fallback. Requires include_empty_translations to be set to &lt;code&gt;true&lt;/code&gt;. | [optional] 
 **source_locale_id** | **String**| Provides the source language of a corresponding job as the source language of the generated locale file. This parameter will be ignored unless used in combination with a &lt;code&gt;tag&lt;/code&gt; parameter indicating a specific job. | [optional] 

### Return type

Response<(**File**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: *


## locale_show

> LocaleDetails locale_show(project_id, id, opts)

Get a single locale

Get details on a single locale for a given project.

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

api_instance = Phrase::LocalesApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Get a single locale
  result = api_instance.locale_show(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling LocalesApi->locale_show: #{e}"
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

Response<([**LocaleDetails**](LocaleDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## locale_update

> LocaleDetails locale_update(project_id, id, locale_update_parameters, opts)

Update a locale

Update an existing locale.

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

api_instance = Phrase::LocalesApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
locale_update_parameters = Phrase::LocaleUpdateParameters.new # LocaleUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a locale
  result = api_instance.locale_update(project_id, id, locale_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling LocalesApi->locale_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **locale_update_parameters** | [**LocaleUpdateParameters**](LocaleUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**LocaleDetails**](LocaleDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## locales_list

> Array&lt;Locale&gt; locales_list(project_id, opts)

List locales

List all locales for the given project.

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

api_instance = Phrase::LocalesApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
  sort_by: 'sort_by_example', # String | Sort locales. Valid options are \"name_asc\", \"name_desc\", \"default_asc\", \"default_desc\".
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #List locales
  result = api_instance.locales_list(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling LocalesApi->locales_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 
 **sort_by** | **String**| Sort locales. Valid options are \&quot;name_asc\&quot;, \&quot;name_desc\&quot;, \&quot;default_asc\&quot;, \&quot;default_desc\&quot;. | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**Array&lt;Locale&gt;**](Locale.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

