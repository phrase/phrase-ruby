require 'cgi'

module Phrase
  class TermBaseTranslationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a translation for a term
    # Delete an existing translation of a term in a term base (previously: glossary).
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param term_id [String] Term ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def glossary_term_translation_delete(account_id, glossary_id, term_id, id, opts = {})
      data, _status_code, _headers = glossary_term_translation_delete_with_http_info(account_id, glossary_id, term_id, id, opts)
      data
    end

    # Delete a translation for a term
    # Delete an existing translation of a term in a term base (previously: glossary).
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param term_id [String] Term ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def glossary_term_translation_delete_with_http_info(account_id, glossary_id, term_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TermBaseTranslationApi.glossary_term_translation_delete ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling TermBaseTranslationApi.glossary_term_translation_delete"
      end
      # verify the required parameter 'glossary_id' is set
      if @api_client.config.client_side_validation && glossary_id.nil?
        fail ArgumentError, "Missing the required parameter 'glossary_id' when calling TermBaseTranslationApi.glossary_term_translation_delete"
      end
      # verify the required parameter 'term_id' is set
      if @api_client.config.client_side_validation && term_id.nil?
        fail ArgumentError, "Missing the required parameter 'term_id' when calling TermBaseTranslationApi.glossary_term_translation_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TermBaseTranslationApi.glossary_term_translation_delete"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/glossaries/{glossary_id}/terms/{term_id}/translations/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'glossary_id' + '}', CGI.escape(glossary_id.to_s)).sub('{' + 'term_id' + '}', CGI.escape(term_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: TermBaseTranslationApi#glossary_term_translation_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
