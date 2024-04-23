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
require 'Phrase'

instance = Phrase::KeyLink.new(created_at: null,
                                 updated_at: null,
                                 created_by: null,
                                 updated_by: null,
                                 account: null,
                                 parent: null,
                                 children: null)
```


