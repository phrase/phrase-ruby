# Phrase::Webhook

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**callback_url** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**events** | **Array&lt;String&gt;** |  | [optional] 
**active** | **Boolean** |  | [optional] 
**include_branches** | **Boolean** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::Webhook.new(id: nil,
                                 callback_url: nil,
                                 description: nil,
                                 events: nil,
                                 active: nil,
                                 include_branches: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


