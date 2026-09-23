# Phrase::Team

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**projects** | [**Array&lt;Project&gt;**](Project.md) |  | [optional] 
**spaces** | [**Array&lt;Space&gt;**](Space.md) |  | [optional] 
**users** | [**Array&lt;UserPreview&gt;**](UserPreview.md) |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::Team.new(id: nil,
                                 name: nil,
                                 created_at: nil,
                                 updated_at: nil,
                                 projects: nil,
                                 spaces: nil,
                                 users: nil)
```


