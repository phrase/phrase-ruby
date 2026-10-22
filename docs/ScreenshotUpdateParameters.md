# Phrase::ScreenshotUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**name** | **String** | Name of the screenshot | [optional] 
**description** | **String** | Description of the screenshot. Send an empty string or &#x60;null&#x60; to clear the value; omit the field to leave it unchanged. The Phrase CLI drops &#x60;null&#x60; values before sending, so use an empty string there. | [optional] 
**filename** | **File** | Screenshot file | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::ScreenshotUpdateParameters.new(branch: 'my-feature-branch',
                                 name: 'A screenshot name',
                                 description: 'A screenshot description',
                                 filename: File.new('/path/to/file'))
```


