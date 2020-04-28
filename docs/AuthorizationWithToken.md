# Phrase::AuthorizationWithToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**note** | **String** |  | [optional] 
**token_last_eight** | **String** |  | [optional] 
**hashed_token** | **String** |  | [optional] 
**scopes** | **Array&lt;String&gt;** |  | [optional] 
**expires_at** | **DateTime** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**token** | **String** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::AuthorizationWithToken.new(id: null,
                                 note: null,
                                 token_last_eight: null,
                                 hashed_token: null,
                                 scopes: null,
                                 expires_at: null,
                                 created_at: null,
                                 updated_at: null,
                                 token: null)
```


