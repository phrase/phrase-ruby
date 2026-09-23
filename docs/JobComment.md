# Phrase::JobComment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**message** | **String** |  | [optional] 
**job_id** | **String** |  | [optional] 
**user** | [**UserPreview**](UserPreview.md) |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**mentioned_users** | [**Array&lt;UserPreview&gt;**](UserPreview.md) |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::JobComment.new(id: nil,
                                 message: nil,
                                 job_id: nil,
                                 user: nil,
                                 created_at: nil,
                                 updated_at: nil,
                                 mentioned_users: nil)
```


