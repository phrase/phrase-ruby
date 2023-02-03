require 'cgi'

module Phrase
  class JobTemplateLocalesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a job template locale
    # Delete an existing job template locale.
    # @param project_id [String] Project ID
    # @param job_template_id [String] Job Template ID
    # @param job_template_locale_id [String] Job Template Locale ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [nil]
    def job_template_locale_delete(project_id, job_template_id, job_template_locale_id, opts = {})
      data, _status_code, _headers = job_template_locale_delete_with_http_info(project_id, job_template_id, job_template_locale_id, opts)
      data
    end

    # Delete a job template locale
    # Delete an existing job template locale.
    # @param project_id [String] Project ID
    # @param job_template_id [String] Job Template ID
    # @param job_template_locale_id [String] Job Template Locale ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def job_template_locale_delete_with_http_info(project_id, job_template_id, job_template_locale_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobTemplateLocalesApi.job_template_locale_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobTemplateLocalesApi.job_template_locale_delete"
      end
      # verify the required parameter 'job_template_id' is set
      if @api_client.config.client_side_validation && job_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_id' when calling JobTemplateLocalesApi.job_template_locale_delete"
      end
      # verify the required parameter 'job_template_locale_id' is set
      if @api_client.config.client_side_validation && job_template_locale_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_locale_id' when calling JobTemplateLocalesApi.job_template_locale_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/job_templates/{job_template_id}/locales/{job_template_locale_id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_template_id' + '}', CGI.escape(job_template_id.to_s)).sub('{' + 'job_template_locale_id' + '}', CGI.escape(job_template_locale_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?

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
        @api_client.config.logger.debug "API called: JobTemplateLocalesApi#job_template_locale_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single job template locale
    # Get a single job template locale for a given job template.
    # @param project_id [String] Project ID
    # @param job_template_id [String] Job Template ID
    # @param job_template_locale_id [String] Job Template Locale ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [JobTemplateLocales]
    def job_template_locale_show(project_id, job_template_id, job_template_locale_id, opts = {})
      data, _status_code, _headers = job_template_locale_show_with_http_info(project_id, job_template_id, job_template_locale_id, opts)
      data
    end

    # Get a single job template locale
    # Get a single job template locale for a given job template.
    # @param project_id [String] Project ID
    # @param job_template_id [String] Job Template ID
    # @param job_template_locale_id [String] Job Template Locale ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(JobTemplateLocales)>, Integer, Hash)>] Response<(JobTemplateLocales)> data, response status code and response headers
    def job_template_locale_show_with_http_info(project_id, job_template_id, job_template_locale_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobTemplateLocalesApi.job_template_locale_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobTemplateLocalesApi.job_template_locale_show"
      end
      # verify the required parameter 'job_template_id' is set
      if @api_client.config.client_side_validation && job_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_id' when calling JobTemplateLocalesApi.job_template_locale_show"
      end
      # verify the required parameter 'job_template_locale_id' is set
      if @api_client.config.client_side_validation && job_template_locale_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_locale_id' when calling JobTemplateLocalesApi.job_template_locale_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/job_templates/{job_template_id}/locales/{job_template_locale_id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_template_id' + '}', CGI.escape(job_template_id.to_s)).sub('{' + 'job_template_locale_id' + '}', CGI.escape(job_template_locale_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?

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
        @api_client.config.logger.debug "API called: JobTemplateLocalesApi#job_template_locale_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a job template locale
    # Update an existing job template locale.
    # @param project_id [String] Project ID
    # @param job_template_id [String] Job Template ID
    # @param job_template_locale_id [String] Job Template Locale ID
    # @param job_template_locale_update_parameters [JobTemplateLocaleUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobTemplateLocales]
    def job_template_locale_update(project_id, job_template_id, job_template_locale_id, job_template_locale_update_parameters, opts = {})
      data, _status_code, _headers = job_template_locale_update_with_http_info(project_id, job_template_id, job_template_locale_id, job_template_locale_update_parameters, opts)
      data
    end

    # Update a job template locale
    # Update an existing job template locale.
    # @param project_id [String] Project ID
    # @param job_template_id [String] Job Template ID
    # @param job_template_locale_id [String] Job Template Locale ID
    # @param job_template_locale_update_parameters [JobTemplateLocaleUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobTemplateLocales)>, Integer, Hash)>] Response<(JobTemplateLocales)> data, response status code and response headers
    def job_template_locale_update_with_http_info(project_id, job_template_id, job_template_locale_id, job_template_locale_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobTemplateLocalesApi.job_template_locale_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobTemplateLocalesApi.job_template_locale_update"
      end
      # verify the required parameter 'job_template_id' is set
      if @api_client.config.client_side_validation && job_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_id' when calling JobTemplateLocalesApi.job_template_locale_update"
      end
      # verify the required parameter 'job_template_locale_id' is set
      if @api_client.config.client_side_validation && job_template_locale_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_locale_id' when calling JobTemplateLocalesApi.job_template_locale_update"
      end
      # verify the required parameter 'job_template_locale_update_parameters' is set
      if @api_client.config.client_side_validation && job_template_locale_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_locale_update_parameters' when calling JobTemplateLocalesApi.job_template_locale_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/job_templates/{job_template_id}/locales/{job_template_locale_id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_template_id' + '}', CGI.escape(job_template_id.to_s)).sub('{' + 'job_template_locale_id' + '}', CGI.escape(job_template_locale_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_template_locale_update_parameters) 

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
        @api_client.config.logger.debug "API called: JobTemplateLocalesApi#job_template_locale_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Create a job template locale
    # Create a new job template locale.
    # @param project_id [String] Project ID
    # @param job_template_id [String] Job Template ID
    # @param job_template_locales_create_parameters [JobTemplateLocalesCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobTemplateLocales]
    def job_template_locales_create(project_id, job_template_id, job_template_locales_create_parameters, opts = {})
      data, _status_code, _headers = job_template_locales_create_with_http_info(project_id, job_template_id, job_template_locales_create_parameters, opts)
      data
    end

    # Create a job template locale
    # Create a new job template locale.
    # @param project_id [String] Project ID
    # @param job_template_id [String] Job Template ID
    # @param job_template_locales_create_parameters [JobTemplateLocalesCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobTemplateLocales)>, Integer, Hash)>] Response<(JobTemplateLocales)> data, response status code and response headers
    def job_template_locales_create_with_http_info(project_id, job_template_id, job_template_locales_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobTemplateLocalesApi.job_template_locales_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobTemplateLocalesApi.job_template_locales_create"
      end
      # verify the required parameter 'job_template_id' is set
      if @api_client.config.client_side_validation && job_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_id' when calling JobTemplateLocalesApi.job_template_locales_create"
      end
      # verify the required parameter 'job_template_locales_create_parameters' is set
      if @api_client.config.client_side_validation && job_template_locales_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_locales_create_parameters' when calling JobTemplateLocalesApi.job_template_locales_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/job_templates/{job_template_id}/locales'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_template_id' + '}', CGI.escape(job_template_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_template_locales_create_parameters) 

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
        @api_client.config.logger.debug "API called: JobTemplateLocalesApi#job_template_locales_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List job template locales
    # List all job template locales for a given job template.
    # @param project_id [String] Project ID
    # @param job_template_id [String] Job Template ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @return [Array<JobTemplateLocales>]
    def job_template_locales_list(project_id, job_template_id, opts = {})
      data, _status_code, _headers = job_template_locales_list_with_http_info(project_id, job_template_id, opts)
      data
    end

    # List job template locales
    # List all job template locales for a given job template.
    # @param project_id [String] Project ID
    # @param job_template_id [String] Job Template ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(Array<JobTemplateLocales>)>, Integer, Hash)>] Response<(Array<JobTemplateLocales>)> data, response status code and response headers
    def job_template_locales_list_with_http_info(project_id, job_template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobTemplateLocalesApi.job_template_locales_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobTemplateLocalesApi.job_template_locales_list"
      end
      # verify the required parameter 'job_template_id' is set
      if @api_client.config.client_side_validation && job_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_template_id' when calling JobTemplateLocalesApi.job_template_locales_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/job_templates/{job_template_id}/locales'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_template_id' + '}', CGI.escape(job_template_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?

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
        @api_client.config.logger.debug "API called: JobTemplateLocalesApi#job_template_locales_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
