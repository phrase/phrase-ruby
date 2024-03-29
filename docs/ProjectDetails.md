# Phrase::ProjectDetails

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
**shares_translation_memory** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::ProjectDetails.new(id: null,
                                 name: null,
                                 slug: null,
                                 main_format: null,
                                 project_image_url: null,
                                 media: null,
                                 account: null,
                                 space: null,
                                 point_of_contact: null,
                                 created_at: null,
                                 updated_at: null,
                                 shares_translation_memory: null)
```


