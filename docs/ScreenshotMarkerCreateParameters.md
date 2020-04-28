# Phrase::ScreenshotMarkerCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key_id** | **String** | Specify the Key ID which should be highlighted on the specified screenshot. The Key must belong to the project. | [optional] 
**presentation** | **String** | Presentation details of the screenshot marker in JSON format.&lt;br/&gt;&lt;br/&gt;Each Screenshot Marker is represented as a rectangular shaped highlight box with the name of the specified Key attached. You can specify the marker position on the screenshot (&lt;code&gt;x&lt;/code&gt;-axis and &lt;code&gt;y&lt;/code&gt;-axis in pixels) from the top left corner of the screenshot and the dimensions of the marker itself (&lt;code&gt;w&lt;/code&gt; and &lt;code&gt;h&lt;/code&gt; in pixels). | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ScreenshotMarkerCreateParameters.new(key_id: abcd1234abcd1234abcd1234abcd1234,
                                 presentation: { &quot;x&quot;: 100, &quot;y&quot;: 100, &quot;w&quot;: 100, &quot;h&quot;: 100 })
```


