# Phrase::Member

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**username** | **String** |  | [optional] 
**role** | **String** |  | [optional] 
**default_locale_codes** | **Array&lt;String&gt;** |  | [optional] 
**projects** | [**Array&lt;ProjectLocales&gt;**](ProjectLocales.md) |  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::Member.new(id: null,
                                 email: null,
                                 username: null,
                                 role: null,
                                 default_locale_codes: null,
                                 projects: null)
```


