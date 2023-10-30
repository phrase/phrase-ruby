# Phrase::Authorization

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**note** | **String** |  | [optional] 
**token_last_eight** | **String** |  | [optional] 
**hashed_token** | **String** |  | [optional] 
**scopes** | **Array&lt;String&gt;** |  | [optional] 
**expires_at** | **Time** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::Authorization.new(id: null,
                                 note: null,
                                 token_last_eight: null,
                                 hashed_token: null,
                                 scopes: null,
                                 expires_at: null,
                                 created_at: null,
                                 updated_at: null)
```


