# Phrase::CheckIssue

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**check_name** | **String** | Identifier of the check that reported this issue. One of: &#x60;translation_content_length&#x60;, &#x60;translation_placeholder_usage&#x60;, &#x60;translation_glossary_usage&#x60;. | [optional] 
**state** | **String** | Current state of the check issue. One of: &#x60;active&#x60;, &#x60;solved&#x60;, &#x60;dismissed&#x60;. | [optional] 
**description** | **String** | Human-readable description of the reported issue, always in English. This message is intended for display only. Its wording may change at any time and it should not be parsed or relied upon programmatically. | [optional] 
**dismissed_at** | **Time** |  | [optional] 
**solved_at** | **Time** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**translation** | [**Translation**](Translation.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::CheckIssue.new(id: null,
                                 check_name: null,
                                 state: null,
                                 description: null,
                                 dismissed_at: null,
                                 solved_at: null,
                                 created_at: null,
                                 updated_at: null,
                                 translation: null)
```


