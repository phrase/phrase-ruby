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
require 'Phrase'

instance = Phrase::Team.new(id: null,
                                 name: null,
                                 created_at: null,
                                 updated_at: null,
                                 projects: null,
                                 spaces: null,
                                 users: null)
```


