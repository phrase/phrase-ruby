# Phrase::Notification

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**event_name** | **String** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**delivered_at** | **Time** |  | [optional] 
**seen_at** | **Time** |  | [optional] 
**data** | **Object** |  | [optional] 
**resource** | **Object** |  | [optional] 
**locale** | [**Locale**](Locale.md) |  | [optional] 
**user** | [**UserPreview**](UserPreview.md) |  | [optional] 
**project** | [**Project**](Project.md) |  | [optional] 
**account** | [**Account**](Account.md) |  | [optional] 
**group** | [**NotificationGroup**](NotificationGroup.md) |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::Notification.new(id: nil,
                                 event_name: nil,
                                 created_at: nil,
                                 updated_at: nil,
                                 delivered_at: nil,
                                 seen_at: nil,
                                 data: nil,
                                 resource: nil,
                                 locale: nil,
                                 user: nil,
                                 project: nil,
                                 account: nil,
                                 group: nil)
```


