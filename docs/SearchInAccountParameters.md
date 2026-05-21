# Phrase::SearchInAccountParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **String** | Search query | [optional] 
**locale_code** | **String** | Locale code | [optional] 
**page** | **Integer** | Page | [optional] 
**per_page** | **Integer** | Number of results per page | [optional] 
**project_ids** | **Array&lt;String&gt;** | Limit the search to the given project codes. When omitted, the search spans every project the user can access in this account.  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::SearchInAccountParameters.new(query: keyword,
                                 locale_code: de_DE,
                                 page: 1,
                                 per_page: 25,
                                 project_ids: [&quot;abcd1234abcd1234abcd1234abcd1234&quot;])
```


