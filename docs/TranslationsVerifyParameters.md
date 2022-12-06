# Phrase::TranslationsVerifyParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**branch** | **String** | specify the branch to use | [optional] 
**locale_id** | **String** | specify the locale of the translations to be verified | [optional] 
**q** | **String** | Specify a query to find translations by content (including wildcards).&lt;br&gt;&lt;br&gt; &lt;i&gt;Note: Search is limited to 10000 results and may not include recently updated data (depending on the project size).&lt;/i&gt;&lt;br&gt; The following qualifiers are supported in the query:&lt;br&gt; &lt;ul&gt;   &lt;li&gt;&lt;code&gt;id:translation_id,...&lt;/code&gt; for queries on a comma-separated list of ids&lt;/li&gt;   &lt;li&gt;&lt;code&gt;tags:XYZ&lt;/code&gt; for tags on the translation&lt;/li&gt;   &lt;li&gt;&lt;code&gt;unverified:{true|false}&lt;/code&gt; for verification status&lt;/li&gt;   &lt;li&gt;&lt;code&gt;excluded:{true|false}&lt;/code&gt; for exclusion status&lt;/li&gt;   &lt;li&gt;&lt;code&gt;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&lt;/code&gt; for date range queries&lt;/li&gt; &lt;/ul&gt; Find more examples &lt;a href&#x3D;\&quot;#overview--usage-examples\&quot;&gt;here&lt;/a&gt;.  | [optional] 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::TranslationsVerifyParameters.new(branch: my-feature-branch,
                                 locale_id: fc2f11dd6a658fa9652f6f0a9ebee688,
                                 q: PhraseApp*%20unverified:true%20tags:feature,center)
```


