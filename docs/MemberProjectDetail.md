# Phrase::MemberProjectDetail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**username** | **String** |  | [optional] 
**role** | **String** |  | [optional] 
**projects** | [**Array&lt;ProjectLocales&gt;**](ProjectLocales.md) |  | [optional] 
**permissions** | [**Object**](.md) |  | [optional] 
**locale_ids** | **Array&lt;String&gt;** |  | [optional] 
**default_locale_codes** | **Array&lt;String&gt;** |  | [optional] 
**spaces** | [**Array&lt;MemberSpaces&gt;**](MemberSpaces.md) |  | [optional] 
**project_roles** | [**Array&lt;MemberProjectDetailProjectRoles&gt;**](MemberProjectDetailProjectRoles.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::MemberProjectDetail.new(id: null,
                                 email: null,
                                 username: null,
                                 role: null,
                                 projects: null,
                                 permissions: null,
                                 locale_ids: null,
                                 default_locale_codes: null,
                                 spaces: null,
                                 project_roles: null)
```


