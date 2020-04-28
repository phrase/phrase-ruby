# Phrase::WebhookCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**callback_url** | **String** | Callback URL to send requests to | [optional] 
**description** | **String** | Webhook description | [optional] 
**events** | **String** | List of event names to trigger the webhook (separated by comma) | [optional] 
**active** | **Boolean** | Whether webhook is active or inactive | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::WebhookCreateParameters.new(callback_url: http://example.com/hooks/phraseapp-notifications,
                                 description: My webhook for chat notifications,
                                 events: locales:create,translations:update,
                                 active: null)
```


