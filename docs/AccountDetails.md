# Phrase::AccountDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**slug** | **String** |  | [optional] 
**company** | **String** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**company_logo_url** | **String** |  | [optional] 
**subscription** | [**Subscription**](Subscription.md) |  | [optional] 
**roles** | **Array&lt;String&gt;** | Roles the requesting user holds in the account.  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::AccountDetails.new(id: nil,
                                 name: nil,
                                 slug: nil,
                                 company: nil,
                                 created_at: nil,
                                 updated_at: nil,
                                 company_logo_url: nil,
                                 subscription: nil,
                                 roles: nil)
```


