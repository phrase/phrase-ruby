# Phrase::JobTemplateDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**briefing** | **String** |  | [optional] 
**project** | [**ProjectShort**](ProjectShort.md) |  | [optional] 
**branch** | [**Branch**](Branch.md) |  | [optional] 
**autotranslate_enabled** | **Boolean** | When &#x60;true&#x60;, jobs created from this template are auto-translated on creation.  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**owner** | [**UserPreview**](UserPreview.md) |  | [optional] 
**creator** | [**UserPreview**](UserPreview.md) |  | [optional] 
**locales** | [**Array&lt;LocalePreview&gt;**](LocalePreview.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobTemplateDetails.new(id: null,
                                 name: null,
                                 briefing: null,
                                 project: null,
                                 branch: null,
                                 autotranslate_enabled: null,
                                 created_at: null,
                                 updated_at: null,
                                 owner: null,
                                 creator: null,
                                 locales: null)
```


