# Phrase::Note

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique code identifying the note. | [optional] 
**body** | **String** | Markdown-formatted content of the note (max 65,535 characters). | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::Note.new(id: 'abcd1234efgh5678',
                                 body: '## Project context

This project contains all marketing strings.',
                                 created_at: nil,
                                 updated_at: nil)
```


