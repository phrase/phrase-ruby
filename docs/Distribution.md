# Phrase::Distribution

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**project** | [**ProjectShort**](ProjectShort.md) |  | [optional] 
**platforms** | **Array&lt;String&gt;** |  | [optional] 
**locales** | [**Array&lt;LocalePreview&gt;**](LocalePreview.md) |  | [optional] 
**releases** | [**Array&lt;ReleasePreview&gt;**](ReleasePreview.md) |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**deleted_at** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::Distribution.new(id: null,
                                 name: null,
                                 project: null,
                                 platforms: null,
                                 locales: null,
                                 releases: null,
                                 created_at: null,
                                 deleted_at: null)
```


