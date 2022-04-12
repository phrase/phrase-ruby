require 'cgi'

module Phrase
  class BlockedKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a blacklisted key
    # Create a new rule for blocking keys.
    # @param project_id [String] Project ID
    # @param blacklisted_key_create_parameters [BlacklistedKeyCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [BlacklistedKey]
    def blacklisted_key_create(project_id, blacklisted_key_create_parameters, opts = {})
      data, _status_code, _headers = blacklisted_key_create_with_http_info(project_id, blacklisted_key_create_parameters, opts)
      data
    end

    # Create a blacklisted key
    # Create a new rule for blocking keys.
    # @param project_id [String] Project ID
    # @param blacklisted_key_create_parameters [BlacklistedKeyCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(BlacklistedKey)>, Integer, Hash)>] Response<(BlacklistedKey)> data, response status code and response headers
    def blacklisted_key_create_with_http_info(project_id, blacklisted_key_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockedKeysApi.blacklisted_key_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling BlockedKeysApi.blacklisted_key_create"
      end
      # verify the required parameter 'blacklisted_key_create_parameters' is set
      if @api_client.config.client_side_validation && blacklisted_key_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'blacklisted_key_create_parameters' when calling BlockedKeysApi.blacklisted_key_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/blacklisted_keys'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(blacklisted_key_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'BlacklistedKey' 

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
        @api_client.config.logger.debug "API called: BlockedKeysApi#blacklisted_key_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a blacklisted key
    # Delete an existing rule for blocking keys.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def blacklisted_key_delete(project_id, id, opts = {})
      data, _status_code, _headers = blacklisted_key_delete_with_http_info(project_id, id, opts)
      data
    end

    # Delete a blacklisted key
    # Delete an existing rule for blocking keys.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def blacklisted_key_delete_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockedKeysApi.blacklisted_key_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling BlockedKeysApi.blacklisted_key_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BlockedKeysApi.blacklisted_key_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/blacklisted_keys/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      header_params[:'X-PhraseApp-OTP'] = opts[:'x_phrase_app_otp'] if !opts[:'x_phrase_app_otp'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockedKeysApi#blacklisted_key_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single blacklisted key
    # Get details on a single rule for blocking keys for a given project.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [BlacklistedKey]
    def blacklisted_key_show(project_id, id, opts = {})
      data, _status_code, _headers = blacklisted_key_show_with_http_info(project_id, id, opts)
      data
    end

    # Get a single blacklisted key
    # Get details on a single rule for blocking keys for a given project.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(BlacklistedKey)>, Integer, Hash)>] Response<(BlacklistedKey)> data, response status code and response headers
    def blacklisted_key_show_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockedKeysApi.blacklisted_key_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling BlockedKeysApi.blacklisted_key_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BlockedKeysApi.blacklisted_key_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/blacklisted_keys/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      return_type = opts[:return_type] || 'BlacklistedKey' 

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
        @api_client.config.logger.debug "API called: BlockedKeysApi#blacklisted_key_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a blacklisted key
    # Update an existing rule for blocking keys.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param blacklisted_key_update_parameters [BlacklistedKeyUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [BlacklistedKey]
    def blacklisted_key_update(project_id, id, blacklisted_key_update_parameters, opts = {})
      data, _status_code, _headers = blacklisted_key_update_with_http_info(project_id, id, blacklisted_key_update_parameters, opts)
      data
    end

    # Update a blacklisted key
    # Update an existing rule for blocking keys.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param blacklisted_key_update_parameters [BlacklistedKeyUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(BlacklistedKey)>, Integer, Hash)>] Response<(BlacklistedKey)> data, response status code and response headers
    def blacklisted_key_update_with_http_info(project_id, id, blacklisted_key_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockedKeysApi.blacklisted_key_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling BlockedKeysApi.blacklisted_key_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BlockedKeysApi.blacklisted_key_update"
      end
      # verify the required parameter 'blacklisted_key_update_parameters' is set
      if @api_client.config.client_side_validation && blacklisted_key_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'blacklisted_key_update_parameters' when calling BlockedKeysApi.blacklisted_key_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/blacklisted_keys/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(blacklisted_key_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'BlacklistedKey' 

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

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BlockedKeysApi#blacklisted_key_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List blacklisted keys
    # List all rules for blocking keys for the given project.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
    # @option opts [String] :branch specify the branch to use
    # @return [Array<BlacklistedKey>]
    def blacklisted_keys_list(project_id, opts = {})
      data, _status_code, _headers = blacklisted_keys_list_with_http_info(project_id, opts)
      data
    end

    # List blacklisted keys
    # List all rules for blocking keys for the given project.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(Array<BlacklistedKey>)>, Integer, Hash)>] Response<(Array<BlacklistedKey>)> data, response status code and response headers
    def blacklisted_keys_list_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BlockedKeysApi.blacklisted_keys_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling BlockedKeysApi.blacklisted_keys_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/blacklisted_keys'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      return_type = opts[:return_type] || 'Array<BlacklistedKey>' 

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
        @api_client.config.logger.debug "API called: BlockedKeysApi#blacklisted_keys_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
