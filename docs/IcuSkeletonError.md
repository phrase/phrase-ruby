# Phrase::IcuSkeletonError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | **String** | Human-readable description of the ICU message format parse failure. | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::IcuSkeletonError.new(error: 'Expected "#" but "x" found.')
```


