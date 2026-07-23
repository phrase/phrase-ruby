require 'cgi'

module Phrase
  class KeyFormatAnnotationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List format annotations for a key
    # Returns the format annotations stored on a translation key. Format annotations capture file-format data recorded when the key was imported — for example, an ARB placeholder block or an XLIFF note.  Results are limited to 1,000 entries. 
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [Array<KeyFormatAnnotationsList200ResponseInner>]
    def key_format_annotations_list(project_id, id, opts = {})
      data, _status_code, _headers = key_format_annotations_list_with_http_info(project_id, id, opts)
      data
    end

    # List format annotations for a key
    # Returns the format annotations stored on a translation key. Format annotations capture file-format data recorded when the key was imported — for example, an ARB placeholder block or an XLIFF note.  Results are limited to 1,000 entries. 
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [Array<(Response<(Array<KeyFormatAnnotationsList200ResponseInner>)>, Integer, Hash)>] Response<(Array<KeyFormatAnnotationsList200ResponseInner>)> data, response status code and response headers
    def key_format_annotations_list_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeyFormatAnnotationsApi.key_format_annotations_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeyFormatAnnotationsApi.key_format_annotations_list"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling KeyFormatAnnotationsApi.key_format_annotations_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{id}/format_annotations'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Array<KeyFormatAnnotationsList200ResponseInner>' 

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
        @api_client.config.logger.debug "API called: KeyFormatAnnotationsApi#key_format_annotations_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
