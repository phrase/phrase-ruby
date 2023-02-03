# Phrase::NotificationGroupDetail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**event_name** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**notifications_count** | **Integer** |  | [optional] 
**latest_notification** | [**Notification**](Notification.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::NotificationGroupDetail.new(id: null,
                                 event_name: null,
                                 created_at: null,
                                 updated_at: null,
                                 notifications_count: null,
                                 latest_notification: null)
```


