# Phrase::ScreenshotCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the screenshot | [optional] 
**description** | **String** | Description of the screenshot | [optional] 
**filename** | **File** | Screenshot file | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ScreenshotCreateParameters.new(name: A screenshot name,
                                 description: A screenshot description,
                                 filename: null)
```


