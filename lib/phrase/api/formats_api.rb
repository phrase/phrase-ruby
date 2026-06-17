require 'cgi'

module Phrase
  class FormatsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List formats
    # Returns all file formats that Phrase Strings supports. Use the api_name value from each format as the file_format parameter when uploading or downloading locale files. Not every format supports both directions: check the importable and exportable fields before using a format in a workflow. This endpoint does not require authentication and is not subject to rate limiting. 
    # @param [Hash] opts the optional parameters
    # @return [Array<Format>]
    def formats_list(opts = {})
      data, _status_code, _headers = formats_list_with_http_info(opts)
      data
    end

    # List formats
    # Returns all file formats that Phrase Strings supports. Use the api_name value from each format as the file_format parameter when uploading or downloading locale files. Not every format supports both directions: check the importable and exportable fields before using a format in a workflow. This endpoint does not require authentication and is not subject to rate limiting. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Response<(Array<Format>)>, Integer, Hash)>] Response<(Array<Format>)> data, response status code and response headers
    def formats_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FormatsApi.formats_list ...'
      end
      # resource path
      local_var_path = '/formats'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<Format>' 

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
        @api_client.config.logger.debug "API called: FormatsApi#formats_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
