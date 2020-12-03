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
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::Webhook.new(id: null,
                                 callback_url: null,
                                 description: null,
                                 events: null,
                                 active: null,
                                 include_branches: null,
                                 created_at: null,
                                 updated_at: null)
```


