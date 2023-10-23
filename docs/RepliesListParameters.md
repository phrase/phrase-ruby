# Phrase::RepliesListParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | Specify the branch to use | [optional] 
**query** | **String** | Search query for comment messages | [optional] 
**filters** | **Array&lt;String&gt;** | Specify filters to find comments by | [optional] 
**order** | **String** | Specify ordering of comments | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::RepliesListParameters.new(branch: my-feature-branch,
                                 query: Some comment content,
                                 filters: [&quot;read&quot;,&quot;unread&quot;],
                                 order: desc)
```


