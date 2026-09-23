# Phrase::JobTemplateLocaleUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**locale_id** | **String** | locale id | [optional] 
**user_ids** | **Array&lt;String&gt;** | Array of user ids to be assigned to the job template locale | [optional] 
**reviewer_ids** | **Array&lt;String&gt;** | Array of reviewer ids to be assigned to the job template locale | [optional] 
**translator_team_ids** | **Array&lt;String&gt;** | Array of team ids to be assigned to the job locale as translators | [optional] 
**reviewer_team_ids** | **Array&lt;String&gt;** | Array of team ids to be assigned to the job locale as reviewers | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::JobTemplateLocaleUpdateParameters.new(branch: 'my-feature-branch',
                                 locale_id: 'abcd1234cdef1234abcd1234cdef1234',
                                 user_ids: ["abcd1234cdef1234abcd1234cdef1234"],
                                 reviewer_ids: ["abcd1234cdef1234abcd1234cdef1234"],
                                 translator_team_ids: ["abcd1234cdef1234abcd1234cdef1234"],
                                 reviewer_team_ids: ["abcd1234cdef1234abcd1234cdef1234"])
```


