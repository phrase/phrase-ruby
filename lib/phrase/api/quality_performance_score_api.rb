require 'cgi'

module Phrase
  class QualityPerformanceScoreApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Translation Quality
    # Retrieves the quality scores for your Strings translations. Returns a score, measured by Phrase QPS
    # @param project_id [String] Project ID
    # @param quality_performance_score_list_request [QualityPerformanceScoreListRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [QualityPerformanceScoreList200Response]
    def quality_performance_score_list(project_id, quality_performance_score_list_request, opts = {})
      data, _status_code, _headers = quality_performance_score_list_with_http_info(project_id, quality_performance_score_list_request, opts)
      data
    end

    # Get Translation Quality
    # Retrieves the quality scores for your Strings translations. Returns a score, measured by Phrase QPS
    # @param project_id [String] Project ID
    # @param quality_performance_score_list_request [QualityPerformanceScoreListRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(QualityPerformanceScoreList200Response)>, Integer, Hash)>] Response<(QualityPerformanceScoreList200Response)> data, response status code and response headers
    def quality_performance_score_list_with_http_info(project_id, quality_performance_score_list_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: QualityPerformanceScoreApi.quality_performance_score_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling QualityPerformanceScoreApi.quality_performance_score_list"
      end
      # verify the required parameter 'quality_performance_score_list_request' is set
      if @api_client.config.client_side_validation && quality_performance_score_list_request.nil?
        fail ArgumentError, "Missing the required parameter 'quality_performance_score_list_request' when calling QualityPerformanceScoreApi.quality_performance_score_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/quality_performance_score'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(quality_performance_score_list_request) 

      # return_type
      return_type = opts[:return_type] || 'QualityPerformanceScoreList200Response' 

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
        @api_client.config.logger.debug "API called: QualityPerformanceScoreApi#quality_performance_score_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
