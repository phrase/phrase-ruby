# Phrase::ScreenshotMarkerCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**key_id** | **String** | Specify the Key ID which should be highlighted on the specified screenshot. The Key must belong to the project. | 
**presentation** | **String** | Presentation details of the screenshot marker in JSON format.  Each Screenshot Marker is represented as a rectangular shaped highlight box with the name of the specified Key attached. You can specify the marker position on the screenshot (&#x60;x&#x60;-axis and &#x60;y&#x60;-axis in pixels) from the top left corner of the screenshot and the dimensions of the marker itself (&#x60;w&#x60; and &#x60;h&#x60; in pixels).  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ScreenshotMarkerCreateParameters.new(branch: my-feature-branch,
                                 key_id: abcd1234abcd1234abcd1234abcd1234,
                                 presentation: { &quot;x&quot;: 100, &quot;y&quot;: 100, &quot;w&quot;: 100, &quot;h&quot;: 100 })
```


