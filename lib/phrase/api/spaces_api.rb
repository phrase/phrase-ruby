require 'cgi'

module Phrase
  class SpacesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Space
    # Create a new Space.
    # @param account_id [String] Account ID
    # @param space_create_parameters [SpaceCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def space_create(account_id, space_create_parameters, opts = {})
      space_create_with_http_info(account_id, space_create_parameters, opts)
      nil
    end

    # Create a Space
    # Create a new Space.
    # @param account_id [String] Account ID
    # @param space_create_parameters [SpaceCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def space_create_with_http_info(account_id, space_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.space_create ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SpacesApi.space_create"
      end
      # verify the required parameter 'space_create_parameters' is set
      if @api_client.config.client_side_validation && space_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'space_create_parameters' when calling SpacesApi.space_create"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/spaces'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(space_create_parameters) 

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
        @api_client.config.logger.debug "API called: SpacesApi#space_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete Space
    # Delete the specified Space.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def space_delete(account_id, id, opts = {})
      space_delete_with_http_info(account_id, id, opts)
      nil
    end

    # Delete Space
    # Delete the specified Space.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def space_delete_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.space_delete ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SpacesApi.space_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SpacesApi.space_delete"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/spaces/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: SpacesApi#space_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get Space
    # Show the specified Space.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Space]
    def space_show(account_id, id, opts = {})
      data, _status_code, _headers = space_show_with_http_info(account_id, id, opts)
      data
    end

    # Get Space
    # Show the specified Space.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Space)>, Integer, Hash)>] Response<(Space)> data, response status code and response headers
    def space_show_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.space_show ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SpacesApi.space_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SpacesApi.space_show"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/spaces/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Space' 

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
        @api_client.config.logger.debug "API called: SpacesApi#space_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update Space
    # Update the specified Space.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param space_update_parameters [SpaceUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Space]
    def space_update(account_id, id, space_update_parameters, opts = {})
      data, _status_code, _headers = space_update_with_http_info(account_id, id, space_update_parameters, opts)
      data
    end

    # Update Space
    # Update the specified Space.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param space_update_parameters [SpaceUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Space)>, Integer, Hash)>] Response<(Space)> data, response status code and response headers
    def space_update_with_http_info(account_id, id, space_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.space_update ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SpacesApi.space_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SpacesApi.space_update"
      end
      # verify the required parameter 'space_update_parameters' is set
      if @api_client.config.client_side_validation && space_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'space_update_parameters' when calling SpacesApi.space_update"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/spaces/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(space_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Space' 

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
        @api_client.config.logger.debug "API called: SpacesApi#space_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List Spaces
    # List all Spaces for the given account.
    # @param account_id [String] Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<Space>]
    def spaces_list(account_id, opts = {})
      data, _status_code, _headers = spaces_list_with_http_info(account_id, opts)
      data
    end

    # List Spaces
    # List all Spaces for the given account.
    # @param account_id [String] Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<Space>)>, Integer, Hash)>] Response<(Array<Space>)> data, response status code and response headers
    def spaces_list_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.spaces_list ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SpacesApi.spaces_list"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/spaces'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:return_type] || 'Array<Space>' 

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
        @api_client.config.logger.debug "API called: SpacesApi#spaces_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Add Project
    # Adds an existing project to the space.
    # @param account_id [String] Account ID
    # @param space_id [String] Space ID
    # @param spaces_projects_create_parameters [SpacesProjectsCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def spaces_projects_create(account_id, space_id, spaces_projects_create_parameters, opts = {})
      spaces_projects_create_with_http_info(account_id, space_id, spaces_projects_create_parameters, opts)
      nil
    end

    # Add Project
    # Adds an existing project to the space.
    # @param account_id [String] Account ID
    # @param space_id [String] Space ID
    # @param spaces_projects_create_parameters [SpacesProjectsCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def spaces_projects_create_with_http_info(account_id, space_id, spaces_projects_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.spaces_projects_create ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SpacesApi.spaces_projects_create"
      end
      # verify the required parameter 'space_id' is set
      if @api_client.config.client_side_validation && space_id.nil?
        fail ArgumentError, "Missing the required parameter 'space_id' when calling SpacesApi.spaces_projects_create"
      end
      # verify the required parameter 'spaces_projects_create_parameters' is set
      if @api_client.config.client_side_validation && spaces_projects_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'spaces_projects_create_parameters' when calling SpacesApi.spaces_projects_create"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/spaces/{space_id}/projects'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'space_id' + '}', CGI.escape(space_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(spaces_projects_create_parameters) 

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
        @api_client.config.logger.debug "API called: SpacesApi#spaces_projects_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Remove Project
    # Removes a specified project from the specified space.
    # @param account_id [String] Account ID
    # @param space_id [String] Space ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def spaces_projects_delete(account_id, space_id, id, opts = {})
      spaces_projects_delete_with_http_info(account_id, space_id, id, opts)
      nil
    end

    # Remove Project
    # Removes a specified project from the specified space.
    # @param account_id [String] Account ID
    # @param space_id [String] Space ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def spaces_projects_delete_with_http_info(account_id, space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.spaces_projects_delete ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SpacesApi.spaces_projects_delete"
      end
      # verify the required parameter 'space_id' is set
      if @api_client.config.client_side_validation && space_id.nil?
        fail ArgumentError, "Missing the required parameter 'space_id' when calling SpacesApi.spaces_projects_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SpacesApi.spaces_projects_delete"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/spaces/{space_id}/projects/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'space_id' + '}', CGI.escape(space_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: SpacesApi#spaces_projects_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List Projects
    # List all projects for the specified Space.
    # @param account_id [String] Account ID
    # @param space_id [String] Space ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<Project>]
    def spaces_projects_list(account_id, space_id, opts = {})
      data, _status_code, _headers = spaces_projects_list_with_http_info(account_id, space_id, opts)
      data
    end

    # List Projects
    # List all projects for the specified Space.
    # @param account_id [String] Account ID
    # @param space_id [String] Space ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<Project>)>, Integer, Hash)>] Response<(Array<Project>)> data, response status code and response headers
    def spaces_projects_list_with_http_info(account_id, space_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpacesApi.spaces_projects_list ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SpacesApi.spaces_projects_list"
      end
      # verify the required parameter 'space_id' is set
      if @api_client.config.client_side_validation && space_id.nil?
        fail ArgumentError, "Missing the required parameter 'space_id' when calling SpacesApi.spaces_projects_list"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/spaces/{space_id}/projects'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'space_id' + '}', CGI.escape(space_id.to_s))

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
      return_type = opts[:return_type] || 'Array<Project>' 

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
        @api_client.config.logger.debug "API called: SpacesApi#spaces_projects_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
