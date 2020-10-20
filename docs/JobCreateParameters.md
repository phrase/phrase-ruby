# Phrase::JobCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**name** | **String** | Job name | [optional] 
**briefing** | **String** | Briefing for the translators | [optional] 
**due_date** | **DateTime** | Date the job should be finished | [optional] 
**ticket_url** | **String** | URL to a ticket for this job (e.g. Jira, Trello) | [optional] 
**tags** | **Array&lt;String&gt;** | tags of keys that should be included within the job | [optional] 
**translation_key_ids** | **Array&lt;String&gt;** | ids of keys that should be included within the job | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobCreateParameters.new(branch: my-feature-branch,
                                 name: de,
                                 briefing: de-DE,
                                 due_date: null,
                                 ticket_url: https://example.atlassian.net/browse/FOO,
                                 tags: [&quot;myUploadTag&quot;],
                                 translation_key_ids: [&quot;abcd1234cdef1234abcd1234cdef1234&quot;])
```


