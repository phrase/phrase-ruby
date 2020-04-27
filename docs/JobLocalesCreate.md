# Phrase::JobLocalesCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**locale_id** | **String** | locale id | [optional] 
**user_ids** | **String** | Array of user ids to be assigned to the job locale | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobLocalesCreate.new(branch: my-feature-branch,
                                 locale_id: abcd1234cdef1234abcd1234cdef1234,
                                 user_ids: [&quot;abcd1234cdef1234abcd1234cdef1234&quot;])
```


