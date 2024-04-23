require 'cgi'

module Phrase
  class LinkedKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Batch unlink child keys from a parent key
    # Unlinks multiple child keys from a given parent key in a single operation.
    # @param project_id [String] Project ID
    # @param id [String] Parent Translation Key ID
    # @param key_links_batch_destroy_parameters [KeyLinksBatchDestroyParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def key_links_batch_destroy(project_id, id, key_links_batch_destroy_parameters, opts = {})
      data, _status_code, _headers = key_links_batch_destroy_with_http_info(project_id, id, key_links_batch_destroy_parameters, opts)
      data
    end

    # Batch unlink child keys from a parent key
    # Unlinks multiple child keys from a given parent key in a single operation.
    # @param project_id [String] Project ID
    # @param id [String] Parent Translation Key ID
    # @param key_links_batch_destroy_parameters [KeyLinksBatchDestroyParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def key_links_batch_destroy_with_http_info(project_id, id, key_links_batch_destroy_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinkedKeysApi.key_links_batch_destroy ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling LinkedKeysApi.key_links_batch_destroy"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LinkedKeysApi.key_links_batch_destroy"
      end
      # verify the required parameter 'key_links_batch_destroy_parameters' is set
      if @api_client.config.client_side_validation && key_links_batch_destroy_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'key_links_batch_destroy_parameters' when calling LinkedKeysApi.key_links_batch_destroy"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{id}/key_links'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(key_links_batch_destroy_parameters) 

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
        @api_client.config.logger.debug "API called: LinkedKeysApi#key_links_batch_destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Link child keys to a parent key
    # Creates links between a given parent key and one or more child keys.
    # @param project_id [String] Project ID
    # @param id [String] Parent Translation Key ID
    # @param key_links_create_parameters [KeyLinksCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [KeyLink]
    def key_links_create(project_id, id, key_links_create_parameters, opts = {})
      data, _status_code, _headers = key_links_create_with_http_info(project_id, id, key_links_create_parameters, opts)
      data
    end

    # Link child keys to a parent key
    # Creates links between a given parent key and one or more child keys.
    # @param project_id [String] Project ID
    # @param id [String] Parent Translation Key ID
    # @param key_links_create_parameters [KeyLinksCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(KeyLink)>, Integer, Hash)>] Response<(KeyLink)> data, response status code and response headers
    def key_links_create_with_http_info(project_id, id, key_links_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinkedKeysApi.key_links_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling LinkedKeysApi.key_links_create"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LinkedKeysApi.key_links_create"
      end
      # verify the required parameter 'key_links_create_parameters' is set
      if @api_client.config.client_side_validation && key_links_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'key_links_create_parameters' when calling LinkedKeysApi.key_links_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{id}/key_links'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(key_links_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'KeyLink' 

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
        @api_client.config.logger.debug "API called: LinkedKeysApi#key_links_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Unlink a child key from a parent key
    # Unlinks a single child key from a given parent key.
    # @param project_id [String] Project ID
    # @param id [String] Parent Translation Key ID
    # @param child_key_id [String] The ID of the child key to unlink.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def key_links_destroy(project_id, id, child_key_id, opts = {})
      data, _status_code, _headers = key_links_destroy_with_http_info(project_id, id, child_key_id, opts)
      data
    end

    # Unlink a child key from a parent key
    # Unlinks a single child key from a given parent key.
    # @param project_id [String] Project ID
    # @param id [String] Parent Translation Key ID
    # @param child_key_id [String] The ID of the child key to unlink.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def key_links_destroy_with_http_info(project_id, id, child_key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinkedKeysApi.key_links_destroy ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling LinkedKeysApi.key_links_destroy"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LinkedKeysApi.key_links_destroy"
      end
      # verify the required parameter 'child_key_id' is set
      if @api_client.config.client_side_validation && child_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'child_key_id' when calling LinkedKeysApi.key_links_destroy"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{id}/key_links/{child_key_id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'child_key_id' + '}', CGI.escape(child_key_id.to_s))

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
        @api_client.config.logger.debug "API called: LinkedKeysApi#key_links_destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List child keys of a parent key
    # Returns detailed information about a parent key, including its linked child keys.
    # @param project_id [String] Project ID
    # @param id [String] Parent Translation Key ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [KeyLink]
    def key_links_index(project_id, id, opts = {})
      data, _status_code, _headers = key_links_index_with_http_info(project_id, id, opts)
      data
    end

    # List child keys of a parent key
    # Returns detailed information about a parent key, including its linked child keys.
    # @param project_id [String] Project ID
    # @param id [String] Parent Translation Key ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(KeyLink)>, Integer, Hash)>] Response<(KeyLink)> data, response status code and response headers
    def key_links_index_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinkedKeysApi.key_links_index ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling LinkedKeysApi.key_links_index"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LinkedKeysApi.key_links_index"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{id}/key_links'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'KeyLink' 

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
        @api_client.config.logger.debug "API called: LinkedKeysApi#key_links_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
