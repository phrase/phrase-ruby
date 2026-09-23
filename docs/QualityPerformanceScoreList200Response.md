# Phrase::QualityPerformanceScoreList200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | [**ErrorError**](ErrorError.md) |  | [optional] 
**data** | [**QualityPerformanceScoreList200ResponseAnyOfData**](QualityPerformanceScoreList200ResponseAnyOfData.md) |  | [optional] 
**errors** | [**Array&lt;QualityPerformanceScoreList200ResponseAnyOfErrorsInner&gt;**](QualityPerformanceScoreList200ResponseAnyOfErrorsInner.md) | Array of errors for any failing translation IDs | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::QualityPerformanceScoreList200Response.new(error: nil,
                                 data: nil,
                                 errors: nil)
```


