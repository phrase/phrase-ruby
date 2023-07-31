# Phrase::GitlabSyncHistory

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** |  | [optional] 
**action** | **String** |  | [optional] 
**errors** | [**Array&lt;GitlabSyncHistoryErrors&gt;**](GitlabSyncHistoryErrors.md) |  | [optional] 
**date** | **DateTime** |  | [optional] 
**details** | [**Object**](.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::GitlabSyncHistory.new(status: null,
                                 action: null,
                                 errors: null,
                                 date: null,
                                 details: null)
```


