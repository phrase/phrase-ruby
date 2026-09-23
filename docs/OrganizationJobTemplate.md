# Phrase::OrganizationJobTemplate

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

## Code Sample

```ruby
require 'phrase'

instance = Phrase::OrganizationJobTemplate.new(id: nil,
                                 name: nil,
                                 briefing: nil,
                                 autotranslate_enabled: nil,
                                 source_locale_id: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


