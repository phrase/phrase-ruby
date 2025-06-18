# Phrase::TranslationsVerifyParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**locale_id** | **String** | specify the locale of the translations to be verified | [optional] 
**q** | **String** | Specify a query to find translations by content (including wildcards).  *Note: Search is limited to 10000 results and may not include recently updated data (depending on the project size).*  The following qualifiers are supported in the query: * &#x60;id:translation_id,...&#x60; for queries on a comma-separated list of ids * &#x60;tags:XYZ&#x60; for tags on the translation * &#x60;unverified:{true|false}&#x60; for verification status * &#x60;excluded:{true|false}&#x60; for exclusion status * &#x60;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&#x60; for date range queries  Find more examples [here](/en/api/strings/usage-examples).  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::TranslationsVerifyParameters.new(branch: my-feature-branch,
                                 locale_id: fc2f11dd6a658fa9652f6f0a9ebee688,
                                 q: PhraseApp*%20unverified:true%20tags:feature,center)
```


