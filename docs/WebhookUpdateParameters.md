# Phrase::WebhookUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**callback_url** | **String** | Callback URL to send requests to | [optional] 
**secret** | **String** | Webhook secret used to calculate signature. If empty, the default project secret will be used. | [optional] 
**description** | **String** | Webhook description. Send an empty string or &#x60;null&#x60; to clear the value; omit the field to leave it unchanged. The Phrase CLI drops &#x60;null&#x60; values before sending, so use an empty string there. | [optional] 
**events** | **String** | List of event names to trigger the webhook (separated by comma) | [optional] 
**active** | **Boolean** | Whether webhook is active or inactive | [optional] 
**include_branches** | **Boolean** | If enabled, webhook will also be triggered for events from branches of the project specified. | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::WebhookUpdateParameters.new(callback_url: 'http://example.com/hooks/phraseapp-notifications',
                                 secret: 'secr3t',
                                 description: 'My webhook for chat notifications',
                                 events: 'locales:create,translations:update',
                                 active: nil,
                                 include_branches: nil)
```


