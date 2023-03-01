# Phrase::OrganizationJobTemplateDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**briefing** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**owner** | [**UserPreview**](UserPreview.md) |  | [optional] 
**creator** | [**UserPreview**](UserPreview.md) |  | [optional] 
**locales** | [**Array&lt;LocalePreview&gt;**](LocalePreview.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::OrganizationJobTemplateDetails.new(id: null,
                                 name: null,
                                 briefing: null,
                                 created_at: null,
                                 updated_at: null,
                                 owner: null,
                                 creator: null,
                                 locales: null)
```


