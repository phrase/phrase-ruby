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
require 'Phrase'

instance = Phrase::Notification.new(id: null,
                                 event_name: null,
                                 created_at: null,
                                 updated_at: null,
                                 delivered_at: null,
                                 seen_at: null,
                                 data: null,
                                 resource: null,
                                 locale: null,
                                 user: null,
                                 project: null,
                                 account: null,
                                 group: null)
```


