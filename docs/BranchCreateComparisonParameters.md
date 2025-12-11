# Phrase::BranchCreateComparisonParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**direction** | **String** | direction of comparison, possible values are sync or merge (only for v2 branches) | [optional] [default to &#39;merge&#39;]

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::BranchCreateComparisonParameters.new(direction: merge)
```


