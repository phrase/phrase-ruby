# Phrase::PreTranslation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**status** | **String** | Current execution state of the pre-translation job. Jobs start as &#x60;pending&#x60; while queued, transition to &#x60;running&#x60; while executing, and settle to &#x60;success&#x60; or &#x60;error&#x60;.  | [optional] 
**translatable_type** | **String** | Resource type that was pre-translated. | [optional] 
**translatable_id** | **String** | ID of the targeted resource (locale ID, job ID, key ID, or upload ID). | [optional] 
**error** | **String** | Error message. &#x60;null&#x60; unless the job&#39;s status is &#x60;error&#x60;. | [optional] 
**created_at** | **Time** |  | [optional] 
**updated_at** | **Time** |  | [optional] 

## Code Sample

```ruby
require 'phrase'

instance = Phrase::PreTranslation.new(id: 'abcd1234cdef1234abcd1234cdef1234',
                                 status: nil,
                                 translatable_type: nil,
                                 translatable_id: 'abcd1234cdef1234abcd1234cdef1234',
                                 error: nil,
                                 created_at: nil,
                                 updated_at: nil)
```


