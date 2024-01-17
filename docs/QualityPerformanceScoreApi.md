# Phrase::QualityPerformanceScoreApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**projects_quality_performance_score**](QualityPerformanceScoreApi.md#projects_quality_performance_score) | **POST** /projects/{id}/quality_performance_score | Get project&#39;s translations&#39; quality performance scores



## projects_quality_performance_score

> ProjectsQualityPerformanceScore200Response projects_quality_performance_score(id, projects_quality_performance_score_request, opts)

Get project's translations' quality performance scores

Get project's translations' quality performance scores

### Example

```ruby
# load the gem
require 'phrase'
# setup authorization
Phrase.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  config.api_key_prefix['Authorization'] = 'token'
end

api_instance = Phrase::QualityPerformanceScoreApi.new
id = 'id_example' # String | ID
projects_quality_performance_score_request = Phrase::ProjectsQualityPerformanceScoreRequest.new # ProjectsQualityPerformanceScoreRequest | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get project's translations' quality performance scores
  result = api_instance.projects_quality_performance_score(id, projects_quality_performance_score_request, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling QualityPerformanceScoreApi->projects_quality_performance_score: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | 
 **projects_quality_performance_score_request** | [**ProjectsQualityPerformanceScoreRequest**](ProjectsQualityPerformanceScoreRequest.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**ProjectsQualityPerformanceScore200Response**](ProjectsQualityPerformanceScore200Response.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

