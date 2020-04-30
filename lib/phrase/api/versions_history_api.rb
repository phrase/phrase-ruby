require 'cgi'

module Phrase
  class VersionsHistoryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a single version
    # Get details on a single version.
    # @param project_id [String] Project ID
    # @param translation_id [String] Translation ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [TranslationVersionWithUser]
    def version_show(project_id, translation_id, id, opts = {})
      data, _status_code, _headers = version_show_with_http_info(project_id, translation_id, id, opts)
      data
    end

    # Get a single version
    # Get details on a single version.
    # @param project_id [String] Project ID
    # @param translation_id [String] Translation ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(TranslationVersionWithUser)>, Integer, Hash)>] Response<(TranslationVersionWithUser)> data, response status code and response headers
    def version_show_with_http_info(project_id, translation_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VersionsHistoryApi.version_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling VersionsHistoryApi.version_show"
      end
      # verify the required parameter 'translation_id' is set
      if @api_client.config.client_side_validation && translation_id.nil?
        fail ArgumentError, "Missing the required parameter 'translation_id' when calling VersionsHistoryApi.version_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VersionsHistoryApi.version_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/{translation_id}/versions/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'translation_id' + '}', CGI.escape(translation_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-PhraseApp-OTP'] = opts[:'x_phrase_app_otp'] if !opts[:'x_phrase_app_otp'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'TranslationVersionWithUser' 

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VersionsHistoryApi#version_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List all versions
    # List all versions for the given translation.
    # @param project_id [String] Project ID
    # @param translation_id [String] Translation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @option opts [String] :branch specify the branch to use
    # @return [Array<TranslationVersion>]
    def versions_list(project_id, translation_id, opts = {})
      data, _status_code, _headers = versions_list_with_http_info(project_id, translation_id, opts)
      data
    end

    # List all versions
    # List all versions for the given translation.
    # @param project_id [String] Project ID
    # @param translation_id [String] Translation ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(Array<TranslationVersion>)>, Integer, Hash)>] Response<(Array<TranslationVersion>)> data, response status code and response headers
    def versions_list_with_http_info(project_id, translation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VersionsHistoryApi.versions_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling VersionsHistoryApi.versions_list"
      end
      # verify the required parameter 'translation_id' is set
      if @api_client.config.client_side_validation && translation_id.nil?
        fail ArgumentError, "Missing the required parameter 'translation_id' when calling VersionsHistoryApi.versions_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/{translation_id}/versions'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'translation_id' + '}', CGI.escape(translation_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-PhraseApp-OTP'] = opts[:'x_phrase_app_otp'] if !opts[:'x_phrase_app_otp'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<TranslationVersion>' 

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VersionsHistoryApi#versions_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
