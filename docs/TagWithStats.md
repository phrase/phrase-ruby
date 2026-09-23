# Phrase::TagWithStats

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**keys_count** | **Integer** |  | [optional] 
**system_tag** | **Boolean** | &#x60;true&#x60; when the tag was created automatically by the system (e.g. for jobs, uploads, or Figma attachments) rather than by a user.  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**statistics** | [**Array&lt;TagWithStats1Statistics1&gt;**](TagWithStats1Statistics1.md) |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::TagWithStats.new(name: nil,
                                 keys_count: nil,
                                 system_tag: nil,
                                 created_at: nil,
                                 updated_at: nil,
                                 statistics: nil)
```


