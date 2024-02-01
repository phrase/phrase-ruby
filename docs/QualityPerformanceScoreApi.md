# Phrase::QualityPerformanceScoreApi

All URIs are relative to *https://api.phrase.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**projects_quality_performance_score**](QualityPerformanceScoreApi.md#projects_quality_performance_score) | **POST** /projects/{project_id}/quality_performance_score | Get Translation Quality



## projects_quality_performance_score

> ProjectsQualityPerformanceScore200Response projects_quality_performance_score(project_id, projects_quality_performance_score_request, opts)

Get Translation Quality

Retrieves the quality scores for your Strings translations. Returns a score, measured by Phrase QPS

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
project_id = 'project_id_example' # String | Project ID
projects_quality_performance_score_request = Phrase::ProjectsQualityPerformanceScoreRequest.new # ProjectsQualityPerformanceScoreRequest | 
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get Translation Quality
  result = api_instance.projects_quality_performance_score(project_id, projects_quality_performance_score_request, opts)
  pp result
rescue Phrase::ApiError => e
  puts "Exception when calling QualityPerformanceScoreApi->projects_quality_performance_score: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **String**| Project ID | 
 **projects_quality_performance_score_request** | [**ProjectsQualityPerformanceScoreRequest**](ProjectsQualityPerformanceScoreRequest.md)|  | 
 **x_phrase_app_otp** | **String**| Two-Factor-Authentication token (optional) | [optional] 

### Return type

Response<([**ProjectsQualityPerformanceScore200Response**](ProjectsQualityPerformanceScore200Response.md))>

### Authorization

[Basic](../README.md#Basic), [Token](../README.md#Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

