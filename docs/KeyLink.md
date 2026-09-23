# Phrase::KeyLink

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **Time** | The timestamp when the link was created. | [optional] 
**updated_at** | **Time** | The timestamp when the link was last updated. | [optional] 
**created_by** | [**UserPreview**](UserPreview.md) |  | [optional] 
**updated_by** | [**UserPreview**](UserPreview.md) |  | [optional] 
**account** | [**Account**](Account.md) |  | [optional] 
**parent** | [**KeyPreview**](KeyPreview.md) |  | [optional] 
**children** | [**Array&lt;KeyPreview&gt;**](KeyPreview.md) | The child translation keys linked to the parent. | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::KeyLink.new(created_at: nil,
                                 updated_at: nil,
                                 created_by: nil,
                                 updated_by: nil,
                                 account: nil,
                                 parent: nil,
                                 children: nil)
```


