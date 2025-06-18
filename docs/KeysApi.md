# Phrase::KeysApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**key_create**](KeysApi.md#key_create) | **POST** /projects/{project_id}/keys | Create a key
[**key_delete**](KeysApi.md#key_delete) | **DELETE** /projects/{project_id}/keys/{id} | Delete a key
[**key_show**](KeysApi.md#key_show) | **GET** /projects/{project_id}/keys/{id} | Get a single key
[**key_update**](KeysApi.md#key_update) | **PATCH** /projects/{project_id}/keys/{id} | Update a key
[**keys_delete_collection**](KeysApi.md#keys_delete_collection) | **DELETE** /projects/{project_id}/keys | Delete collection of keys
[**keys_exclude**](KeysApi.md#keys_exclude) | **PATCH** /projects/{project_id}/keys/exclude | Exclude a locale on a collection of keys
[**keys_include**](KeysApi.md#keys_include) | **PATCH** /projects/{project_id}/keys/include | Include a locale on a collection of keys
[**keys_list**](KeysApi.md#keys_list) | **GET** /projects/{project_id}/keys | List keys
[**keys_search**](KeysApi.md#keys_search) | **POST** /projects/{project_id}/keys/search | Search keys
[**keys_tag**](KeysApi.md#keys_tag) | **PATCH** /projects/{project_id}/keys/tag | Add tags to collection of keys
[**keys_untag**](KeysApi.md#keys_untag) | **PATCH** /projects/{project_id}/keys/untag | Remove tags from collection of keys



## key_create

> TranslationKeyDetails key_create(project_id, key_create_parameters, opts)

Create a key

Create a new key.

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

api_instance = Phrase::KeysApi.new
project_id = 'project_id_example' # String | Project ID
key_create_parameters = Phrase::KeyCreateParameters.new({name: 'home.index.headline'}) # KeyCreateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Create a key
  result = api_instance.key_create(project_id, key_create_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling KeysApi->key_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **key_create_parameters** | [**KeyCreateParameters**](KeyCreateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**TranslationKeyDetails**](TranslationKeyDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## key_delete

> key_delete(project_id, id, opts)

Delete a key

Delete an existing key.

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

api_instance = Phrase::KeysApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Delete a key
  api_instance.key_delete(project_id, id, opts)
rescue Phrase::ApiError => e
  puts "Exception when calling KeysApi->key_delete: #{e}"
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


## key_show

> TranslationKeyDetails key_show(project_id, id, opts)

Get a single key

Get details on a single key for a given project.

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

api_instance = Phrase::KeysApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch' # String | specify the branch to use
}

begin
  #Get a single key
  result = api_instance.key_show(project_id, id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling KeysApi->key_show: #{e}"
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

Response<([**TranslationKeyDetails**](TranslationKeyDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## key_update

> TranslationKeyDetails key_update(project_id, id, key_update_parameters, opts)

Update a key

Update an existing key.

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

api_instance = Phrase::KeysApi.new
project_id = 'project_id_example' # String | Project ID
id = 'id_example' # String | ID
key_update_parameters = Phrase::KeyUpdateParameters.new # KeyUpdateParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Update a key
  result = api_instance.key_update(project_id, id, key_update_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling KeysApi->key_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **id** | **String**| ID | 
 **key_update_parameters** | [**KeyUpdateParameters**](KeyUpdateParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**TranslationKeyDetails**](TranslationKeyDetails.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## keys_delete_collection

> AffectedResources keys_delete_collection(project_id, opts)

Delete collection of keys

Delete all keys matching query. Same constraints as list. Please limit the number of affected keys to about 1,000 as you might experience timeouts otherwise.

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

api_instance = Phrase::KeysApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  branch: 'my-feature-branch', # String | specify the branch to use
  q: 'mykey* translated:true', # String | Specify a query to do broad search for keys by name (including wildcards).  The following qualifiers are also supported in the search term:  - `ids:key_id,...` for queries on a comma-separated list of ids - `name:key_name` for text queries on exact key names - spaces, commas, and colons  need to be escaped with double backslashes - `tags:tag_name` to filter for keys with certain tags - `translated:{true|false}` for translation status (also requires `locale_id` to be specified) - `updated_at:{>=|<=}2013-02-21T00:00:00Z` for date range queries - `unmentioned_in_upload:upload_id,...` to filter keys unmentioned within upload. When multiple upload IDs provided, matches only keys not mentioned in **all** uploads  **Caution:** Query parameters with empty values will be treated as though they are not included in the request and will be ignored.  Find more examples [here](/en/api/strings/usage-examples). 
  locale_id: 'abcd1234abcd1234abcd1234abcd1234' # String | Locale used to determine the translation state of a key when filtering for untranslated or translated keys.
}

begin
  #Delete collection of keys
  result = api_instance.keys_delete_collection(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling KeysApi->keys_delete_collection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 
 **q** | **String**| Specify a query to do broad search for keys by name (including wildcards).  The following qualifiers are also supported in the search term:  - &#x60;ids:key_id,...&#x60; for queries on a comma-separated list of ids - &#x60;name:key_name&#x60; for text queries on exact key names - spaces, commas, and colons  need to be escaped with double backslashes - &#x60;tags:tag_name&#x60; to filter for keys with certain tags - &#x60;translated:{true|false}&#x60; for translation status (also requires &#x60;locale_id&#x60; to be specified) - &#x60;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&#x60; for date range queries - &#x60;unmentioned_in_upload:upload_id,...&#x60; to filter keys unmentioned within upload. When multiple upload IDs provided, matches only keys not mentioned in **all** uploads  **Caution:** Query parameters with empty values will be treated as though they are not included in the request and will be ignored.  Find more examples [here](/en/api/strings/usage-examples).  | [optional] 
 **locale_id** | **String**| Locale used to determine the translation state of a key when filtering for untranslated or translated keys. | [optional] 

### Return type

Response<([**AffectedResources**](AffectedResources.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## keys_exclude

> AffectedResources keys_exclude(project_id, keys_exclude_parameters, opts)

Exclude a locale on a collection of keys

Exclude a locale on keys matching query. Same constraints as list.

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

api_instance = Phrase::KeysApi.new
project_id = 'project_id_example' # String | Project ID
keys_exclude_parameters = Phrase::KeysExcludeParameters.new # KeysExcludeParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Exclude a locale on a collection of keys
  result = api_instance.keys_exclude(project_id, keys_exclude_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling KeysApi->keys_exclude: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **keys_exclude_parameters** | [**KeysExcludeParameters**](KeysExcludeParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**AffectedResources**](AffectedResources.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## keys_include

> AffectedResources keys_include(project_id, keys_include_parameters, opts)

Include a locale on a collection of keys

Include a locale on keys matching query. Same constraints as list.

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

api_instance = Phrase::KeysApi.new
project_id = 'project_id_example' # String | Project ID
keys_include_parameters = Phrase::KeysIncludeParameters.new # KeysIncludeParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Include a locale on a collection of keys
  result = api_instance.keys_include(project_id, keys_include_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling KeysApi->keys_include: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **keys_include_parameters** | [**KeysIncludeParameters**](KeysIncludeParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**AffectedResources**](AffectedResources.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## keys_list

> Array&lt;TranslationKey&gt; keys_list(project_id, opts)

List keys

List all keys for the given project. Alternatively you can POST requests to /search.

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

api_instance = Phrase::KeysApi.new
project_id = 'project_id_example' # String | Project ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25, # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
  branch: 'my-feature-branch', # String | specify the branch to use
  sort: 'updated_at', # String | Sort by field. Can be one of: name, created_at, updated_at.
  order: 'desc', # String | Order direction. Can be one of: asc, desc.
  q: 'mykey* translated:true', # String | Specify a query to do broad search for keys by name (including wildcards).  The following qualifiers are also supported in the search term:  - `ids:key_id,...` for queries on a comma-separated list of ids - `name:key_name` for text queries on exact key names - spaces, commas, and colons  need to be escaped with double backslashes - `tags:tag_name` to filter for keys with certain tags - `translated:{true|false}` for translation status (also requires `locale_id` to be specified) - `updated_at:{>=|<=}2013-02-21T00:00:00Z` for date range queries - `unmentioned_in_upload:upload_id,...` to filter keys unmentioned within upload. When multiple upload IDs provided, matches only keys not mentioned in **all** uploads  **Caution:** Query parameters with empty values will be treated as though they are not included in the request and will be ignored.  Find more examples [here](/en/api/strings/usage-examples). 
  locale_id: 'abcd1234abcd1234abcd1234abcd1234' # String | Locale used to determine the translation state of a key when filtering for untranslated or translated keys.
}

begin
  #List keys
  result = api_instance.keys_list(project_id, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling KeysApi->keys_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 
 **branch** | **String**| specify the branch to use | [optional] 
 **sort** | **String**| Sort by field. Can be one of: name, created_at, updated_at. | [optional] 
 **order** | **String**| Order direction. Can be one of: asc, desc. | [optional] 
 **q** | **String**| Specify a query to do broad search for keys by name (including wildcards).  The following qualifiers are also supported in the search term:  - &#x60;ids:key_id,...&#x60; for queries on a comma-separated list of ids - &#x60;name:key_name&#x60; for text queries on exact key names - spaces, commas, and colons  need to be escaped with double backslashes - &#x60;tags:tag_name&#x60; to filter for keys with certain tags - &#x60;translated:{true|false}&#x60; for translation status (also requires &#x60;locale_id&#x60; to be specified) - &#x60;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&#x60; for date range queries - &#x60;unmentioned_in_upload:upload_id,...&#x60; to filter keys unmentioned within upload. When multiple upload IDs provided, matches only keys not mentioned in **all** uploads  **Caution:** Query parameters with empty values will be treated as though they are not included in the request and will be ignored.  Find more examples [here](/en/api/strings/usage-examples).  | [optional] 
 **locale_id** | **String**| Locale used to determine the translation state of a key when filtering for untranslated or translated keys. | [optional] 

### Return type

Response<([**Array&lt;TranslationKey&gt;**](TranslationKey.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## keys_search

> Array&lt;TranslationKey&gt; keys_search(project_id, keys_search_parameters, opts)

Search keys

Search keys for the given project matching query.

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

api_instance = Phrase::KeysApi.new
project_id = 'project_id_example' # String | Project ID
keys_search_parameters = Phrase::KeysSearchParameters.new # KeysSearchParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example', # String | Two-Factor-Authentication token (optional)
  page: 1, # Integer | Page number
  per_page: 25 # Integer | Limit on the number of objects to be returned, between 1 and 100. 25 by default
}

begin
  #Search keys
  result = api_instance.keys_search(project_id, keys_search_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling KeysApi->keys_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **keys_search_parameters** | [**KeysSearchParameters**](KeysSearchParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 
 **page** | **Integer**| Page number | [optional] 
 **per_page** | **Integer**| Limit on the number of objects to be returned, between 1 and 100. 25 by default | [optional] 

### Return type

Response<([**Array&lt;TranslationKey&gt;**](TranslationKey.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## keys_tag

> AffectedResources keys_tag(project_id, keys_tag_parameters, opts)

Add tags to collection of keys

Tags all keys matching query. Same constraints as list.

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

api_instance = Phrase::KeysApi.new
project_id = 'project_id_example' # String | Project ID
keys_tag_parameters = Phrase::KeysTagParameters.new # KeysTagParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Add tags to collection of keys
  result = api_instance.keys_tag(project_id, keys_tag_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling KeysApi->keys_tag: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **keys_tag_parameters** | [**KeysTagParameters**](KeysTagParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**AffectedResources**](AffectedResources.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## keys_untag

> AffectedResources keys_untag(project_id, keys_untag_parameters, opts)

Remove tags from collection of keys

Removes specified tags from keys matching query.

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

api_instance = Phrase::KeysApi.new
project_id = 'project_id_example' # String | Project ID
keys_untag_parameters = Phrase::KeysUntagParameters.new # KeysUntagParameters | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Remove tags from collection of keys
  result = api_instance.keys_untag(project_id, keys_untag_parameters, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling KeysApi->keys_untag: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **keys_untag_parameters** | [**KeysUntagParameters**](KeysUntagParameters.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**AffectedResources**](AffectedResources.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

