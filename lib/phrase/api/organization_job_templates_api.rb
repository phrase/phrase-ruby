require 'cgi'

module Phrase
  class OrganizationJobTemplatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an organization job template
    # Create a new organization job template.
    # @param account_id [String] Account ID
    # @param organization_job_template_create_parameters [OrganizationJobTemplateCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [OrganizationJobTemplateDetails]
    def organization_job_template_create(account_id, organization_job_template_create_parameters, opts = {})
      data, _status_code, _headers = organization_job_template_create_with_http_info(account_id, organization_job_template_create_parameters, opts)
      data
    end

    # Create an organization job template
    # Create a new organization job template.
    # @param account_id [String] Account ID
    # @param organization_job_template_create_parameters [OrganizationJobTemplateCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(OrganizationJobTemplateDetails)>, Integer, Hash)>] Response<(OrganizationJobTemplateDetails)> data, response status code and response headers
    def organization_job_template_create_with_http_info(account_id, organization_job_template_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationJobTemplatesApi.organization_job_template_create ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling OrganizationJobTemplatesApi.organization_job_template_create"
      end
      # verify the required parameter 'organization_job_template_create_parameters' is set
      if @api_client.config.client_side_validation && organization_job_template_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'organization_job_template_create_parameters' when calling OrganizationJobTemplatesApi.organization_job_template_create"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/job_templates'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(organization_job_template_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'OrganizationJobTemplateDetails' 

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
        @api_client.config.logger.debug "API called: OrganizationJobTemplatesApi#organization_job_template_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete an organization job template
    # Delete an existing organization job template.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def organization_job_template_delete(account_id, id, opts = {})
      data, _status_code, _headers = organization_job_template_delete_with_http_info(account_id, id, opts)
      data
    end

    # Delete an organization job template
    # Delete an existing organization job template.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def organization_job_template_delete_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationJobTemplatesApi.organization_job_template_delete ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling OrganizationJobTemplatesApi.organization_job_template_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrganizationJobTemplatesApi.organization_job_template_delete"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/job_templates/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: OrganizationJobTemplatesApi#organization_job_template_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update an organization job template
    # Update an existing organization job template.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param organization_job_template_update_parameters [OrganizationJobTemplateUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [OrganizationJobTemplateDetails]
    def organization_job_template_update(account_id, id, organization_job_template_update_parameters, opts = {})
      data, _status_code, _headers = organization_job_template_update_with_http_info(account_id, id, organization_job_template_update_parameters, opts)
      data
    end

    # Update an organization job template
    # Update an existing organization job template.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param organization_job_template_update_parameters [OrganizationJobTemplateUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(OrganizationJobTemplateDetails)>, Integer, Hash)>] Response<(OrganizationJobTemplateDetails)> data, response status code and response headers
    def organization_job_template_update_with_http_info(account_id, id, organization_job_template_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationJobTemplatesApi.organization_job_template_update ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling OrganizationJobTemplatesApi.organization_job_template_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrganizationJobTemplatesApi.organization_job_template_update"
      end
      # verify the required parameter 'organization_job_template_update_parameters' is set
      if @api_client.config.client_side_validation && organization_job_template_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'organization_job_template_update_parameters' when calling OrganizationJobTemplatesApi.organization_job_template_update"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/job_templates/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(organization_job_template_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'OrganizationJobTemplateDetails' 

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
        @api_client.config.logger.debug "API called: OrganizationJobTemplatesApi#organization_job_template_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List organization job templates
    # List all job templates for the given account.
    # @param account_id [String] Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @return [Array<OrganizationJobTemplate>]
    def organization_job_templates_list(account_id, opts = {})
      data, _status_code, _headers = organization_job_templates_list_with_http_info(account_id, opts)
      data
    end

    # List organization job templates
    # List all job templates for the given account.
    # @param account_id [String] Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @return [Array<(Response<(Array<OrganizationJobTemplate>)>, Integer, Hash)>] Response<(Array<OrganizationJobTemplate>)> data, response status code and response headers
    def organization_job_templates_list_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationJobTemplatesApi.organization_job_templates_list ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling OrganizationJobTemplatesApi.organization_job_templates_list"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/job_templates'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:return_type] || 'Array<OrganizationJobTemplate>' 

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
        @api_client.config.logger.debug "API called: OrganizationJobTemplatesApi#organization_job_templates_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single organization job template
    # Get details on a single organization job template for a given account.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [OrganizationJobTemplateDetails]
    def organization_job_templates_show(account_id, id, opts = {})
      data, _status_code, _headers = organization_job_templates_show_with_http_info(account_id, id, opts)
      data
    end

    # Get a single organization job template
    # Get details on a single organization job template for a given account.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(OrganizationJobTemplateDetails)>, Integer, Hash)>] Response<(OrganizationJobTemplateDetails)> data, response status code and response headers
    def organization_job_templates_show_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationJobTemplatesApi.organization_job_templates_show ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling OrganizationJobTemplatesApi.organization_job_templates_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrganizationJobTemplatesApi.organization_job_templates_show"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/job_templates/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'OrganizationJobTemplateDetails' 

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
        @api_client.config.logger.debug "API called: OrganizationJobTemplatesApi#organization_job_templates_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
