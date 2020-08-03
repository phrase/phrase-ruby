# Phrase::TeamDetail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**projects** | [**Array&lt;Project&gt;**](Project.md) |  | [optional] 
**spaces** | [**Array&lt;Space&gt;**](Space.md) |  | [optional] 
**users** | [**Array&lt;User&gt;**](User.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::TeamDetail.new(id: null,
                                 name: null,
                                 created_at: null,
                                 updated_at: null,
                                 projects: null,
                                 spaces: null,
                                 users: null)
```


