# Phrase::Tag

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**keys_count** | **Integer** |  | [optional] 
**system_tag** | **Boolean** | &#x60;true&#x60; when the tag was created automatically by the system (e.g. for jobs, uploads, or Figma attachments) rather than by a user.  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::Tag.new(name: null,
                                 keys_count: null,
                                 system_tag: null,
                                 created_at: null,
                                 updated_at: null)
```


