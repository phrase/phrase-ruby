# Phrase::KeyFormatAnnotationsList200ResponseInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_format** | **String** | The file format that produced this annotation.  | [optional] 
**original_representation** | **String** | The original file-format snippet captured when the key was imported. Returned as-is, may contain multi-line content.  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::KeyFormatAnnotationsList200ResponseInner.new(file_format: xliff_2,
                                 original_representation: &lt;note category&#x3D;&quot;meaning&quot;&gt;header&lt;/note&gt;)
```


