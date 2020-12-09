# Phrase::InvitationUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**role** | **String** | Invitiation role, can be any of Manager, Developer, Translator | [optional] 
**project_ids** | **String** | List of project ids the invited user has access to | [optional] 
**locale_ids** | **String** | List of locale ids the invited user has access to | [optional] 
**default_locale_codes** | **Array&lt;String&gt;** | List of default locales for the user. | [optional] 
**permissions** | **Hash&lt;String, String&gt;** | Additional permissions depending on invitation role. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::InvitationUpdateParameters.new(role: Invitiation role,
                                 project_ids: abcd1234abcd1234abcd1234,abcd1234abcd1234abcd1235,
                                 locale_ids: abcd1234abcd1234abcd1234,abcd1234abcd1234abcd1235,
                                 default_locale_codes: [&quot;en&quot;,&quot;de&quot;],
                                 permissions: {&quot;create_upload&quot;:true})
```


