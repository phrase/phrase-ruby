require 'cgi'

module Phrase
  class ICUApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Build icu skeletons
    # Returns icu skeletons for multiple locale codes based on a source content.
    # @param icu_skeleton_parameters [IcuSkeletonParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Icu]
    def icu_skeleton(icu_skeleton_parameters, opts = {})
      data, _status_code, _headers = icu_skeleton_with_http_info(icu_skeleton_parameters, opts)
      data
    end

    # Build icu skeletons
    # Returns icu skeletons for multiple locale codes based on a source content.
    # @param icu_skeleton_parameters [IcuSkeletonParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Icu)>, Integer, Hash)>] Response<(Icu)> data, response status code and response headers
    def icu_skeleton_with_http_info(icu_skeleton_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ICUApi.icu_skeleton ...'
      end
      # verify the required parameter 'icu_skeleton_parameters' is set
      if @api_client.config.client_side_validation && icu_skeleton_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'icu_skeleton_parameters' when calling ICUApi.icu_skeleton"
      end
      # resource path
      local_var_path = '/icu/skeleton'

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
      post_body = opts[:body] || @api_client.object_to_http_body(icu_skeleton_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Icu' 

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
        @api_client.config.logger.debug "API called: ICUApi#icu_skeleton\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
