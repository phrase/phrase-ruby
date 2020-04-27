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

> translation_create(project_id, translation_create, opts)

Create a translation

Create a translation.

### Example

```ruby
# load the gem
require 'Phrase'
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
translation_create = Phrase::TranslationCreate.new # TranslationCreate | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a translation
  api_instance.translation_create(project_id, translation_create, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translation_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translation_create** | [**TranslationCreate**](TranslationCreate.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(nil (empty response body))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## translation_exclude

> Object translation_exclude(project_id, id, translation_exclude, opts)

Exclude a translation from export

Set exclude from export flag on an existing translation.

### Example

```ruby
# load the gem
require 'Phrase'
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
translation_exclude = Phrase::TranslationExclude.new # TranslationExclude | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Exclude a translation from export
  result = api_instance.translation_exclude(project_id, id, translation_exclude, opts)
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
 **translation_exclude** | [**TranslationExclude**](TranslationExclude.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translation_include

> Object translation_include(project_id, id, translation_include, opts)

Revoke exclusion of a translation in export

Remove exclude from export flag from an existing translation.

### Example

```ruby
# load the gem
require 'Phrase'
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
translation_include = Phrase::TranslationInclude.new # TranslationInclude | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Revoke exclusion of a translation in export
  result = api_instance.translation_include(project_id, id, translation_include, opts)
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
 **translation_include** | [**TranslationInclude**](TranslationInclude.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translation_review

> Object translation_review(project_id, id, translation_review, opts)

Review a translation

Mark an existing translation as reviewed.

### Example

```ruby
# load the gem
require 'Phrase'
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
translation_review = Phrase::TranslationReview.new # TranslationReview | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Review a translation
  result = api_instance.translation_review(project_id, id, translation_review, opts)
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
 **translation_review** | [**TranslationReview**](TranslationReview.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translation_show

> Object translation_show(project_id, id, translation_show, opts)

Get a single translation

Get details on a single translation.

### Example

```ruby
# load the gem
require 'Phrase'
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
translation_show = Phrase::TranslationShow.new # TranslationShow | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single translation
  result = api_instance.translation_show(project_id, id, translation_show, opts)
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
 **translation_show** | [**TranslationShow**](TranslationShow.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translation_unverify

> Object translation_unverify(project_id, id, translation_unverify, opts)

Mark a translation as unverified

Mark an existing translation as unverified.

### Example

```ruby
# load the gem
require 'Phrase'
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
translation_unverify = Phrase::TranslationUnverify.new # TranslationUnverify | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Mark a translation as unverified
  result = api_instance.translation_unverify(project_id, id, translation_unverify, opts)
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
 **translation_unverify** | [**TranslationUnverify**](TranslationUnverify.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translation_update

> Object translation_update(project_id, id, translation_update, opts)

Update a translation

Update an existing translation.

### Example

```ruby
# load the gem
require 'Phrase'
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
translation_update = Phrase::TranslationUpdate.new # TranslationUpdate | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a translation
  result = api_instance.translation_update(project_id, id, translation_update, opts)
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
 **translation_update** | [**TranslationUpdate**](TranslationUpdate.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translation_verify

> Object translation_verify(project_id, id, translation_verify, opts)

Verify a translation

Verify an existing translation.

### Example

```ruby
# load the gem
require 'Phrase'
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
translation_verify = Phrase::TranslationVerify.new # TranslationVerify | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Verify a translation
  result = api_instance.translation_verify(project_id, id, translation_verify, opts)
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
 **translation_verify** | [**TranslationVerify**](TranslationVerify.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_by_key

> Array&lt;Object&gt; translations_by_key(project_id, key_id, translations_by_key, opts)

List translations by key

List translations for a specific key.

### Example

```ruby
# load the gem
require 'Phrase'
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
translations_by_key = Phrase::TranslationsByKey.new # TranslationsByKey | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List translations by key
  result = api_instance.translations_by_key(project_id, key_id, translations_by_key, opts)
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
 **translations_by_key** | [**TranslationsByKey**](TranslationsByKey.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<(**Array&lt;Object&gt;**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_by_locale

> Array&lt;Object&gt; translations_by_locale(project_id, locale_id, translations_by_locale, opts)

List translations by locale

List translations for a specific locale. If you want to download all translations for one locale we recommend to use the <code>locales#download</code> endpoint.

### Example

```ruby
# load the gem
require 'Phrase'
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
translations_by_locale = Phrase::TranslationsByLocale.new # TranslationsByLocale | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List translations by locale
  result = api_instance.translations_by_locale(project_id, locale_id, translations_by_locale, opts)
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
 **translations_by_locale** | [**TranslationsByLocale**](TranslationsByLocale.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<(**Array&lt;Object&gt;**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_exclude

> Object translations_exclude(project_id, translations_exclude, opts)

Set exclude from export flag on translations selected by query

Exclude translations matching query from locale export.

### Example

```ruby
# load the gem
require 'Phrase'
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
translations_exclude = Phrase::TranslationsExclude.new # TranslationsExclude | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Set exclude from export flag on translations selected by query
  result = api_instance.translations_exclude(project_id, translations_exclude, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_exclude: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translations_exclude** | [**TranslationsExclude**](TranslationsExclude.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_include

> Object translations_include(project_id, translations_include, opts)

Remove exlude from import flag from translations selected by query

Include translations matching query in locale export.

### Example

```ruby
# load the gem
require 'Phrase'
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
translations_include = Phrase::TranslationsInclude.new # TranslationsInclude | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Remove exlude from import flag from translations selected by query
  result = api_instance.translations_include(project_id, translations_include, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_include: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translations_include** | [**TranslationsInclude**](TranslationsInclude.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_list

> Array&lt;Translation&gt; translations_list(project_id, translations_list, opts)

List all translations

List translations for the given project. If you want to download all translations for one locale we recommend to use the <code>locales#download</code> endpoint.

### Example

```ruby
# load the gem
require 'Phrase'
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
translations_list = Phrase::TranslationsList.new # TranslationsList | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #List all translations
  result = api_instance.translations_list(project_id, translations_list, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translations_list** | [**TranslationsList**](TranslationsList.md)|  | 
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

> Object translations_review(project_id, translations_review, opts)

Review translations selected by query

Review translations matching query.

### Example

```ruby
# load the gem
require 'Phrase'
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
translations_review = Phrase::TranslationsReview.new # TranslationsReview | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Review translations selected by query
  result = api_instance.translations_review(project_id, translations_review, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_review: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translations_review** | [**TranslationsReview**](TranslationsReview.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_search

> Array&lt;Object&gt; translations_search(project_id, translations_search, opts)

Search translations

Search translations for the given project. Provides the same search interface as <code>translations#index</code> but allows POST requests to avoid limitations imposed by GET requests. If you want to download all translations for one locale we recommend to use the <code>locales#download</code> endpoint.

### Example

```ruby
# load the gem
require 'Phrase'
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
translations_search = Phrase::TranslationsSearch.new # TranslationsSearch | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 10 # Integer | allows you to specify a page size up to 100 items, 10 by default
}

begin
  #Search translations
  result = api_instance.translations_search(project_id, translations_search, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translations_search** | [**TranslationsSearch**](TranslationsSearch.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 10 by default | [optional] 

### Return type

Response<(**Array&lt;Object&gt;**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_unverify

> Object translations_unverify(project_id, translations_unverify, opts)

Mark translations selected by query as unverified

Mark translations matching query as unverified.

### Example

```ruby
# load the gem
require 'Phrase'
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
translations_unverify = Phrase::TranslationsUnverify.new # TranslationsUnverify | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Mark translations selected by query as unverified
  result = api_instance.translations_unverify(project_id, translations_unverify, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_unverify: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translations_unverify** | [**TranslationsUnverify**](TranslationsUnverify.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<(**Object**)>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_verify

> AffectedCount translations_verify(project_id, translations_verify, opts)

Verify translations selected by query

Verify translations matching query.

### Example

```ruby
# load the gem
require 'Phrase'
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
translations_verify = Phrase::TranslationsVerify.new # TranslationsVerify | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Verify translations selected by query
  result = api_instance.translations_verify(project_id, translations_verify, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_verify: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **translations_verify** | [**TranslationsVerify**](TranslationsVerify.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**AffectedCount**](AffectedCount.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

