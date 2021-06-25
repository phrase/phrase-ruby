# Phrase::AccountSearchResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **String** |  | [optional] 
**excerpt** | **String** |  | [optional] 
**key** | [**KeyPreview**](KeyPreview.md) |  | [optional] 
**locale** | [**LocalePreview**](LocalePreview.md) |  | [optional] 
**project** | [**Project**](Project.md) |  | [optional] 
**translation** | [**Translation**](Translation.md) |  | [optional] 
**other_translations** | [**Array&lt;Translation&gt;**](Translation.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::AccountSearchResult.new(query: null,
                                 excerpt: null,
                                 key: null,
                                 locale: null,
                                 project: null,
                                 translation: null,
                                 other_translations: null)
```


