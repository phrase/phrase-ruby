# Phrase::JobCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**name** | **String** | Job name | [optional] 
**briefing** | **String** | Briefing for the translators | [optional] 
**due_date** | **String** | Date the job should be finished | [optional] 
**tags** | **String** | tags of keys that should be included within the job | [optional] 
**translation_key_ids** | **String** | ids of keys that should be included within the job | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobCreate.new(branch: my-feature-branch,
                                 name: de,
                                 briefing: de-DE,
                                 due_date: 2017-08-15,
                                 tags: [&quot;myUploadTag&quot;],
                                 translation_key_ids: [&quot;abcd1234cdef1234abcd1234cdef1234&quot;])
```


