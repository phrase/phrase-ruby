# Phrase::GlossaryUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the glossary | [optional] 
**project_ids** | **String** | List of project ids the glossary should be assigned to. | [optional] 
**space_ids** | **Array&lt;String&gt;** | List of space ids the glossary should be assigned to. | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::GlossaryUpdate.new(name: My glossary,
                                 project_ids: abcd1234abcd1234abcd1234,abcd1234abcd1234abcd1235,
                                 space_ids: [&quot;abcd1234abcd1234abcd1234&quot;,&quot;abcd1234abcd1234abcd1235&quot;])
```


