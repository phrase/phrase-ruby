# Phrase::Notification

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**event_name** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**delivered_at** | **DateTime** |  | [optional] 
**seen_at** | **DateTime** |  | [optional] 
**data** | [**Object**](.md) |  | [optional] 
**resource** | [**Object**](.md) |  | [optional] 
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


