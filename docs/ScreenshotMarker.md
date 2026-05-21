# Phrase::ScreenshotMarker

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**presentation** | [**ScreenshotMarkerPresentation**](ScreenshotMarkerPresentation.md) |  | [optional] 
**presentation_type** | **String** | Marker presentation style. The default value is &#x60;default&#x60;.  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**translation_key** | [**TranslationKey**](TranslationKey.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ScreenshotMarker.new(id: null,
                                 presentation: null,
                                 presentation_type: null,
                                 created_at: null,
                                 updated_at: null,
                                 translation_key: null)
```


