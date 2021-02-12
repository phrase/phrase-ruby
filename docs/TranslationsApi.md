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
[**translations_exclude_collection**](TranslationsApi.md#translations_exclude_collection) | **PATCH** /projects/{project_id}/translations/exclude | Set exclude from export flag on translations selected by query
[**translations_include_collection**](TranslationsApi.md#translations_include_collection) | **PATCH** /projects/{project_id}/translations/include | Remove exlude from import flag from translations selected by query
[**translations_list**](TranslationsApi.md#translations_list) | **GET** /projects/{project_id}/translations | List all translations
[**translations_review_collection**](TranslationsApi.md#translations_review_collection) | **PATCH** /projects/{project_id}/translations/review | Review translations selected by query
[**translations_search**](TranslationsApi.md#translations_search) | **POST** /projects/{project_id}/translations/search | Search translations
[**translations_unverify_collection**](TranslationsApi.md#translations_unverify_collection) | **PATCH** /projects/{project_id}/translations/unverify | Mark translations selected by query as unverified
[**translations_verify_collection**](TranslationsApi.md#translations_verify_collection) | **PATCH** /projects/{project_id}/translations/verify | Verify translations selected by query



## translation_create

> TranslationDetails translation_create(project_id, translation_create_parameters, opts)

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
  config.api_key_prefix['Authorization'] = 'token'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
translation_create_parameters = Phrase::TranslationCreateParameters.new # TranslationCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a translation
  result = api_instance.translation_create(project_id, translation_create_parameters, opts)
  pp result
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

Response<([**TranslationDetails**](TranslationDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


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
  config.api_key_prefix['Authorization'] = 'token'
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
  config.api_key_prefix['Authorization'] = 'token'
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
  config.api_key_prefix['Authorization'] = 'token'
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

> TranslationDetails translation_show(project_id, id, opts)

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
  config.api_key_prefix['Authorization'] = 'token'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Get a single translation
  result = api_instance.translation_show(project_id, id, opts)
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
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 

### Return type

Response<([**TranslationDetails**](TranslationDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
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
  config.api_key_prefix['Authorization'] = 'token'
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
  config.api_key_prefix['Authorization'] = 'token'
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
  config.api_key_prefix['Authorization'] = 'token'
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

> Array&lt;Translation&gt; translations_by_key(project_id, key_id, opts)

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
  config.api_key_prefix['Authorization'] = 'token'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
key_id = 'key_id_example' # String | Translation Key ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | allows you to specify a page size up to 100 items, 25 by default
  branch: 'my-feature-branch', # String | specify the branch to use
  sort: 'updated_at', # String | Sort criteria. Can be one of: key_name, created_at, updated_at.
  order: 'desc', # String | Order direction. Can be one of: asc, desc.
  q: 'PhraseApp*%20unverified:true%20excluded:true%20tags:feature,center' # String | Specify a query to find translations by content (including wildcards).<br><br> The following qualifiers are supported in the query:<br> <ul>   <li><code>id:translation_id,...</code> for queries on a comma-separated list of ids</li>   <li><code>unverified:{true|false}</code> for verification status</li>   <li><code>tags:XYZ</code> for tags on the translation</li>   <li><code>excluded:{true|false}</code> for exclusion status</li>   <li><code>updated_at:{>=|<=}2013-02-21T00:00:00Z</code> for date range queries</li> </ul> Find more examples <a href=\"#overview--usage-examples\">here</a>. 
}

begin
  #List translations by key
  result = api_instance.translations_by_key(project_id, key_id, opts)
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
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 25 by default | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 
 **sort** | **String**| Sort criteria. Can be one of: key_name, created_at, updated_at. | [optional] 
 **order** | **String**| Order direction. Can be one of: asc, desc. | [optional] 
 **q** | **String**| Specify a query to find translations by content (including wildcards).&lt;br&gt;&lt;br&gt; The following qualifiers are supported in the query:&lt;br&gt; &lt;ul&gt;   &lt;li&gt;&lt;code&gt;id:translation_id,...&lt;/code&gt; for queries on a comma-separated list of ids&lt;/li&gt;   &lt;li&gt;&lt;code&gt;unverified:{true|false}&lt;/code&gt; for verification status&lt;/li&gt;   &lt;li&gt;&lt;code&gt;tags:XYZ&lt;/code&gt; for tags on the translation&lt;/li&gt;   &lt;li&gt;&lt;code&gt;excluded:{true|false}&lt;/code&gt; for exclusion status&lt;/li&gt;   &lt;li&gt;&lt;code&gt;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&lt;/code&gt; for date range queries&lt;/li&gt; &lt;/ul&gt; Find more examples &lt;a href&#x3D;\&quot;#overview--usage-examples\&quot;&gt;here&lt;/a&gt;.  | [optional] 

### Return type

Response<([**Array&lt;Translation&gt;**](Translation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## translations_by_locale

> Array&lt;Translation&gt; translations_by_locale(project_id, locale_id, opts)

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
  config.api_key_prefix['Authorization'] = 'token'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
locale_id = 'locale_id_example' # String | Locale ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | allows you to specify a page size up to 100 items, 25 by default
  branch: 'my-feature-branch', # String | specify the branch to use
  sort: 'updated_at', # String | Sort criteria. Can be one of: key_name, created_at, updated_at.
  order: 'desc', # String | Order direction. Can be one of: asc, desc.
  q: 'PhraseApp*%20unverified:true%20excluded:true%20tags:feature,center' # String | Specify a query to find translations by content (including wildcards).<br><br> The following qualifiers are supported in the query:<br> <ul>   <li><code>id:translation_id,...</code> for queries on a comma-separated list of ids</li>   <li><code>unverified:{true|false}</code> for verification status</li>   <li><code>tags:XYZ</code> for tags on the translation</li>   <li><code>excluded:{true|false}</code> for exclusion status</li>   <li><code>updated_at:{>=|<=}2013-02-21T00:00:00Z</code> for date range queries</li> </ul> Find more examples <a href=\"#overview--usage-examples\">here</a>. 
}

begin
  #List translations by locale
  result = api_instance.translations_by_locale(project_id, locale_id, opts)
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
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 25 by default | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 
 **sort** | **String**| Sort criteria. Can be one of: key_name, created_at, updated_at. | [optional] 
 **order** | **String**| Order direction. Can be one of: asc, desc. | [optional] 
 **q** | **String**| Specify a query to find translations by content (including wildcards).&lt;br&gt;&lt;br&gt; The following qualifiers are supported in the query:&lt;br&gt; &lt;ul&gt;   &lt;li&gt;&lt;code&gt;id:translation_id,...&lt;/code&gt; for queries on a comma-separated list of ids&lt;/li&gt;   &lt;li&gt;&lt;code&gt;unverified:{true|false}&lt;/code&gt; for verification status&lt;/li&gt;   &lt;li&gt;&lt;code&gt;tags:XYZ&lt;/code&gt; for tags on the translation&lt;/li&gt;   &lt;li&gt;&lt;code&gt;excluded:{true|false}&lt;/code&gt; for exclusion status&lt;/li&gt;   &lt;li&gt;&lt;code&gt;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&lt;/code&gt; for date range queries&lt;/li&gt; &lt;/ul&gt; Find more examples &lt;a href&#x3D;\&quot;#overview--usage-examples\&quot;&gt;here&lt;/a&gt;.  | [optional] 

### Return type

Response<([**Array&lt;Translation&gt;**](Translation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## translations_exclude_collection

> AffectedCount translations_exclude_collection(project_id, translations_exclude_parameters, opts)

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
  config.api_key_prefix['Authorization'] = 'token'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
translations_exclude_parameters = Phrase::TranslationsExcludeParameters.new # TranslationsExcludeParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Set exclude from export flag on translations selected by query
  result = api_instance.translations_exclude_collection(project_id, translations_exclude_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_exclude_collection: #{e}"
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


## translations_include_collection

> AffectedCount translations_include_collection(project_id, translations_include_parameters, opts)

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
  config.api_key_prefix['Authorization'] = 'token'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
translations_include_parameters = Phrase::TranslationsIncludeParameters.new # TranslationsIncludeParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Remove exlude from import flag from translations selected by query
  result = api_instance.translations_include_collection(project_id, translations_include_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_include_collection: #{e}"
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

> Array&lt;Translation&gt; translations_list(project_id, opts)

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
  config.api_key_prefix['Authorization'] = 'token'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | allows you to specify a page size up to 100 items, 25 by default
  branch: 'my-feature-branch', # String | specify the branch to use
  sort: 'updated_at', # String | Sort criteria. Can be one of: key_name, created_at, updated_at.
  order: 'desc', # String | Order direction. Can be one of: asc, desc.
  q: 'PhraseApp*%20unverified:true%20excluded:true%20tags:feature,center' # String | Specify a query to find translations by content (including wildcards).<br><br> The following qualifiers are supported in the query:<br> <ul>   <li><code>id:translation_id,...</code> for queries on a comma-separated list of ids</li>   <li><code>tags:XYZ</code> for tags on the translation</li>   <li><code>unverified:{true|false}</code> for verification status</li>   <li><code>excluded:{true|false}</code> for exclusion status</li>   <li><code>updated_at:{>=|<=}2013-02-21T00:00:00Z</code> for date range queries</li> </ul> Find more examples <a href=\"#overview--usage-examples\">here</a>. 
}

begin
  #List all translations
  result = api_instance.translations_list(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 25 by default | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 
 **sort** | **String**| Sort criteria. Can be one of: key_name, created_at, updated_at. | [optional] 
 **order** | **String**| Order direction. Can be one of: asc, desc. | [optional] 
 **q** | **String**| Specify a query to find translations by content (including wildcards).&lt;br&gt;&lt;br&gt; The following qualifiers are supported in the query:&lt;br&gt; &lt;ul&gt;   &lt;li&gt;&lt;code&gt;id:translation_id,...&lt;/code&gt; for queries on a comma-separated list of ids&lt;/li&gt;   &lt;li&gt;&lt;code&gt;tags:XYZ&lt;/code&gt; for tags on the translation&lt;/li&gt;   &lt;li&gt;&lt;code&gt;unverified:{true|false}&lt;/code&gt; for verification status&lt;/li&gt;   &lt;li&gt;&lt;code&gt;excluded:{true|false}&lt;/code&gt; for exclusion status&lt;/li&gt;   &lt;li&gt;&lt;code&gt;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&lt;/code&gt; for date range queries&lt;/li&gt; &lt;/ul&gt; Find more examples &lt;a href&#x3D;\&quot;#overview--usage-examples\&quot;&gt;here&lt;/a&gt;.  | [optional] 

### Return type

Response<([**Array&lt;Translation&gt;**](Translation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## translations_review_collection

> AffectedCount translations_review_collection(project_id, translations_review_parameters, opts)

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
  config.api_key_prefix['Authorization'] = 'token'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
translations_review_parameters = Phrase::TranslationsReviewParameters.new # TranslationsReviewParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Review translations selected by query
  result = api_instance.translations_review_collection(project_id, translations_review_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_review_collection: #{e}"
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
  config.api_key_prefix['Authorization'] = 'token'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
translations_search_parameters = Phrase::TranslationsSearchParameters.new # TranslationsSearchParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | allows you to specify a page size up to 100 items, 25 by default
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
 **per_page** | **Integer**| allows you to specify a page size up to 100 items, 25 by default | [optional] 

### Return type

Response<([**Array&lt;Translation&gt;**](Translation.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## translations_unverify_collection

> AffectedCount translations_unverify_collection(project_id, translations_unverify_parameters, opts)

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
  config.api_key_prefix['Authorization'] = 'token'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
translations_unverify_parameters = Phrase::TranslationsUnverifyParameters.new # TranslationsUnverifyParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Mark translations selected by query as unverified
  result = api_instance.translations_unverify_collection(project_id, translations_unverify_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_unverify_collection: #{e}"
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


## translations_verify_collection

> AffectedCount translations_verify_collection(project_id, translations_verify_parameters, opts)

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
  config.api_key_prefix['Authorization'] = 'token'
end

api_instance = Phrase::TranslationsApi.new
project_id = 'project_id_example' # String | Project ID
translations_verify_parameters = Phrase::TranslationsVerifyParameters.new # TranslationsVerifyParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Verify translations selected by query
  result = api_instance.translations_verify_collection(project_id, translations_verify_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling TranslationsApi->translations_verify_collection: #{e}"
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

