# Phrase::NotificationGroupDetail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**event_name** | **String** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**notifications_count** | **Integer** |  | [optional] 
**latest_notification** | [**Notification**](Notification.md) |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::NotificationGroupDetail.new(id: nil,
                                 event_name: nil,
                                 created_at: nil,
                                 updated_at: nil,
                                 notifications_count: nil,
                                 latest_notification: nil)
```


