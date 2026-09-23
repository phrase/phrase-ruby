# Phrase::Project

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**slug** | **String** |  | [optional] 
**main_format** | **String** |  | [optional] 
**project_image_url** | **String** |  | [optional] 
**media** | **String** |  | [optional] 
**account** | [**Account**](Account.md) |  | [optional] 
**space** | [**Space1**](Space1.md) |  | [optional] 
**point_of_contact** | [**UserPreview**](UserPreview.md) |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::Project.new(id: nil,
                                 name: nil,
                                 slug: nil,
                                 main_format: nil,
                                 project_image_url: nil,
                                 media: nil,
                                 account: nil,
                                 space: nil,
                                 point_of_contact: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


