# Phrase::MemberUpdateParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**strategy** | **String** | Update strategy, can be any of set, add, remove. If provided, it will set, add or remove given spaces, projects and locale ids from users access list. | [optional] 
**role** | **String** | Member role, can be any of of Admin, ProjectManager, Developer, Designer, Translator | [optional] 
**project_ids** | **String** | List of project ids the user has access to.  | [optional] 
**locale_ids** | **String** | List of locale ids the user has access to. | [optional] 
**default_locale_codes** | **Array&lt;String&gt;** | List of default locales for the user. | [optional] 
**space_ids** | **Array&lt;String&gt;** | List of spaces the user is assigned to. | [optional] 
**permissions** | **Hash&lt;String, String&gt;** | Additional permissions depending on member role. Available permissions are &lt;code&gt;create_upload&lt;/code&gt; and &lt;code&gt;review_translations&lt;/code&gt; | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::MemberUpdateParameters.new(strategy: set,
                                 role: Developer,
                                 project_ids: abcd1234abcd1234abcd1234,abcd1234abcd1234abcd1235,
                                 locale_ids: abcd1234abcd1234abcd1234,abcd1234abcd1234abcd1235,
                                 default_locale_codes: [&quot;en&quot;,&quot;fi&quot;],
                                 space_ids: [&quot;abcd1234abcd1234abcd1234&quot;,&quot;abcd1234abcd1234abcd1235&quot;],
                                 permissions: {&quot;create_upload&quot;:true,&quot;review_translations&quot;:true})
```


