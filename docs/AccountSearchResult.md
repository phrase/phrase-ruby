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
require 'phrase'

instance = Phrase::AccountSearchResult.new(query: nil,
                                 excerpt: nil,
                                 key: nil,
                                 locale: nil,
                                 project: nil,
                                 translation: nil,
                                 other_translations: nil)
```


