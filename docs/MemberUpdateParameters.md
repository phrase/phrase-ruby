# Phrase::MemberUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**role** | **String** | Member role, can be any of of Manager, Developer, Translator | [optional] 
**project_ids** | **String** | List of project ids the user has access to.  | [optional] 
**locale_ids** | **String** | List of locale ids the user has access to. | [optional] 
**permissions** | [**Object**](.md) | Additional permissions depending on member role. Available permissions are &lt;code&gt;create_upload&lt;/code&gt; and &lt;code&gt;review_translations&lt;/code&gt; | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::MemberUpdateParameters.new(role: Developer,
                                 project_ids: abcd1234abcd1234abcd1234,abcd1234abcd1234abcd1235,
                                 locale_ids: abcd1234abcd1234abcd1234,abcd1234abcd1234abcd1235,
                                 permissions: {&quot;create_upload&quot;:true,&quot;review_translations&quot;:true})
```


