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
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::GlossaryTerm.new(id: null,
                                 term: null,
                                 description: null,
                                 translatable: null,
                                 case_sensitive: null,
                                 translations: null,
                                 created_at: null,
                                 updated_at: null)
```


