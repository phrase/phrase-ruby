# Phrase::Distribution

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**project** | [**ProjectShort**](ProjectShort.md) |  | [optional] 
**platforms** | **Array&lt;String&gt;** |  | [optional] 
**release_count** | **Integer** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**deleted_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::Distribution.new(id: nil,
                                 name: nil,
                                 project: nil,
                                 platforms: nil,
                                 release_count: nil,
                                 created_at: nil,
                                 updated_at: nil,
                                 deleted_at: nil)
```


