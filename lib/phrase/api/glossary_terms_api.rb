require 'cgi'

module Phrase
  class GlossaryTermsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a glossary term
    # Create a new glossary term.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param glossary_term_create_parameters [GlossaryTermCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [GlossaryTerm]
    def glossary_term_create(account_id, glossary_id, glossary_term_create_parameters, opts = {})
      data, _status_code, _headers = glossary_term_create_with_http_info(account_id, glossary_id, glossary_term_create_parameters, opts)
      data
    end

    # Create a glossary term
    # Create a new glossary term.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param glossary_term_create_parameters [GlossaryTermCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(GlossaryTerm)>, Integer, Hash)>] Response<(GlossaryTerm)> data, response status code and response headers
    def glossary_term_create_with_http_info(account_id, glossary_id, glossary_term_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GlossaryTermsApi.glossary_term_create ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling GlossaryTermsApi.glossary_term_create"
      end
      # verify the required parameter 'glossary_id' is set
      if @api_client.config.client_side_validation && glossary_id.nil?
        fail ArgumentError, "Missing the required parameter 'glossary_id' when calling GlossaryTermsApi.glossary_term_create"
      end
      # verify the required parameter 'glossary_term_create_parameters' is set
      if @api_client.config.client_side_validation && glossary_term_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'glossary_term_create_parameters' when calling GlossaryTermsApi.glossary_term_create"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/glossaries/{glossary_id}/terms'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'glossary_id' + '}', CGI.escape(glossary_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(glossary_term_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'GlossaryTerm' 

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
        @api_client.config.logger.debug "API called: GlossaryTermsApi#glossary_term_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a glossary term
    # Delete an existing glossary term.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def glossary_term_delete(account_id, glossary_id, id, opts = {})
      data, _status_code, _headers = glossary_term_delete_with_http_info(account_id, glossary_id, id, opts)
      data
    end

    # Delete a glossary term
    # Delete an existing glossary term.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def glossary_term_delete_with_http_info(account_id, glossary_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GlossaryTermsApi.glossary_term_delete ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling GlossaryTermsApi.glossary_term_delete"
      end
      # verify the required parameter 'glossary_id' is set
      if @api_client.config.client_side_validation && glossary_id.nil?
        fail ArgumentError, "Missing the required parameter 'glossary_id' when calling GlossaryTermsApi.glossary_term_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GlossaryTermsApi.glossary_term_delete"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/glossaries/{glossary_id}/terms/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'glossary_id' + '}', CGI.escape(glossary_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: GlossaryTermsApi#glossary_term_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single glossary term
    # Get details on a single glossary term.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [GlossaryTerm]
    def glossary_term_show(account_id, glossary_id, id, opts = {})
      data, _status_code, _headers = glossary_term_show_with_http_info(account_id, glossary_id, id, opts)
      data
    end

    # Get a single glossary term
    # Get details on a single glossary term.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(GlossaryTerm)>, Integer, Hash)>] Response<(GlossaryTerm)> data, response status code and response headers
    def glossary_term_show_with_http_info(account_id, glossary_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GlossaryTermsApi.glossary_term_show ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling GlossaryTermsApi.glossary_term_show"
      end
      # verify the required parameter 'glossary_id' is set
      if @api_client.config.client_side_validation && glossary_id.nil?
        fail ArgumentError, "Missing the required parameter 'glossary_id' when calling GlossaryTermsApi.glossary_term_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GlossaryTermsApi.glossary_term_show"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/glossaries/{glossary_id}/terms/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'glossary_id' + '}', CGI.escape(glossary_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      return_type = opts[:return_type] || 'GlossaryTerm' 

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
        @api_client.config.logger.debug "API called: GlossaryTermsApi#glossary_term_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a glossary term
    # Update an existing glossary term.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param id [String] ID
    # @param glossary_term_update_parameters [GlossaryTermUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [GlossaryTerm]
    def glossary_term_update(account_id, glossary_id, id, glossary_term_update_parameters, opts = {})
      data, _status_code, _headers = glossary_term_update_with_http_info(account_id, glossary_id, id, glossary_term_update_parameters, opts)
      data
    end

    # Update a glossary term
    # Update an existing glossary term.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param id [String] ID
    # @param glossary_term_update_parameters [GlossaryTermUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(GlossaryTerm)>, Integer, Hash)>] Response<(GlossaryTerm)> data, response status code and response headers
    def glossary_term_update_with_http_info(account_id, glossary_id, id, glossary_term_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GlossaryTermsApi.glossary_term_update ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling GlossaryTermsApi.glossary_term_update"
      end
      # verify the required parameter 'glossary_id' is set
      if @api_client.config.client_side_validation && glossary_id.nil?
        fail ArgumentError, "Missing the required parameter 'glossary_id' when calling GlossaryTermsApi.glossary_term_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GlossaryTermsApi.glossary_term_update"
      end
      # verify the required parameter 'glossary_term_update_parameters' is set
      if @api_client.config.client_side_validation && glossary_term_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'glossary_term_update_parameters' when calling GlossaryTermsApi.glossary_term_update"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/glossaries/{glossary_id}/terms/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'glossary_id' + '}', CGI.escape(glossary_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(glossary_term_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'GlossaryTerm' 

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
        @api_client.config.logger.debug "API called: GlossaryTermsApi#glossary_term_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List glossary terms
    # List all glossary terms the current user has access to.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<GlossaryTerm>]
    def glossary_terms_list(account_id, glossary_id, opts = {})
      data, _status_code, _headers = glossary_terms_list_with_http_info(account_id, glossary_id, opts)
      data
    end

    # List glossary terms
    # List all glossary terms the current user has access to.
    # @param account_id [String] Account ID
    # @param glossary_id [String] Glossary ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<GlossaryTerm>)>, Integer, Hash)>] Response<(Array<GlossaryTerm>)> data, response status code and response headers
    def glossary_terms_list_with_http_info(account_id, glossary_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GlossaryTermsApi.glossary_terms_list ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling GlossaryTermsApi.glossary_terms_list"
      end
      # verify the required parameter 'glossary_id' is set
      if @api_client.config.client_side_validation && glossary_id.nil?
        fail ArgumentError, "Missing the required parameter 'glossary_id' when calling GlossaryTermsApi.glossary_terms_list"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/glossaries/{glossary_id}/terms'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'glossary_id' + '}', CGI.escape(glossary_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

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
      return_type = opts[:return_type] || 'Array<GlossaryTerm>' 

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
        @api_client.config.logger.debug "API called: GlossaryTermsApi#glossary_terms_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
