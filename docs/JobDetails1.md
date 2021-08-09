# Phrase::JobDetails1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owner** | [**UserPreview**](UserPreview.md) |  | [optional] 
**job_tag_name** | **String** |  | [optional] 
**source_locale** | [**LocalePreview**](LocalePreview.md) |  | [optional] 
**locales** | [**Array&lt;LocalePreview&gt;**](LocalePreview.md) |  | [optional] 
**keys** | [**Array&lt;KeyPreview&gt;**](KeyPreview.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobDetails1.new(owner: null,
                                 job_tag_name: null,
                                 source_locale: null,
                                 locales: null,
                                 keys: null)
```


