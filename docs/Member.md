# Phrase::Member

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**username** | **String** |  | [optional] 
**role** | **String** |  | [optional] 
**projects** | [**Array&lt;ProjectLocales&gt;**](ProjectLocales.md) |  | [optional] 
**permissions** | [**Object**](.md) |  | [optional] 
**default_locale_codes** | **Array&lt;String&gt;** |  | [optional] 
**spaces** | [**Array&lt;MemberSpaces&gt;**](MemberSpaces.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::Member.new(id: null,
                                 email: null,
                                 username: null,
                                 role: null,
                                 projects: null,
                                 permissions: null,
                                 default_locale_codes: null,
                                 spaces: null)
```


