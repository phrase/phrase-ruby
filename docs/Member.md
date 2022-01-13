# Phrase::Member

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**username** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**last_activity_at** | **DateTime** |  | [optional] 
**role** | **String** |  | [optional] 
**projects** | [**Array&lt;ProjectLocales&gt;**](ProjectLocales.md) |  | [optional] 
**permissions** | [**Object**](.md) |  | [optional] 
**default_locale_codes** | **Array&lt;String&gt;** |  | [optional] 
**teams** | [**Array&lt;Team1&gt;**](Team1.md) |  | [optional] 
**spaces** | [**Array&lt;MemberSpaces&gt;**](MemberSpaces.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::Member.new(id: null,
                                 email: null,
                                 username: null,
                                 created_at: null,
                                 last_activity_at: null,
                                 role: null,
                                 projects: null,
                                 permissions: null,
                                 default_locale_codes: null,
                                 teams: null,
                                 spaces: null)
```


