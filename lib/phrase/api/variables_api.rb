require 'cgi'

module Phrase
  class VariablesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a variable
    # Create a new variable.
    # @param project_id [String] Project ID
    # @param variable_create_parameters [VariableCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Variable]
    def variable_create(project_id, variable_create_parameters, opts = {})
      data, _status_code, _headers = variable_create_with_http_info(project_id, variable_create_parameters, opts)
      data
    end

    # Create a variable
    # Create a new variable.
    # @param project_id [String] Project ID
    # @param variable_create_parameters [VariableCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Variable)>, Integer, Hash)>] Response<(Variable)> data, response status code and response headers
    def variable_create_with_http_info(project_id, variable_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VariablesApi.variable_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling VariablesApi.variable_create"
      end
      # verify the required parameter 'variable_create_parameters' is set
      if @api_client.config.client_side_validation && variable_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'variable_create_parameters' when calling VariablesApi.variable_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/variables'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(variable_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Variable' 

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
        @api_client.config.logger.debug "API called: VariablesApi#variable_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a variable
    # Delete an existing variable.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def variable_delete(project_id, name, opts = {})
      data, _status_code, _headers = variable_delete_with_http_info(project_id, name, opts)
      data
    end

    # Delete a variable
    # Delete an existing variable.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def variable_delete_with_http_info(project_id, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VariablesApi.variable_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling VariablesApi.variable_delete"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling VariablesApi.variable_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/variables/{name}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      auth_names = opts[:auth_names] || ['Basic', 'Token', 'bearerAuth']

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
        @api_client.config.logger.debug "API called: VariablesApi#variable_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single variable
    # Get details on a single variable for a given project.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Variable]
    def variable_show(project_id, name, opts = {})
      data, _status_code, _headers = variable_show_with_http_info(project_id, name, opts)
      data
    end

    # Get a single variable
    # Get details on a single variable for a given project.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Variable)>, Integer, Hash)>] Response<(Variable)> data, response status code and response headers
    def variable_show_with_http_info(project_id, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VariablesApi.variable_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling VariablesApi.variable_show"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling VariablesApi.variable_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/variables/{name}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      return_type = opts[:return_type] || 'Variable' 

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VariablesApi#variable_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a variable
    # Update an existing variable.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param variable_update_parameters [VariableUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Variable]
    def variable_update(project_id, name, variable_update_parameters, opts = {})
      data, _status_code, _headers = variable_update_with_http_info(project_id, name, variable_update_parameters, opts)
      data
    end

    # Update a variable
    # Update an existing variable.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param variable_update_parameters [VariableUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Variable)>, Integer, Hash)>] Response<(Variable)> data, response status code and response headers
    def variable_update_with_http_info(project_id, name, variable_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VariablesApi.variable_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling VariablesApi.variable_update"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling VariablesApi.variable_update"
      end
      # verify the required parameter 'variable_update_parameters' is set
      if @api_client.config.client_side_validation && variable_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'variable_update_parameters' when calling VariablesApi.variable_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/variables/{name}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(variable_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Variable' 

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

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VariablesApi#variable_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List variables
    # List all variables for the current project.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
    # @return [Array<Variable>]
    def variables_list(project_id, opts = {})
      data, _status_code, _headers = variables_list_with_http_info(project_id, opts)
      data
    end

    # List variables
    # List all variables for the current project.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
    # @return [Array<(Response<(Array<Variable>)>, Integer, Hash)>] Response<(Array<Variable>)> data, response status code and response headers
    def variables_list_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VariablesApi.variables_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling VariablesApi.variables_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/variables'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

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
      return_type = opts[:return_type] || 'Array<Variable>' 

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VariablesApi#variables_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
