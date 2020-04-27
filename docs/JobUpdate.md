# Phrase::JobUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**name** | **String** | Job name | [optional] 
**briefing** | **String** | Briefing for the translators | [optional] 
**due_date** | **String** | Date the job should be finished | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobUpdate.new(branch: my-feature-branch,
                                 name: de,
                                 briefing: de-DE,
                                 due_date: 2017-08-15)
```


