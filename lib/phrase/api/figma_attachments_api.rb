require 'cgi'

module Phrase
  class FigmaAttachmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Figma attachment
    # Create a new Figma attachment.
    # @param project_id [String] Project ID
    # @param figma_attachment_create_parameters [FigmaAttachmentCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [FigmaAttachment]
    def figma_attachment_create(project_id, figma_attachment_create_parameters, opts = {})
      data, _status_code, _headers = figma_attachment_create_with_http_info(project_id, figma_attachment_create_parameters, opts)
      data
    end

    # Create a Figma attachment
    # Create a new Figma attachment.
    # @param project_id [String] Project ID
    # @param figma_attachment_create_parameters [FigmaAttachmentCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(FigmaAttachment)>, Integer, Hash)>] Response<(FigmaAttachment)> data, response status code and response headers
    def figma_attachment_create_with_http_info(project_id, figma_attachment_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FigmaAttachmentsApi.figma_attachment_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling FigmaAttachmentsApi.figma_attachment_create"
      end
      # verify the required parameter 'figma_attachment_create_parameters' is set
      if @api_client.config.client_side_validation && figma_attachment_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'figma_attachment_create_parameters' when calling FigmaAttachmentsApi.figma_attachment_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/figma_attachments'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?

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
      post_body = opts[:body] || @api_client.object_to_http_body(figma_attachment_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'FigmaAttachment' 

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
        @api_client.config.logger.debug "API called: FigmaAttachmentsApi#figma_attachment_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a Figma attachment
    # Delete an existing Figma attachment.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [nil]
    def figma_attachment_delete(project_id, id, opts = {})
      data, _status_code, _headers = figma_attachment_delete_with_http_info(project_id, id, opts)
      data
    end

    # Delete a Figma attachment
    # Delete an existing Figma attachment.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def figma_attachment_delete_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FigmaAttachmentsApi.figma_attachment_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling FigmaAttachmentsApi.figma_attachment_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FigmaAttachmentsApi.figma_attachment_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/figma_attachments/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?

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
        @api_client.config.logger.debug "API called: FigmaAttachmentsApi#figma_attachment_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single Figma attachment
    # Get details on a single Figma attachment for a given project.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [FigmaAttachment]
    def figma_attachment_show(project_id, id, opts = {})
      data, _status_code, _headers = figma_attachment_show_with_http_info(project_id, id, opts)
      data
    end

    # Get a single Figma attachment
    # Get details on a single Figma attachment for a given project.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(FigmaAttachment)>, Integer, Hash)>] Response<(FigmaAttachment)> data, response status code and response headers
    def figma_attachment_show_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FigmaAttachmentsApi.figma_attachment_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling FigmaAttachmentsApi.figma_attachment_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FigmaAttachmentsApi.figma_attachment_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/figma_attachments/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'FigmaAttachment' 

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
        @api_client.config.logger.debug "API called: FigmaAttachmentsApi#figma_attachment_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a Figma attachment
    # Update an existing Figma attachment.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param figma_attachment_update_parameters [FigmaAttachmentUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [FigmaAttachment]
    def figma_attachment_update(project_id, id, figma_attachment_update_parameters, opts = {})
      data, _status_code, _headers = figma_attachment_update_with_http_info(project_id, id, figma_attachment_update_parameters, opts)
      data
    end

    # Update a Figma attachment
    # Update an existing Figma attachment.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param figma_attachment_update_parameters [FigmaAttachmentUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(FigmaAttachment)>, Integer, Hash)>] Response<(FigmaAttachment)> data, response status code and response headers
    def figma_attachment_update_with_http_info(project_id, id, figma_attachment_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FigmaAttachmentsApi.figma_attachment_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling FigmaAttachmentsApi.figma_attachment_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FigmaAttachmentsApi.figma_attachment_update"
      end
      # verify the required parameter 'figma_attachment_update_parameters' is set
      if @api_client.config.client_side_validation && figma_attachment_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'figma_attachment_update_parameters' when calling FigmaAttachmentsApi.figma_attachment_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/figma_attachments/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?

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
      post_body = opts[:body] || @api_client.object_to_http_body(figma_attachment_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'FigmaAttachment' 

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
        @api_client.config.logger.debug "API called: FigmaAttachmentsApi#figma_attachment_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List Figma attachments
    # List all Figma attachments for the given project
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @return [Array<FigmaAttachment>]
    def figma_attachments_list(project_id, opts = {})
      data, _status_code, _headers = figma_attachments_list_with_http_info(project_id, opts)
      data
    end

    # List Figma attachments
    # List all Figma attachments for the given project
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(Array<FigmaAttachment>)>, Integer, Hash)>] Response<(Array<FigmaAttachment>)> data, response status code and response headers
    def figma_attachments_list_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FigmaAttachmentsApi.figma_attachments_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling FigmaAttachmentsApi.figma_attachments_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/figma_attachments'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      return_type = opts[:return_type] || 'Array<FigmaAttachment>' 

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
        @api_client.config.logger.debug "API called: FigmaAttachmentsApi#figma_attachments_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
