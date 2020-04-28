# Phrase::InvitationCreateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | The email of the invited user. The &lt;code&gt;email&lt;/code&gt; can not be updated once created. Create a new invitation for each unique email. | [optional] 
**role** | **String** | Invitiation role, can be any of Manager, Developer, Translator. | [optional] 
**project_ids** | **String** | List of project ids the invited user has access to. | [optional] 
**locale_ids** | **String** | List of locale ids the invited user has access to. | [optional] 
**permissions** | [**Object**](.md) | Additional permissions depending on invitation role. Available permissions are &lt;code&gt;create_upload&lt;/code&gt; and &lt;code&gt;review_translations&lt;/code&gt; | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::InvitationCreateParameters.new(email: example@mail.com,
                                 role: Developer,
                                 project_ids: abcd1234abcd1234abcd1234,abcd1234abcd1234abcd1235,
                                 locale_ids: abcd1234abcd1234abcd1234,abcd1234abcd1234abcd1235,
                                 permissions: {&quot;create_upload&quot;:true,&quot;review_translations&quot;:true})
```


