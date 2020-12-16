# Phrase::MemberUpdateSettingsParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_role** | **String** | Member role, can be any of of Manager, Developer, Translator | [optional] 
**locale_ids** | **Array&lt;String&gt;** | List of locale ids the user has access to. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::MemberUpdateSettingsParameters.new(project_role: Developer,
                                 locale_ids: [&quot;abcd1234abcd1234abcd1234&quot;,&quot;abcd1234abcd1234abcd1235&quot;])
```


