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
require 'phrase'

instance = Phrase::Authorization.new(id: nil,
                                 note: nil,
                                 token_last_eight: nil,
                                 hashed_token: nil,
                                 scopes: nil,
                                 expires_at: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


