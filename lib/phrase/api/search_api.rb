require 'cgi'

module Phrase
  class SearchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Search across projects
    # Search for keys and translations in all account projects
    # @param account_id [String] Account ID
    # @param search_in_account_parameters [SearchInAccountParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [AccountSearchResult]
    def search_in_account(account_id, search_in_account_parameters, opts = {})
      data, _status_code, _headers = search_in_account_with_http_info(account_id, search_in_account_parameters, opts)
      data
    end

    # Search across projects
    # Search for keys and translations in all account projects
    # @param account_id [String] Account ID
    # @param search_in_account_parameters [SearchInAccountParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(AccountSearchResult)>, Integer, Hash)>] Response<(AccountSearchResult)> data, response status code and response headers
    def search_in_account_with_http_info(account_id, search_in_account_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SearchApi.search_in_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SearchApi.search_in_account"
      end
      # verify the required parameter 'search_in_account_parameters' is set
      if @api_client.config.client_side_validation && search_in_account_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'search_in_account_parameters' when calling SearchApi.search_in_account"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/search'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(search_in_account_parameters) 

      # return_type
      return_type = opts[:return_type] || 'AccountSearchResult' 

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
        @api_client.config.logger.debug "API called: SearchApi#search_in_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
