require 'cgi'

module Phrase
  class ICUApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Build ICU skeletons
    # Generates ICU (International Components for Unicode) message format skeletons for a given source string across one or more locales. An ICU skeleton strips the literal text from a pluralized or select message while preserving its structural rules — argument names, plural categories, select cases, and ordinal forms — adjusted to the pluralization rules of each requested locale.  Use this endpoint to normalize translation templates before importing them into locale files, or to validate that a source string carries the plural forms required by a target language.  Either `content` or `id` must be provided — supplying both or neither returns 400. When `id` is used and the referenced translation does not exist, the endpoint returns 404. When the source string is not valid ICU message format syntax, the endpoint returns 422 with an `error` field describing the parse failure. 
    # @param icu_skeleton_parameters [IcuSkeletonParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Icu]
    def icu_skeleton(icu_skeleton_parameters, opts = {})
      data, _status_code, _headers = icu_skeleton_with_http_info(icu_skeleton_parameters, opts)
      data
    end

    # Build ICU skeletons
    # Generates ICU (International Components for Unicode) message format skeletons for a given source string across one or more locales. An ICU skeleton strips the literal text from a pluralized or select message while preserving its structural rules — argument names, plural categories, select cases, and ordinal forms — adjusted to the pluralization rules of each requested locale.  Use this endpoint to normalize translation templates before importing them into locale files, or to validate that a source string carries the plural forms required by a target language.  Either &#x60;content&#x60; or &#x60;id&#x60; must be provided — supplying both or neither returns 400. When &#x60;id&#x60; is used and the referenced translation does not exist, the endpoint returns 404. When the source string is not valid ICU message format syntax, the endpoint returns 422 with an &#x60;error&#x60; field describing the parse failure. 
    # @param icu_skeleton_parameters [IcuSkeletonParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Icu)>, Integer, Hash)>] Response<(Icu)> data, response status code and response headers
    def icu_skeleton_with_http_info(icu_skeleton_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ICUApi.icu_skeleton ...'
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
        @api_client.config.logger.debug "API called: ICUApi#icu_skeleton\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
