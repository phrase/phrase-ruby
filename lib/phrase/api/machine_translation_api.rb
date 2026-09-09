require 'cgi'

module Phrase
  class MachineTranslationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a locale provider mapping
    # Creates a locale-pair-specific machine translation provider override for the account. When a mapping exists for a given source/target locale pair, that provider is used instead of the account default. Only one mapping may exist per source/target locale pair; attempting to create a duplicate returns a validation error. The source and target locale codes must differ. 
    # @param account_id [String] Account ID
    # @param machine_translation_locale_provider_mappings_create_parameters [MachineTranslationLocaleProviderMappingsCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [MachineTranslationLocaleProviderMapping]
    def machine_translation_locale_provider_mappings_create(account_id, machine_translation_locale_provider_mappings_create_parameters, opts = {})
      data, _status_code, _headers = machine_translation_locale_provider_mappings_create_with_http_info(account_id, machine_translation_locale_provider_mappings_create_parameters, opts)
      data
    end

    # Create a locale provider mapping
    # Creates a locale-pair-specific machine translation provider override for the account. When a mapping exists for a given source/target locale pair, that provider is used instead of the account default. Only one mapping may exist per source/target locale pair; attempting to create a duplicate returns a validation error. The source and target locale codes must differ. 
    # @param account_id [String] Account ID
    # @param machine_translation_locale_provider_mappings_create_parameters [MachineTranslationLocaleProviderMappingsCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(MachineTranslationLocaleProviderMapping)>, Integer, Hash)>] Response<(MachineTranslationLocaleProviderMapping)> data, response status code and response headers
    def machine_translation_locale_provider_mappings_create_with_http_info(account_id, machine_translation_locale_provider_mappings_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MachineTranslationApi.machine_translation_locale_provider_mappings_create ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling MachineTranslationApi.machine_translation_locale_provider_mappings_create"
      end
      # verify the required parameter 'machine_translation_locale_provider_mappings_create_parameters' is set
      if @api_client.config.client_side_validation && machine_translation_locale_provider_mappings_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'machine_translation_locale_provider_mappings_create_parameters' when calling MachineTranslationApi.machine_translation_locale_provider_mappings_create"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/machine_translation_locale_provider_mappings'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(machine_translation_locale_provider_mappings_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'MachineTranslationLocaleProviderMapping' 

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
        @api_client.config.logger.debug "API called: MachineTranslationApi#machine_translation_locale_provider_mappings_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a locale provider mapping
    # Removes the machine translation provider override for the specified source and target locale pair. The mapping is identified by locale codes supplied as query parameters rather than a path ID. 
    # @param account_id [String] Account ID
    # @param source_locale_code [String] The locale code of the source language of the mapping to delete.
    # @param target_locale_code [String] The locale code of the target language of the mapping to delete.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def machine_translation_locale_provider_mappings_destroy(account_id, source_locale_code, target_locale_code, opts = {})
      data, _status_code, _headers = machine_translation_locale_provider_mappings_destroy_with_http_info(account_id, source_locale_code, target_locale_code, opts)
      data
    end

    # Delete a locale provider mapping
    # Removes the machine translation provider override for the specified source and target locale pair. The mapping is identified by locale codes supplied as query parameters rather than a path ID. 
    # @param account_id [String] Account ID
    # @param source_locale_code [String] The locale code of the source language of the mapping to delete.
    # @param target_locale_code [String] The locale code of the target language of the mapping to delete.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def machine_translation_locale_provider_mappings_destroy_with_http_info(account_id, source_locale_code, target_locale_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MachineTranslationApi.machine_translation_locale_provider_mappings_destroy ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling MachineTranslationApi.machine_translation_locale_provider_mappings_destroy"
      end
      # verify the required parameter 'source_locale_code' is set
      if @api_client.config.client_side_validation && source_locale_code.nil?
        fail ArgumentError, "Missing the required parameter 'source_locale_code' when calling MachineTranslationApi.machine_translation_locale_provider_mappings_destroy"
      end
      # verify the required parameter 'target_locale_code' is set
      if @api_client.config.client_side_validation && target_locale_code.nil?
        fail ArgumentError, "Missing the required parameter 'target_locale_code' when calling MachineTranslationApi.machine_translation_locale_provider_mappings_destroy"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/machine_translation_locale_provider_mappings'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'source_locale_code'] = source_locale_code
      query_params[:'target_locale_code'] = target_locale_code

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
        @api_client.config.logger.debug "API called: MachineTranslationApi#machine_translation_locale_provider_mappings_destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get machine translation settings
    # Returns the machine translation configuration for the account, including the default translation service, current machine translation unit usage, and any locale-pair-specific provider mappings. 
    # @param account_id [String] Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [MachineTranslationSettings]
    def machine_translation_settings_show(account_id, opts = {})
      data, _status_code, _headers = machine_translation_settings_show_with_http_info(account_id, opts)
      data
    end

    # Get machine translation settings
    # Returns the machine translation configuration for the account, including the default translation service, current machine translation unit usage, and any locale-pair-specific provider mappings. 
    # @param account_id [String] Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(MachineTranslationSettings)>, Integer, Hash)>] Response<(MachineTranslationSettings)> data, response status code and response headers
    def machine_translation_settings_show_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MachineTranslationApi.machine_translation_settings_show ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling MachineTranslationApi.machine_translation_settings_show"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/machine_translation_settings'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:return_type] || 'MachineTranslationSettings' 

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
        @api_client.config.logger.debug "API called: MachineTranslationApi#machine_translation_settings_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update machine translation settings
    # Sets the default machine translation service for the account. Requires write access to the account's machine translation settings. Passing an empty or absent value for `default_service` resets the account to its plan default (Microsoft Translate). 
    # @param account_id [String] Account ID
    # @param machine_translation_settings_update_parameters [MachineTranslationSettingsUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [MachineTranslationSettings]
    def machine_translation_settings_update(account_id, machine_translation_settings_update_parameters, opts = {})
      data, _status_code, _headers = machine_translation_settings_update_with_http_info(account_id, machine_translation_settings_update_parameters, opts)
      data
    end

    # Update machine translation settings
    # Sets the default machine translation service for the account. Requires write access to the account&#39;s machine translation settings. Passing an empty or absent value for &#x60;default_service&#x60; resets the account to its plan default (Microsoft Translate). 
    # @param account_id [String] Account ID
    # @param machine_translation_settings_update_parameters [MachineTranslationSettingsUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(MachineTranslationSettings)>, Integer, Hash)>] Response<(MachineTranslationSettings)> data, response status code and response headers
    def machine_translation_settings_update_with_http_info(account_id, machine_translation_settings_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MachineTranslationApi.machine_translation_settings_update ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling MachineTranslationApi.machine_translation_settings_update"
      end
      # verify the required parameter 'machine_translation_settings_update_parameters' is set
      if @api_client.config.client_side_validation && machine_translation_settings_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'machine_translation_settings_update_parameters' when calling MachineTranslationApi.machine_translation_settings_update"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/machine_translation_settings'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(machine_translation_settings_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'MachineTranslationSettings' 

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
        @api_client.config.logger.debug "API called: MachineTranslationApi#machine_translation_settings_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
