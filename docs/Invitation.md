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
**default_locale_codes** | **Array&lt;String&gt;** |  | [optional] 
**permissions** | [**Object**](.md) |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**accepted_at** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::Invitation.new(id: null,
                                 email: null,
                                 role: null,
                                 state: null,
                                 projects: null,
                                 locales: null,
                                 default_locale_codes: null,
                                 permissions: null,
                                 created_at: null,
                                 updated_at: null,
                                 accepted_at: null)
```


