# Phrase::MemberProjectDetail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**username** | **String** |  | [optional] 
**role** | **String** |  | [optional] 
**projects** | [**Array&lt;ProjectLocales&gt;**](ProjectLocales.md) |  | [optional] 
**permissions** | **Object** |  | [optional] 
**locale_ids** | **Array&lt;String&gt;** |  | [optional] 
**default_locale_codes** | **Array&lt;String&gt;** |  | [optional] 
**spaces** | [**Array&lt;MemberSpacesInner&gt;**](MemberSpacesInner.md) |  | [optional] 
**project_roles** | [**Array&lt;MemberProjectDetailProjectRolesInner&gt;**](MemberProjectDetailProjectRolesInner.md) |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::MemberProjectDetail.new(id: nil,
                                 email: nil,
                                 username: nil,
                                 role: nil,
                                 projects: nil,
                                 permissions: nil,
                                 locale_ids: nil,
                                 default_locale_codes: nil,
                                 spaces: nil,
                                 project_roles: nil)
```


