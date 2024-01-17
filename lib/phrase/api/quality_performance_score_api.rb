require 'cgi'

module Phrase
  class QualityPerformanceScoreApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get project's translations' quality performance scores
    # Get project's translations' quality performance scores
    # @param id [String] ID
    # @param projects_quality_performance_score_request [ProjectsQualityPerformanceScoreRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [ProjectsQualityPerformanceScore200Response]
    def projects_quality_performance_score(id, projects_quality_performance_score_request, opts = {})
      data, _status_code, _headers = projects_quality_performance_score_with_http_info(id, projects_quality_performance_score_request, opts)
      data
    end

    # Get project&#39;s translations&#39; quality performance scores
    # Get project&#39;s translations&#39; quality performance scores
    # @param id [String] ID
    # @param projects_quality_performance_score_request [ProjectsQualityPerformanceScoreRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(ProjectsQualityPerformanceScore200Response)>, Integer, Hash)>] Response<(ProjectsQualityPerformanceScore200Response)> data, response status code and response headers
    def projects_quality_performance_score_with_http_info(id, projects_quality_performance_score_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: QualityPerformanceScoreApi.projects_quality_performance_score ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling QualityPerformanceScoreApi.projects_quality_performance_score"
      end
      # verify the required parameter 'projects_quality_performance_score_request' is set
      if @api_client.config.client_side_validation && projects_quality_performance_score_request.nil?
        fail ArgumentError, "Missing the required parameter 'projects_quality_performance_score_request' when calling QualityPerformanceScoreApi.projects_quality_performance_score"
      end
      # resource path
      local_var_path = '/projects/{id}/quality_performance_score'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-PhraseApp-OTP'] = opts[:'x_phrase_app_otp'] if !opts[:'x_phrase_app_otp'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(projects_quality_performance_score_request) 

      # return_type
      return_type = opts[:return_type] || 'ProjectsQualityPerformanceScore200Response' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: QualityPerformanceScoreApi#projects_quality_performance_score\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
