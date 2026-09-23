# Phrase::Member

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**username** | **String** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**last_activity_at** | **Time** |  | [optional] 
**role** | **String** |  | [optional] 
**projects** | [**Array&lt;ProjectLocales&gt;**](ProjectLocales.md) |  | [optional] 
**permissions** | **Object** |  | [optional] 
**default_locale_codes** | **Array&lt;String&gt;** |  | [optional] 
**teams** | [**Array&lt;TeamShort&gt;**](TeamShort.md) |  | [optional] 
**spaces** | [**Array&lt;MemberSpacesInner&gt;**](MemberSpacesInner.md) |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::Member.new(id: nil,
                                 email: nil,
                                 username: nil,
                                 created_at: nil,
                                 last_activity_at: nil,
                                 role: nil,
                                 projects: nil,
                                 permissions: nil,
                                 default_locale_codes: nil,
                                 teams: nil,
                                 spaces: nil)
```


