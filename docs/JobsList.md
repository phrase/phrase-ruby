# Phrase::JobsList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**owned_by** | **String** | filter by user owning job | [optional] 
**assigned_to** | **String** | filter by user assigned to job | [optional] 
**state** | **String** | filter by state of job Valid states are &lt;code&gt;draft&lt;/code&gt;, &lt;code&gt;in_progress&lt;/code&gt;, &lt;code&gt;completed&lt;/code&gt; | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::JobsList.new(branch: my-feature-branch,
                                 owned_by: abcd1234cdef1234abcd1234cdef1234,
                                 assigned_to: abcd1234cdef1234abcd1234cdef1234,
                                 state: completed)
```


