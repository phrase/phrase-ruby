require 'cgi'

module Phrase
  class KeysFigmaAttachmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Attach the Figma attachment to a key
    # Attach the Figma attachment to a key
    # @param project_id [String] Project ID
    # @param figma_attachment_id [String] Figma attachment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [nil]
    def figma_attachment_attach_to_key(project_id, figma_attachment_id, id, opts = {})
      data, _status_code, _headers = figma_attachment_attach_to_key_with_http_info(project_id, figma_attachment_id, id, opts)
      data
    end

    # Attach the Figma attachment to a key
    # Attach the Figma attachment to a key
    # @param project_id [String] Project ID
    # @param figma_attachment_id [String] Figma attachment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def figma_attachment_attach_to_key_with_http_info(project_id, figma_attachment_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysFigmaAttachmentsApi.figma_attachment_attach_to_key ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysFigmaAttachmentsApi.figma_attachment_attach_to_key"
      end
      # verify the required parameter 'figma_attachment_id' is set
      if @api_client.config.client_side_validation && figma_attachment_id.nil?
        fail ArgumentError, "Missing the required parameter 'figma_attachment_id' when calling KeysFigmaAttachmentsApi.figma_attachment_attach_to_key"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling KeysFigmaAttachmentsApi.figma_attachment_attach_to_key"
      end
      # resource path
      local_var_path = '/projects/{project_id}/figma_attachments/{figma_attachment_id}/keys'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'figma_attachment_id' + '}', CGI.escape(figma_attachment_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KeysFigmaAttachmentsApi#figma_attachment_attach_to_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Detach the Figma attachment from a key
    # Detach the Figma attachment from a key
    # @param project_id [String] Project ID
    # @param figma_attachment_id [String] Figma attachment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [nil]
    def figma_attachment_detach_from_key(project_id, figma_attachment_id, id, opts = {})
      data, _status_code, _headers = figma_attachment_detach_from_key_with_http_info(project_id, figma_attachment_id, id, opts)
      data
    end

    # Detach the Figma attachment from a key
    # Detach the Figma attachment from a key
    # @param project_id [String] Project ID
    # @param figma_attachment_id [String] Figma attachment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def figma_attachment_detach_from_key_with_http_info(project_id, figma_attachment_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysFigmaAttachmentsApi.figma_attachment_detach_from_key ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysFigmaAttachmentsApi.figma_attachment_detach_from_key"
      end
      # verify the required parameter 'figma_attachment_id' is set
      if @api_client.config.client_side_validation && figma_attachment_id.nil?
        fail ArgumentError, "Missing the required parameter 'figma_attachment_id' when calling KeysFigmaAttachmentsApi.figma_attachment_detach_from_key"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling KeysFigmaAttachmentsApi.figma_attachment_detach_from_key"
      end
      # resource path
      local_var_path = '/projects/{project_id}/figma_attachments/{figma_attachment_id}/keys/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'figma_attachment_id' + '}', CGI.escape(figma_attachment_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: KeysFigmaAttachmentsApi#figma_attachment_detach_from_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
