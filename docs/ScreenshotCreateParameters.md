# Phrase::ScreenshotCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**name** | **String** | Name of the screenshot | [optional] 
**description** | **String** | Description of the screenshot | [optional] 
**filename** | **File** | Screenshot file | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ScreenshotCreateParameters.new(branch: my-feature-branch,
                                 name: A screenshot name,
                                 description: A screenshot description,
                                 filename: null)
```


