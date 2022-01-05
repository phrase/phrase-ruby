require 'cgi'

module Phrase
  class GitHubSyncApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Export from Phrase to GitHub
    # Export translations from Phrase to GitHub according to the .phraseapp.yml file within the GitHub repository.
    # @param github_sync_export_parameters [GithubSyncExportParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def github_sync_export(github_sync_export_parameters, opts = {})
      data, _status_code, _headers = github_sync_export_with_http_info(github_sync_export_parameters, opts)
      data
    end

    # Export from Phrase to GitHub
    # Export translations from Phrase to GitHub according to the .phraseapp.yml file within the GitHub repository.
    # @param github_sync_export_parameters [GithubSyncExportParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def github_sync_export_with_http_info(github_sync_export_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitHubSyncApi.github_sync_export ...'
      end
      # verify the required parameter 'github_sync_export_parameters' is set
      if @api_client.config.client_side_validation && github_sync_export_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'github_sync_export_parameters' when calling GitHubSyncApi.github_sync_export"
      end
      # resource path
      local_var_path = '/github_syncs/export'

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
      post_body = opts[:body] || @api_client.object_to_http_body(github_sync_export_parameters) 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token', 'bearerAuth']

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
        @api_client.config.logger.debug "API called: GitHubSyncApi#github_sync_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Import to Phrase from GitHub
    # Import files to Phrase from your connected GitHub repository.
    # @param github_sync_import_parameters [GithubSyncImportParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def github_sync_import(github_sync_import_parameters, opts = {})
      data, _status_code, _headers = github_sync_import_with_http_info(github_sync_import_parameters, opts)
      data
    end

    # Import to Phrase from GitHub
    # Import files to Phrase from your connected GitHub repository.
    # @param github_sync_import_parameters [GithubSyncImportParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def github_sync_import_with_http_info(github_sync_import_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitHubSyncApi.github_sync_import ...'
      end
      # verify the required parameter 'github_sync_import_parameters' is set
      if @api_client.config.client_side_validation && github_sync_import_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'github_sync_import_parameters' when calling GitHubSyncApi.github_sync_import"
      end
      # resource path
      local_var_path = '/github_syncs/import'

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
      post_body = opts[:body] || @api_client.object_to_http_body(github_sync_import_parameters) 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token', 'bearerAuth']

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
        @api_client.config.logger.debug "API called: GitHubSyncApi#github_sync_import\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
