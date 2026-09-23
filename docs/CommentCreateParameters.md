# Phrase::CommentCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** | Comment message | 
**branch** | **String** | specify the branch to use | [optional] 
**locale_ids** | **Array&lt;String&gt;** | specify the locales for the comment | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::CommentCreateParameters.new(message: 'Some message...',
                                 branch: 'my-feature-branch',
                                 locale_ids: ["someId","someOtherId"])
```


