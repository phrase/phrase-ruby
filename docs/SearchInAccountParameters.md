# Phrase::SearchInAccountParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **String** | Search query | [optional] 
**locale_code** | **String** | Locale code | [optional] 
**page** | **Integer** | Page | [optional] 
**per_page** | **Integer** | Number of results per page | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::SearchInAccountParameters.new(query: keyword,
                                 locale_code: de_DE,
                                 page: 1,
                                 per_page: 25)
```


