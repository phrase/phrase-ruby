# Phrase::WebhookDelivery

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**webhook_id** | **String** |  | [optional] 
**response_status_code** | **Integer** |  | [optional] 
**delivered_at** | **Time** |  | [optional] 
**duration_ms** | **Integer** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::WebhookDelivery.new(id: nil,
                                 webhook_id: nil,
                                 response_status_code: nil,
                                 delivered_at: nil,
                                 duration_ms: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


