# Phrase::GitlabSyncUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | Account ID to specify the actual account the GitLab Sync should be created in. Required if the requesting user is a member of multiple accounts. | [optional] 
**phrase_project_code** | **String** | Code of the related Phrase Project. | [optional] 
**gitlab_project_id** | **Integer** | ID of the related GitLab Project. | [optional] 
**gitlab_branch_name** | **String** | Name of the GitLab Branch. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::GitlabSyncUpdateParameters.new(account_id: abcd1234,
                                 phrase_project_code: 3456abcd,
                                 gitlab_project_id: 12345,
                                 gitlab_branch_name: feature-development)
```


