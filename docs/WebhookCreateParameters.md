# Phrase::WebhookCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**callback_url** | **String** | Callback URL to send requests to | [optional] 
**secret** | **String** | Webhook secret used to calculate signature. If empty, the default project secret will be used. | [optional] 
**description** | **String** | Webhook description | [optional] 
**events** | **String** | List of event names to trigger the webhook (separated by comma) | [optional] 
**active** | **Boolean** | Whether webhook is active or inactive | [optional] 
**include_branches** | **Boolean** | If enabled, webhook will also be triggered for events from branches of the project specified. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::WebhookCreateParameters.new(callback_url: http://example.com/hooks/phraseapp-notifications,
                                 secret: secr3t,
                                 description: My webhook for chat notifications,
                                 events: locales:create,translations:update,
                                 active: null,
                                 include_branches: null)
```


