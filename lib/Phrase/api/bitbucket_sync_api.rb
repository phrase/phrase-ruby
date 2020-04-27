require 'cgi'

module Phrase
  class BitbucketSyncApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Export from Phrase to Bitbucket
    # Export translations from Phrase to Bitbucket according to the .phraseapp.yml file within the Bitbucket Repository.
    # @param id [String] ID
    # @param bitbucket_sync_export [BitbucketSyncExport] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [BitbucketSyncExportResponse]
    def bitbucket_sync_export(id, bitbucket_sync_export, opts = {})
      data, _status_code, _headers = bitbucket_sync_export_with_http_info(id, bitbucket_sync_export, opts)
      data
    end

    # Export from Phrase to Bitbucket
    # Export translations from Phrase to Bitbucket according to the .phraseapp.yml file within the Bitbucket Repository.
    # @param id [String] ID
    # @param bitbucket_sync_export [BitbucketSyncExport] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(BitbucketSyncExportResponse)>, Integer, Hash)>] Response<(BitbucketSyncExportResponse)> data, response status code and response headers
    def bitbucket_sync_export_with_http_info(id, bitbucket_sync_export, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BitbucketSyncApi.bitbucket_sync_export ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BitbucketSyncApi.bitbucket_sync_export"
      end
      # verify the required parameter 'bitbucket_sync_export' is set
      if @api_client.config.client_side_validation && bitbucket_sync_export.nil?
        fail ArgumentError, "Missing the required parameter 'bitbucket_sync_export' when calling BitbucketSyncApi.bitbucket_sync_export"
      end
      # resource path
      local_var_path = '/bitbucket_syncs/{id}/export'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(bitbucket_sync_export) 

      # return_type
      return_type = opts[:return_type] || 'BitbucketSyncExportResponse' 

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
        @api_client.config.logger.debug "API called: BitbucketSyncApi#bitbucket_sync_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Import to Phrase from Bitbucket
    # Import translations from Bitbucket to Phrase according to the .phraseapp.yml file within the Bitbucket repository.
    # @param id [String] ID
    # @param bitbucket_sync_import [BitbucketSyncImport] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def bitbucket_sync_import(id, bitbucket_sync_import, opts = {})
      bitbucket_sync_import_with_http_info(id, bitbucket_sync_import, opts)
      nil
    end

    # Import to Phrase from Bitbucket
    # Import translations from Bitbucket to Phrase according to the .phraseapp.yml file within the Bitbucket repository.
    # @param id [String] ID
    # @param bitbucket_sync_import [BitbucketSyncImport] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def bitbucket_sync_import_with_http_info(id, bitbucket_sync_import, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BitbucketSyncApi.bitbucket_sync_import ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BitbucketSyncApi.bitbucket_sync_import"
      end
      # verify the required parameter 'bitbucket_sync_import' is set
      if @api_client.config.client_side_validation && bitbucket_sync_import.nil?
        fail ArgumentError, "Missing the required parameter 'bitbucket_sync_import' when calling BitbucketSyncApi.bitbucket_sync_import"
      end
      # resource path
      local_var_path = '/bitbucket_syncs/{id}/import'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-PhraseApp-OTP'] = opts[:'x_phrase_app_otp'] if !opts[:'x_phrase_app_otp'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(bitbucket_sync_import) 

      # return_type
      return_type = opts[:return_type] 

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
        @api_client.config.logger.debug "API called: BitbucketSyncApi#bitbucket_sync_import\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List Bitbucket syncs
    # List all Bitbucket repositories for which synchronisation with Phrase is activated.
    # @param bitbucket_syncs_list [BitbucketSyncsList] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<BitbucketSync>]
    def bitbucket_syncs_list(bitbucket_syncs_list, opts = {})
      data, _status_code, _headers = bitbucket_syncs_list_with_http_info(bitbucket_syncs_list, opts)
      data
    end

    # List Bitbucket syncs
    # List all Bitbucket repositories for which synchronisation with Phrase is activated.
    # @param bitbucket_syncs_list [BitbucketSyncsList] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Array<BitbucketSync>)>, Integer, Hash)>] Response<(Array<BitbucketSync>)> data, response status code and response headers
    def bitbucket_syncs_list_with_http_info(bitbucket_syncs_list, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BitbucketSyncApi.bitbucket_syncs_list ...'
      end
      # verify the required parameter 'bitbucket_syncs_list' is set
      if @api_client.config.client_side_validation && bitbucket_syncs_list.nil?
        fail ArgumentError, "Missing the required parameter 'bitbucket_syncs_list' when calling BitbucketSyncApi.bitbucket_syncs_list"
      end
      # resource path
      local_var_path = '/bitbucket_syncs'

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
      post_body = opts[:body] || @api_client.object_to_http_body(bitbucket_syncs_list) 

      # return_type
      return_type = opts[:return_type] || 'Array<BitbucketSync>' 

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
        @api_client.config.logger.debug "API called: BitbucketSyncApi#bitbucket_syncs_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
