# Phrase::KeyLink

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **Time** | The timestamp when the link was created. | 
**updated_at** | **Time** | The timestamp when the link was last updated. | 
**created_by** | [**UserPreview**](UserPreview.md) |  | 
**updated_by** | [**UserPreview**](UserPreview.md) |  | 
**account** | [**Account**](Account.md) |  | 
**parent** | [**KeyPreview**](KeyPreview.md) |  | 
**children** | [**Array&lt;KeyPreview&gt;**](KeyPreview.md) | The child translation keys linked to the parent. | 

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


