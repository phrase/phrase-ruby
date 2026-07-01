# Phrase::IcuSkeletonError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | **String** | Human-readable description of the ICU message format parse failure. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::IcuSkeletonError.new(error: Expected &quot;#&quot; but &quot;x&quot; found.)
```


