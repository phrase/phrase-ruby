# Phrase::GlossaryTerm

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**term** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**translatable** | **Boolean** |  | [optional] 
**case_sensitive** | **Boolean** |  | [optional] 
**translations** | [**Array&lt;GlossaryTermTranslation&gt;**](GlossaryTermTranslation.md) |  | [optional] 
**glossary** | [**GlossaryTermGlossary**](GlossaryTermGlossary.md) |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::GlossaryTerm.new(id: nil,
                                 term: nil,
                                 description: nil,
                                 translatable: nil,
                                 case_sensitive: nil,
                                 translations: nil,
                                 glossary: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


