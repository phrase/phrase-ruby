# Phrase::CommentsListParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | Specify the branch to use | [optional] 
**query** | **String** | Search query for comment messages | [optional] 
**locale_ids** | **Array&lt;String&gt;** | Search comments by their assigned locales | [optional] 
**filters** | **Array&lt;String&gt;** | Specify filters to find comments by | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::CommentsListParameters.new(branch: my-feature-branch,
                                 query: Some comment content,
                                 locale_ids: [&quot;someId&quot;,&quot;otherId&quot;],
                                 filters: [&quot;read&quot;,&quot;unread&quot;])
```


