require 'cgi'

module Phrase
  class TagsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a tag
    # Create a new tag.
    # @param project_id [String] Project ID
    # @param tag_create_parameters [TagCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def tag_create(project_id, tag_create_parameters, opts = {})
      tag_create_with_http_info(project_id, tag_create_parameters, opts)
      nil
    end

    # Create a tag
    # Create a new tag.
    # @param project_id [String] Project ID
    # @param tag_create_parameters [TagCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def tag_create_with_http_info(project_id, tag_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.tag_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TagsApi.tag_create"
      end
      # verify the required parameter 'tag_create_parameters' is set
      if @api_client.config.client_side_validation && tag_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'tag_create_parameters' when calling TagsApi.tag_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/tags'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(tag_create_parameters) 

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
        @api_client.config.logger.debug "API called: TagsApi#tag_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a tag
    # Delete an existing tag.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param tag_delete_parameters [TagDeleteParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def tag_delete(project_id, name, tag_delete_parameters, opts = {})
      tag_delete_with_http_info(project_id, name, tag_delete_parameters, opts)
      nil
    end

    # Delete a tag
    # Delete an existing tag.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param tag_delete_parameters [TagDeleteParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def tag_delete_with_http_info(project_id, name, tag_delete_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.tag_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TagsApi.tag_delete"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling TagsApi.tag_delete"
      end
      # verify the required parameter 'tag_delete_parameters' is set
      if @api_client.config.client_side_validation && tag_delete_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'tag_delete_parameters' when calling TagsApi.tag_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/tags/{name}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(tag_delete_parameters) 

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
        @api_client.config.logger.debug "API called: TagsApi#tag_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single tag
    # Get details and progress information on a single tag for a given project.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param tag_show_parameters [TagShowParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [TagWithStats]
    def tag_show(project_id, name, tag_show_parameters, opts = {})
      data, _status_code, _headers = tag_show_with_http_info(project_id, name, tag_show_parameters, opts)
      data
    end

    # Get a single tag
    # Get details and progress information on a single tag for a given project.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param tag_show_parameters [TagShowParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(TagWithStats)>, Integer, Hash)>] Response<(TagWithStats)> data, response status code and response headers
    def tag_show_with_http_info(project_id, name, tag_show_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.tag_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TagsApi.tag_show"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling TagsApi.tag_show"
      end
      # verify the required parameter 'tag_show_parameters' is set
      if @api_client.config.client_side_validation && tag_show_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'tag_show_parameters' when calling TagsApi.tag_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/tags/{name}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(tag_show_parameters) 

      # return_type
      return_type = opts[:return_type] || 'TagWithStats' 

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
        @api_client.config.logger.debug "API called: TagsApi#tag_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List tags
    # List all tags for the given project.
    # @param project_id [String] Project ID
    # @param tags_list_parameters [TagsListParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<Tag>]
    def tags_list(project_id, tags_list_parameters, opts = {})
      data, _status_code, _headers = tags_list_with_http_info(project_id, tags_list_parameters, opts)
      data
    end

    # List tags
    # List all tags for the given project.
    # @param project_id [String] Project ID
    # @param tags_list_parameters [TagsListParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<Tag>)>, Integer, Hash)>] Response<(Array<Tag>)> data, response status code and response headers
    def tags_list_with_http_info(project_id, tags_list_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.tags_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TagsApi.tags_list"
      end
      # verify the required parameter 'tags_list_parameters' is set
      if @api_client.config.client_side_validation && tags_list_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'tags_list_parameters' when calling TagsApi.tags_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/tags'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

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
      post_body = opts[:body] || @api_client.object_to_http_body(tags_list_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Array<Tag>' 

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
        @api_client.config.logger.debug "API called: TagsApi#tags_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
