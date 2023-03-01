require 'cgi'

module Phrase
  class OrganizationJobTemplateLocalesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete an organization job template locale
    # Delete an existing organization job template locale.
    # @param account_id [String] Account ID
    # @param job_template_id [String] Job Template ID
    # @param job_template_locale_id [String] Job Template Locale ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def organization_job_template_locale_delete(account_id, job_template_id, job_template_locale_id, opts = {})
      data, _status_code, _headers = organization_job_template_locale_delete_with_http_info(account_id, job_template_id, job_template_locale_id, opts)
      data
    end

    # Delete an organization job template locale
    # Delete an existing organization job template locale.
    # @param account_id [String] Account ID
    # @param job_template_id [String] Job Template ID
    # @param job_template_locale_id [String] Job Template Locale ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def organization_job_template_locale_delete_with_http_info(account_id, job_template_id, job_template_locale_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationJobTemplateLocalesApi.organization_job_template_locale_delete ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling OrganizationJobTemplateLocalesApi.organization_job_template_locale_delete"
      end
      # verify the required parameter 'job_template_id' is set
      if @api_client.config.client_side_validation && job_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_id' when calling OrganizationJobTemplateLocalesApi.organization_job_template_locale_delete"
      end
      # verify the required parameter 'job_template_locale_id' is set
      if @api_client.config.client_side_validation && job_template_locale_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_locale_id' when calling OrganizationJobTemplateLocalesApi.organization_job_template_locale_delete"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/job_templates/{job_template_id}/locales/{job_template_locale_id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'job_template_id' + '}', CGI.escape(job_template_id.to_s)).sub('{' + 'job_template_locale_id' + '}', CGI.escape(job_template_locale_id.to_s))

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
        @api_client.config.logger.debug "API called: OrganizationJobTemplateLocalesApi#organization_job_template_locale_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single organization job template locale
    # Get a single job template locale for a given organization job template.
    # @param account_id [String] Account ID
    # @param job_template_id [String] Job Template ID
    # @param job_template_locale_id [String] Job Template Locale ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobTemplateLocales]
    def organization_job_template_locale_show(account_id, job_template_id, job_template_locale_id, opts = {})
      data, _status_code, _headers = organization_job_template_locale_show_with_http_info(account_id, job_template_id, job_template_locale_id, opts)
      data
    end

    # Get a single organization job template locale
    # Get a single job template locale for a given organization job template.
    # @param account_id [String] Account ID
    # @param job_template_id [String] Job Template ID
    # @param job_template_locale_id [String] Job Template Locale ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobTemplateLocales)>, Integer, Hash)>] Response<(JobTemplateLocales)> data, response status code and response headers
    def organization_job_template_locale_show_with_http_info(account_id, job_template_id, job_template_locale_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationJobTemplateLocalesApi.organization_job_template_locale_show ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling OrganizationJobTemplateLocalesApi.organization_job_template_locale_show"
      end
      # verify the required parameter 'job_template_id' is set
      if @api_client.config.client_side_validation && job_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_id' when calling OrganizationJobTemplateLocalesApi.organization_job_template_locale_show"
      end
      # verify the required parameter 'job_template_locale_id' is set
      if @api_client.config.client_side_validation && job_template_locale_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_locale_id' when calling OrganizationJobTemplateLocalesApi.organization_job_template_locale_show"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/job_templates/{job_template_id}/locales/{job_template_locale_id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'job_template_id' + '}', CGI.escape(job_template_id.to_s)).sub('{' + 'job_template_locale_id' + '}', CGI.escape(job_template_locale_id.to_s))

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
      return_type = opts[:return_type] || 'JobTemplateLocales' 

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
        @api_client.config.logger.debug "API called: OrganizationJobTemplateLocalesApi#organization_job_template_locale_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update an organization job template locale
    # Update an existing organization job template locale.
    # @param account_id [String] Account ID
    # @param job_template_id [String] Job Template ID
    # @param job_template_locale_id [String] Job Template Locale ID
    # @param organization_job_template_locale_update_parameters [OrganizationJobTemplateLocaleUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobTemplateLocales]
    def organization_job_template_locale_update(account_id, job_template_id, job_template_locale_id, organization_job_template_locale_update_parameters, opts = {})
      data, _status_code, _headers = organization_job_template_locale_update_with_http_info(account_id, job_template_id, job_template_locale_id, organization_job_template_locale_update_parameters, opts)
      data
    end

    # Update an organization job template locale
    # Update an existing organization job template locale.
    # @param account_id [String] Account ID
    # @param job_template_id [String] Job Template ID
    # @param job_template_locale_id [String] Job Template Locale ID
    # @param organization_job_template_locale_update_parameters [OrganizationJobTemplateLocaleUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobTemplateLocales)>, Integer, Hash)>] Response<(JobTemplateLocales)> data, response status code and response headers
    def organization_job_template_locale_update_with_http_info(account_id, job_template_id, job_template_locale_id, organization_job_template_locale_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationJobTemplateLocalesApi.organization_job_template_locale_update ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling OrganizationJobTemplateLocalesApi.organization_job_template_locale_update"
      end
      # verify the required parameter 'job_template_id' is set
      if @api_client.config.client_side_validation && job_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_id' when calling OrganizationJobTemplateLocalesApi.organization_job_template_locale_update"
      end
      # verify the required parameter 'job_template_locale_id' is set
      if @api_client.config.client_side_validation && job_template_locale_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_locale_id' when calling OrganizationJobTemplateLocalesApi.organization_job_template_locale_update"
      end
      # verify the required parameter 'organization_job_template_locale_update_parameters' is set
      if @api_client.config.client_side_validation && organization_job_template_locale_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'organization_job_template_locale_update_parameters' when calling OrganizationJobTemplateLocalesApi.organization_job_template_locale_update"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/job_templates/{job_template_id}/locales/{job_template_locale_id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'job_template_id' + '}', CGI.escape(job_template_id.to_s)).sub('{' + 'job_template_locale_id' + '}', CGI.escape(job_template_locale_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(organization_job_template_locale_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'JobTemplateLocales' 

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
        @api_client.config.logger.debug "API called: OrganizationJobTemplateLocalesApi#organization_job_template_locale_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Create an organization job template locale
    # Create a new organization job template locale.
    # @param account_id [String] Account ID
    # @param job_template_id [String] Job Template ID
    # @param organization_job_template_locales_create_parameters [OrganizationJobTemplateLocalesCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobTemplateLocales]
    def organization_job_template_locales_create(account_id, job_template_id, organization_job_template_locales_create_parameters, opts = {})
      data, _status_code, _headers = organization_job_template_locales_create_with_http_info(account_id, job_template_id, organization_job_template_locales_create_parameters, opts)
      data
    end

    # Create an organization job template locale
    # Create a new organization job template locale.
    # @param account_id [String] Account ID
    # @param job_template_id [String] Job Template ID
    # @param organization_job_template_locales_create_parameters [OrganizationJobTemplateLocalesCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobTemplateLocales)>, Integer, Hash)>] Response<(JobTemplateLocales)> data, response status code and response headers
    def organization_job_template_locales_create_with_http_info(account_id, job_template_id, organization_job_template_locales_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationJobTemplateLocalesApi.organization_job_template_locales_create ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling OrganizationJobTemplateLocalesApi.organization_job_template_locales_create"
      end
      # verify the required parameter 'job_template_id' is set
      if @api_client.config.client_side_validation && job_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_id' when calling OrganizationJobTemplateLocalesApi.organization_job_template_locales_create"
      end
      # verify the required parameter 'organization_job_template_locales_create_parameters' is set
      if @api_client.config.client_side_validation && organization_job_template_locales_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'organization_job_template_locales_create_parameters' when calling OrganizationJobTemplateLocalesApi.organization_job_template_locales_create"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/job_templates/{job_template_id}/locales'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'job_template_id' + '}', CGI.escape(job_template_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(organization_job_template_locales_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'JobTemplateLocales' 

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
        @api_client.config.logger.debug "API called: OrganizationJobTemplateLocalesApi#organization_job_template_locales_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List organization job template locales
    # List all job template locales for a given organization job template.
    # @param account_id [String] Account ID
    # @param job_template_id [String] Job Template ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @return [Array<JobTemplateLocales>]
    def organization_job_template_locales_list(account_id, job_template_id, opts = {})
      data, _status_code, _headers = organization_job_template_locales_list_with_http_info(account_id, job_template_id, opts)
      data
    end

    # List organization job template locales
    # List all job template locales for a given organization job template.
    # @param account_id [String] Account ID
    # @param job_template_id [String] Job Template ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @return [Array<(Response<(Array<JobTemplateLocales>)>, Integer, Hash)>] Response<(Array<JobTemplateLocales>)> data, response status code and response headers
    def organization_job_template_locales_list_with_http_info(account_id, job_template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationJobTemplateLocalesApi.organization_job_template_locales_list ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling OrganizationJobTemplateLocalesApi.organization_job_template_locales_list"
      end
      # verify the required parameter 'job_template_id' is set
      if @api_client.config.client_side_validation && job_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_id' when calling OrganizationJobTemplateLocalesApi.organization_job_template_locales_list"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/job_templates/{job_template_id}/locales'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'job_template_id' + '}', CGI.escape(job_template_id.to_s))

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
      return_type = opts[:return_type] || 'Array<JobTemplateLocales>' 

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
        @api_client.config.logger.debug "API called: OrganizationJobTemplateLocalesApi#organization_job_template_locales_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
