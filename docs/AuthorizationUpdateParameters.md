# Phrase::AuthorizationUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**note** | **String** | A note to help you remember what the access is used for. | [optional] 
**scopes** | **Array&lt;String&gt;** | A list of scopes that the access can be used for. | [optional] 
**expires_at** | **Time** | Expiration date for the authorization token. Null means no expiration date (default). | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::AuthorizationUpdateParameters.new(note: 'My Deploy Script',
                                 scopes: ["read","write"],
                                 expires_at: Time.parse('2015-03-30T09:52:53Z'))
```


