require 'cgi'

module Phrase
  class GlossaryTermTranslationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a glossary term translation
    # Create a new glossary term translation.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param term_id [String] Term ID
    # @param glossary_term_translation_create_parameters [GlossaryTermTranslationCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def glossary_term_translation_create(account_id, glossary_id, term_id, glossary_term_translation_create_parameters, opts = {})
      glossary_term_translation_create_with_http_info(account_id, glossary_id, term_id, glossary_term_translation_create_parameters, opts)
      nil
    end

    # Create a glossary term translation
    # Create a new glossary term translation.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param term_id [String] Term ID
    # @param glossary_term_translation_create_parameters [GlossaryTermTranslationCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def glossary_term_translation_create_with_http_info(account_id, glossary_id, term_id, glossary_term_translation_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GlossaryTermTranslationsApi.glossary_term_translation_create ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling GlossaryTermTranslationsApi.glossary_term_translation_create"
      end
      # verify the required parameter 'glossary_id' is set
      if @api_client.config.client_side_validation && glossary_id.nil?
        fail ArgumentError, "Missing the required parameter 'glossary_id' when calling GlossaryTermTranslationsApi.glossary_term_translation_create"
      end
      # verify the required parameter 'term_id' is set
      if @api_client.config.client_side_validation && term_id.nil?
        fail ArgumentError, "Missing the required parameter 'term_id' when calling GlossaryTermTranslationsApi.glossary_term_translation_create"
      end
      # verify the required parameter 'glossary_term_translation_create_parameters' is set
      if @api_client.config.client_side_validation && glossary_term_translation_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'glossary_term_translation_create_parameters' when calling GlossaryTermTranslationsApi.glossary_term_translation_create"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/glossaries/{glossary_id}/terms/{term_id}/translations'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'glossary_id' + '}', CGI.escape(glossary_id.to_s)).sub('{' + 'term_id' + '}', CGI.escape(term_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(glossary_term_translation_create_parameters) 

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
        @api_client.config.logger.debug "API called: GlossaryTermTranslationsApi#glossary_term_translation_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a glossary term translation
    # Delete an existing glossary term translation.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param term_id [String] Term ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def glossary_term_translation_delete(account_id, glossary_id, term_id, id, opts = {})
      glossary_term_translation_delete_with_http_info(account_id, glossary_id, term_id, id, opts)
      nil
    end

    # Delete a glossary term translation
    # Delete an existing glossary term translation.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param term_id [String] Term ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def glossary_term_translation_delete_with_http_info(account_id, glossary_id, term_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GlossaryTermTranslationsApi.glossary_term_translation_delete ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling GlossaryTermTranslationsApi.glossary_term_translation_delete"
      end
      # verify the required parameter 'glossary_id' is set
      if @api_client.config.client_side_validation && glossary_id.nil?
        fail ArgumentError, "Missing the required parameter 'glossary_id' when calling GlossaryTermTranslationsApi.glossary_term_translation_delete"
      end
      # verify the required parameter 'term_id' is set
      if @api_client.config.client_side_validation && term_id.nil?
        fail ArgumentError, "Missing the required parameter 'term_id' when calling GlossaryTermTranslationsApi.glossary_term_translation_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GlossaryTermTranslationsApi.glossary_term_translation_delete"
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
        @api_client.config.logger.debug "API called: GlossaryTermTranslationsApi#glossary_term_translation_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a glossary term translation
    # Update an existing glossary term translation.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param term_id [String] Term ID
    # @param id [String] ID
    # @param glossary_term_translation_update_parameters [GlossaryTermTranslationUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [GlossaryTermTranslation]
    def glossary_term_translation_update(account_id, glossary_id, term_id, id, glossary_term_translation_update_parameters, opts = {})
      data, _status_code, _headers = glossary_term_translation_update_with_http_info(account_id, glossary_id, term_id, id, glossary_term_translation_update_parameters, opts)
      data
    end

    # Update a glossary term translation
    # Update an existing glossary term translation.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param term_id [String] Term ID
    # @param id [String] ID
    # @param glossary_term_translation_update_parameters [GlossaryTermTranslationUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(GlossaryTermTranslation)>, Integer, Hash)>] Response<(GlossaryTermTranslation)> data, response status code and response headers
    def glossary_term_translation_update_with_http_info(account_id, glossary_id, term_id, id, glossary_term_translation_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GlossaryTermTranslationsApi.glossary_term_translation_update ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling GlossaryTermTranslationsApi.glossary_term_translation_update"
      end
      # verify the required parameter 'glossary_id' is set
      if @api_client.config.client_side_validation && glossary_id.nil?
        fail ArgumentError, "Missing the required parameter 'glossary_id' when calling GlossaryTermTranslationsApi.glossary_term_translation_update"
      end
      # verify the required parameter 'term_id' is set
      if @api_client.config.client_side_validation && term_id.nil?
        fail ArgumentError, "Missing the required parameter 'term_id' when calling GlossaryTermTranslationsApi.glossary_term_translation_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GlossaryTermTranslationsApi.glossary_term_translation_update"
      end
      # verify the required parameter 'glossary_term_translation_update_parameters' is set
      if @api_client.config.client_side_validation && glossary_term_translation_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'glossary_term_translation_update_parameters' when calling GlossaryTermTranslationsApi.glossary_term_translation_update"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/glossaries/{glossary_id}/terms/{term_id}/translations/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'glossary_id' + '}', CGI.escape(glossary_id.to_s)).sub('{' + 'term_id' + '}', CGI.escape(term_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(glossary_term_translation_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'GlossaryTermTranslation' 

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
        @api_client.config.logger.debug "API called: GlossaryTermTranslationsApi#glossary_term_translation_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
