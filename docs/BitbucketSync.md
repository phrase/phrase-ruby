# Phrase::BitbucketSync

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**repository_name** | **String** |  | [optional] 
**last_export_to_bitbucket_at** | **Time** |  | [optional] 
**last_import_from_bitbucket_at** | **Time** |  | [optional] 
**valid_phraseapp_yaml** | **Boolean** |  | [optional] 
**phraseapp_projects** | [**Array&lt;ProjectShort&gt;**](ProjectShort.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::BitbucketSync.new(id: null,
                                 repository_name: null,
                                 last_export_to_bitbucket_at: null,
                                 last_import_from_bitbucket_at: null,
                                 valid_phraseapp_yaml: null,
                                 phraseapp_projects: null)
```


