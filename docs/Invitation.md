# Phrase::Invitation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**role** | **String** |  | [optional] 
**state** | **String** |  | [optional] 
**projects** | [**Array&lt;ProjectShort&gt;**](ProjectShort.md) |  | [optional] 
**locales** | [**Array&lt;LocalePreview&gt;**](LocalePreview.md) |  | [optional] 
**teams** | [**Array&lt;TeamShort&gt;**](TeamShort.md) |  | [optional] 
**default_locale_codes** | **Array&lt;String&gt;** |  | [optional] 
**permissions** | **Object** |  | [optional] 
**locale_ids** | **Array&lt;String&gt;** |  | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 
**accepted_at** | **Time** |  | [optional] 
**spaces** | [**Array&lt;Space&gt;**](Space.md) |  | [optional] 
**project_role** | [**Array&lt;MemberProjectDetailProjectRolesInner&gt;**](MemberProjectDetailProjectRolesInner.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::Invitation.new(id: null,
                                 email: null,
                                 role: null,
                                 state: null,
                                 projects: null,
                                 locales: null,
                                 teams: null,
                                 default_locale_codes: null,
                                 permissions: null,
                                 locale_ids: null,
                                 created_at: null,
                                 updated_at: null,
                                 accepted_at: null,
                                 spaces: null,
                                 project_role: null)
```


