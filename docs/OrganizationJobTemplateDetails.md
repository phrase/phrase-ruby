# Phrase::OrganizationJobTemplateDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**briefing** | **String** |  | [optional] 
**autotranslate_enabled** | **Boolean** | When &#x60;true&#x60;, jobs created from this template are auto-translated on creation. Maps to the &#x60;autotranslate&#x60; field on the request body.  | [optional] 
**source_locale_id** | **String** | Optional. ID of the source locale used by jobs created from this template. When omitted, the project&#39;s default source locale is used.  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**owner** | [**UserPreview**](UserPreview.md) |  | [optional] 
**creator** | [**UserPreview**](UserPreview.md) |  | [optional] 
**locales** | [**Array&lt;LocalePreview&gt;**](LocalePreview.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::OrganizationJobTemplateDetails.new(id: null,
                                 name: null,
                                 briefing: null,
                                 autotranslate_enabled: null,
                                 source_locale_id: null,
                                 created_at: null,
                                 updated_at: null,
                                 owner: null,
                                 creator: null,
                                 locales: null)
```


