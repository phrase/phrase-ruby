# Phrase::TranslationsApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**translation_create**](TranslationsApi.md#translation_create) | **POST** /projects/{project_id}/translations | Create a translation
[**translation_exclude**](TranslationsApi.md#translation_exclude) | **PATCH** /projects/{project_id}/translations/{id}/exclude | Exclude a translation from export
[**translation_include**](TranslationsApi.md#translation_include) | **PATCH** /projects/{project_id}/translations/{id}/include | Revoke exclusion of a translation in export
[**translation_review**](TranslationsApi.md#translation_review) | **PATCH** /projects/{project_id}/translations/{id}/review | Review a translation
[**translation_show**](TranslationsApi.md#translation_show) | **GET** /projects/{project_id}/translations/{id} | Get a single translation
[**translation_unverify**](TranslationsApi.md#translation_unverify) | **PATCH** /projects/{project_id}/translations/{id}/unverify | Mark a translation as unverified
[**translation_update**](TranslationsApi.md#translation_update) | **PATCH** /projects/{project_id}/translations/{id} | Update a translation
[**translation_verify**](TranslationsApi.md#translation_verify) | **PATCH** /projects/{project_id}/translations/{id}/verify | Verify a translation
[**translations_by_key**](TranslationsApi.md#translations_by_key) | **GET** /projects/{project_id}/keys/{key_id}/translations | List translations by key
[**translations_by_locale**](TranslationsApi.md#translations_by_locale) | **GET** /projects/{project_id}/locales/{locale_id}/translations | List translations by locale
[**translations_exclude**](TranslationsApi.md#translations_exclude) | **PATCH** /projects/{project_id}/translations/exclude | Set exclude from export flag on translations selected by query
[**translations_include**](TranslationsApi.md#translations_include) | **PATCH** /projects/{project_id}/translations/include | Remove exlude from import flag from translations selected by query
[**translations_list**](TranslationsApi.md#translations_list) | **GET** /projects/{project_id}/translations | List all translations
[**translations_review**](TranslationsApi.md#translations_review) | **PATCH** /projects/{project_id}/translations/review | Review translations selected by query
[**translations_search**](TranslationsApi.md#translations_search) | **POST** /projects/{project_id}/translations/search | Search translations
[**translations_unverify**](TranslationsApi.md#translations_unverify) | **PATCH** /projects/{project_id}/translations/unverify | Mark translations selected by query as unverified
[**translations_verify**](TranslationsApi.md#translations_verify) | **PATCH** /projects/{project_id}/translations/verify | Verify translations selected by query



## translation_create

> translation_create(project_id, translation_create_parameters, opts)

Create a translation

Create a translation.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
translation_create_parameters = Phrase::TranslationCreateParameters.new # TranslationCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a translation
  api_instance.translation_create(project_id, translation_create_parameters, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translation_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translation_create_parameters** | [**TranslationCreateParameters**](TranslationCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## translation_exclude

> TranslationDetails translation_exclude(project_id, id, translation_exclude_parameters, opts)

Exclude a translation from export

Set exclude from export flag on an existing translation.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
translation_exclude_parameters = Phrase::TranslationExcludeParameters.new # TranslationExcludeParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Exclude a translation from export
  result = api_instance.translation_exclude(project_id, id, translation_exclude_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translation_exclude: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **translation_exclude_parameters** | [**TranslationExcludeParameters**](TranslationExcludeParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**TranslationDetails**](TranslationDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translation_include

> TranslationDetails translation_include(project_id, id, translation_include_parameters, opts)

Revoke exclusion of a translation in export

Remove exclude from export flag from an existing translation.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
translation_include_parameters = Phrase::TranslationIncludeParameters.new # TranslationIncludeParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Revoke exclusion of a translation in export
  result = api_instance.translation_include(project_id, id, translation_include_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translation_include: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **translation_include_parameters** | [**TranslationIncludeParameters**](TranslationIncludeParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**TranslationDetails**](TranslationDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translation_review

> TranslationDetails translation_review(project_id, id, translation_review_parameters, opts)

Review a translation

Mark an existing translation as reviewed.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
translation_review_parameters = Phrase::TranslationReviewParameters.new # TranslationReviewParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Review a translation
  result = api_instance.translation_review(project_id, id, translation_review_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translation_review: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **translation_review_parameters** | [**TranslationReviewParameters**](TranslationReviewParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**TranslationDetails**](TranslationDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translation_show

> TranslationDetails translation_show(project_id, id, translation_show_parameters, opts)

Get a single translation

Get details on a single translation.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
translation_show_parameters = Phrase::TranslationShowParameters.new # TranslationShowParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single translation
  result = api_instance.translation_show(project_id, id, translation_show_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translation_show: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **translation_show_parameters** | [**TranslationShowParameters**](TranslationShowParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**TranslationDetails**](TranslationDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translation_unverify

> TranslationDetails translation_unverify(project_id, id, translation_unverify_parameters, opts)

Mark a translation as unverified

Mark an existing translation as unverified.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
translation_unverify_parameters = Phrase::TranslationUnverifyParameters.new # TranslationUnverifyParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Mark a translation as unverified
  result = api_instance.translation_unverify(project_id, id, translation_unverify_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translation_unverify: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **translation_unverify_parameters** | [**TranslationUnverifyParameters**](TranslationUnverifyParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**TranslationDetails**](TranslationDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translation_update

> TranslationDetails translation_update(project_id, id, translation_update_parameters, opts)

Update a translation

Update an existing translation.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
translation_update_parameters = Phrase::TranslationUpdateParameters.new # TranslationUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a translation
  result = api_instance.translation_update(project_id, id, translation_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translation_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **translation_update_parameters** | [**TranslationUpdateParameters**](TranslationUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**TranslationDetails**](TranslationDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translation_verify

> TranslationDetails translation_verify(project_id, id, translation_verify_parameters, opts)

Verify a translation

Verify an existing translation.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
translation_verify_parameters = Phrase::TranslationVerifyParameters.new # TranslationVerifyParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Verify a translation
  result = api_instance.translation_verify(project_id, id, translation_verify_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translation_verify: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **translation_verify_parameters** | [**TranslationVerifyParameters**](TranslationVerifyParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**TranslationDetails**](TranslationDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_by_key

> Array&lt;Translation&gt; translations_by_key(project_id, key_id, translations_by_key_parameters, opts)

List translations by key

List translations for a specific key.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
translations_by_key_parameters = Phrase::TranslationsByKeyParameters.new # TranslationsByKeyParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List translations by key
  result = api_instance.translations_by_key(project_id, key_id, translations_by_key_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_by_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_id** | **String**| Translation Key ID | 
 **translations_by_key_parameters** | [**TranslationsByKeyParameters**](TranslationsByKeyParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<([**Array&lt;Translation&gt;**](Translation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_by_locale

> Array&lt;Translation&gt; translations_by_locale(project_id, locale_id, translations_by_locale_parameters, opts)

List translations by locale

List translations for a specific locale. If you want to download all translations for one locale we recommend to use the <code>locales#download</code> endpoint.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
locale_id = 'locale_id_example' # String | Locale ID
translations_by_locale_parameters = Phrase::TranslationsByLocaleParameters.new # TranslationsByLocaleParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List translations by locale
  result = api_instance.translations_by_locale(project_id, locale_id, translations_by_locale_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_by_locale: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **locale_id** | **String**| Locale ID | 
 **translations_by_locale_parameters** | [**TranslationsByLocaleParameters**](TranslationsByLocaleParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<([**Array&lt;Translation&gt;**](Translation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_exclude

> AffectedCount translations_exclude(project_id, translations_exclude_parameters, opts)

Set exclude from export flag on translations selected by query

Exclude translations matching query from locale export.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
translations_exclude_parameters = Phrase::TranslationsExcludeParameters.new # TranslationsExcludeParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Set exclude from export flag on translations selected by query
  result = api_instance.translations_exclude(project_id, translations_exclude_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_exclude: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translations_exclude_parameters** | [**TranslationsExcludeParameters**](TranslationsExcludeParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**AffectedCount**](AffectedCount.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_include

> AffectedCount translations_include(project_id, translations_include_parameters, opts)

Remove exlude from import flag from translations selected by query

Include translations matching query in locale export.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
translations_include_parameters = Phrase::TranslationsIncludeParameters.new # TranslationsIncludeParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Remove exlude from import flag from translations selected by query
  result = api_instance.translations_include(project_id, translations_include_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_include: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translations_include_parameters** | [**TranslationsIncludeParameters**](TranslationsIncludeParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**AffectedCount**](AffectedCount.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_list

> Array&lt;Translation&gt; translations_list(project_id, translations_list_parameters, opts)

List all translations

List translations for the given project. If you want to download all translations for one locale we recommend to use the <code>locales#download</code> endpoint.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
translations_list_parameters = Phrase::TranslationsListParameters.new # TranslationsListParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List all translations
  result = api_instance.translations_list(project_id, translations_list_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translations_list_parameters** | [**TranslationsListParameters**](TranslationsListParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<([**Array&lt;Translation&gt;**](Translation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_review

> AffectedCount translations_review(project_id, translations_review_parameters, opts)

Review translations selected by query

Review translations matching query.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
translations_review_parameters = Phrase::TranslationsReviewParameters.new # TranslationsReviewParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Review translations selected by query
  result = api_instance.translations_review(project_id, translations_review_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_review: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translations_review_parameters** | [**TranslationsReviewParameters**](TranslationsReviewParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**AffectedCount**](AffectedCount.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_search

> Array&lt;Translation&gt; translations_search(project_id, translations_search_parameters, opts)

Search translations

Search translations for the given project. Provides the same search interface as <code>translations#index</code> but allows POST requests to avoid limitations imposed by GET requests. If you want to download all translations for one locale we recommend to use the <code>locales#download</code> endpoint.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
translations_search_parameters = Phrase::TranslationsSearchParameters.new # TranslationsSearchParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #Search translations
  result = api_instance.translations_search(project_id, translations_search_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translations_search_parameters** | [**TranslationsSearchParameters**](TranslationsSearchParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<([**Array&lt;Translation&gt;**](Translation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_unverify

> AffectedCount translations_unverify(project_id, translations_unverify_parameters, opts)

Mark translations selected by query as unverified

Mark translations matching query as unverified.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
translations_unverify_parameters = Phrase::TranslationsUnverifyParameters.new # TranslationsUnverifyParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Mark translations selected by query as unverified
  result = api_instance.translations_unverify(project_id, translations_unverify_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_unverify: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translations_unverify_parameters** | [**TranslationsUnverifyParameters**](TranslationsUnverifyParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**AffectedCount**](AffectedCount.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_verify

> AffectedCount translations_verify(project_id, translations_verify_parameters, opts)

Verify translations selected by query

Verify translations matching query.

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
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
translations_verify_parameters = Phrase::TranslationsVerifyParameters.new # TranslationsVerifyParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Verify translations selected by query
  result = api_instance.translations_verify(project_id, translations_verify_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_verify: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translations_verify_parameters** | [**TranslationsVerifyParameters**](TranslationsVerifyParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**AffectedCount**](AffectedCount.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

