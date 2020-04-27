# Phrase::GitlabSyncImport

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | Account ID to specify the actual account the GitLab Sync should be created in. Required if the requesting user is a member of multiple accounts. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::GitlabSyncImport.new(account_id: abcd1234)
```


