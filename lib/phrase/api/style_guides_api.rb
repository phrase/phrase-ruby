require 'cgi'

module Phrase
  class StyleGuidesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a style guide
    # Create a new style guide.
    # @param project_id [String] Project ID
    # @param styleguide_create_parameters [StyleguideCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def styleguide_create(project_id, styleguide_create_parameters, opts = {})
      styleguide_create_with_http_info(project_id, styleguide_create_parameters, opts)
      nil
    end

    # Create a style guide
    # Create a new style guide.
    # @param project_id [String] Project ID
    # @param styleguide_create_parameters [StyleguideCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def styleguide_create_with_http_info(project_id, styleguide_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StyleGuidesApi.styleguide_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling StyleGuidesApi.styleguide_create"
      end
      # verify the required parameter 'styleguide_create_parameters' is set
      if @api_client.config.client_side_validation && styleguide_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'styleguide_create_parameters' when calling StyleGuidesApi.styleguide_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/styleguides'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(styleguide_create_parameters) 

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
        @api_client.config.logger.debug "API called: StyleGuidesApi#styleguide_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a style guide
    # Delete an existing style guide.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def styleguide_delete(project_id, id, opts = {})
      styleguide_delete_with_http_info(project_id, id, opts)
      nil
    end

    # Delete a style guide
    # Delete an existing style guide.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def styleguide_delete_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StyleGuidesApi.styleguide_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling StyleGuidesApi.styleguide_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StyleGuidesApi.styleguide_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/styleguides/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: StyleGuidesApi#styleguide_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single style guide
    # Get details on a single style guide.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [StyleguideDetails]
    def styleguide_show(project_id, id, opts = {})
      data, _status_code, _headers = styleguide_show_with_http_info(project_id, id, opts)
      data
    end

    # Get a single style guide
    # Get details on a single style guide.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(StyleguideDetails)>, Integer, Hash)>] Response<(StyleguideDetails)> data, response status code and response headers
    def styleguide_show_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StyleGuidesApi.styleguide_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling StyleGuidesApi.styleguide_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StyleGuidesApi.styleguide_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/styleguides/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'StyleguideDetails' 

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
        @api_client.config.logger.debug "API called: StyleGuidesApi#styleguide_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a style guide
    # Update an existing style guide.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param styleguide_update_parameters [StyleguideUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [StyleguideDetails]
    def styleguide_update(project_id, id, styleguide_update_parameters, opts = {})
      data, _status_code, _headers = styleguide_update_with_http_info(project_id, id, styleguide_update_parameters, opts)
      data
    end

    # Update a style guide
    # Update an existing style guide.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param styleguide_update_parameters [StyleguideUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(StyleguideDetails)>, Integer, Hash)>] Response<(StyleguideDetails)> data, response status code and response headers
    def styleguide_update_with_http_info(project_id, id, styleguide_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StyleGuidesApi.styleguide_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling StyleGuidesApi.styleguide_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StyleGuidesApi.styleguide_update"
      end
      # verify the required parameter 'styleguide_update_parameters' is set
      if @api_client.config.client_side_validation && styleguide_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'styleguide_update_parameters' when calling StyleGuidesApi.styleguide_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/styleguides/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(styleguide_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'StyleguideDetails' 

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
        @api_client.config.logger.debug "API called: StyleGuidesApi#styleguide_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List style guides
    # List all styleguides for the given project.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<Styleguide>]
    def styleguides_list(project_id, opts = {})
      data, _status_code, _headers = styleguides_list_with_http_info(project_id, opts)
      data
    end

    # List style guides
    # List all styleguides for the given project.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<Styleguide>)>, Integer, Hash)>] Response<(Array<Styleguide>)> data, response status code and response headers
    def styleguides_list_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StyleGuidesApi.styleguides_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling StyleGuidesApi.styleguides_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/styleguides'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      return_type = opts[:return_type] || 'Array<Styleguide>' 

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
        @api_client.config.logger.debug "API called: StyleGuidesApi#styleguides_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
