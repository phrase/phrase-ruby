# Phrase::AuthorizationUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**note** | **String** | A note to help you remember what the access is used for. | [optional] 
**scopes** | **Array&lt;String&gt;** | A list of scopes that the access can be used for. | [optional] 
**expires_at** | **DateTime** | Expiration date for the authorization token. Null means no expiration date (default). | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::AuthorizationUpdate.new(note: My Deploy Script,
                                 scopes: [&quot;read&quot;,&quot;write&quot;],
                                 expires_at: 2015-03-30T09:52:53Z)
```


