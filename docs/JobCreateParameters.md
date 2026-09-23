# Phrase::JobCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**name** | **String** | Job name | 
**source_locale_id** | **String** | The API id of the source language | [optional] 
**briefing** | **String** | Briefing for the translators | [optional] 
**due_date** | **Time** | Date the job should be finished | [optional] 
**ticket_url** | **String** | URL to a ticket for this job (e.g. Jira, Trello) | [optional] 
**tags** | **Array&lt;String&gt;** | tags of keys that should be included within the job.  *Note: a tag matches every key currently carrying that tag, not just the ones you just tagged. For example, if hundreds of pre-existing keys already share the tag &#x60;myUploadTag&#x60;, adding it here pulls in every one of them, not only the key you just tagged. Use &#x60;translation_key_ids&#x60; to scope the job to specific keys instead.*  | [optional] 
**translation_key_ids** | **Array&lt;String&gt;** | ids of keys that should be included within the job | [optional] 
**target_locale_ids** | **Array&lt;String&gt;** | List of target locales for the job. Mutually exclusive with &#x60;job_template_id&#x60;. | [optional] 
**job_template_id** | **String** | id of a job template you would like to model the created job after. Any manually added parameters will take preference over template attributes. Mutually exclusive with &#x60;target_locale_ids&#x60;. | [optional] 
**autotranslate** | **Boolean** | Automatically translate the job using machine translation. | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::JobCreateParameters.new(branch: 'my-feature-branch',
                                 name: 'de',
                                 source_locale_id: 'abcd1234cdef1234abcd1234cdef1234',
                                 briefing: 'de-DE',
                                 due_date: nil,
                                 ticket_url: 'https://example.atlassian.net/browse/FOO',
                                 tags: ["myUploadTag"],
                                 translation_key_ids: ["abcd1234cdef1234abcd1234cdef1234"],
                                 target_locale_ids: ["abcd1234cdef1234abcd1234cdef1234"],
                                 job_template_id: 'abcd1234cdef1234abcd1234cdef1234',
                                 autotranslate: true)
```


