require 'cgi'

module Phrase
  class JobLocalesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Complete a job locale
    # Mark a job locale as completed.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] ID
    # @param job_locale_complete [JobLocaleComplete] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Object]
    def job_locale_complete(project_id, job_id, id, job_locale_complete, opts = {})
      data, _status_code, _headers = job_locale_complete_with_http_info(project_id, job_id, id, job_locale_complete, opts)
      data
    end

    # Complete a job locale
    # Mark a job locale as completed.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] ID
    # @param job_locale_complete [JobLocaleComplete] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Object)>, Integer, Hash)>] Response<(Object)> data, response status code and response headers
    def job_locale_complete_with_http_info(project_id, job_id, id, job_locale_complete, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobLocalesApi.job_locale_complete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobLocalesApi.job_locale_complete"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobLocalesApi.job_locale_complete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobLocalesApi.job_locale_complete"
      end
      # verify the required parameter 'job_locale_complete' is set
      if @api_client.config.client_side_validation && job_locale_complete.nil?
        fail ArgumentError, "Missing the required parameter 'job_locale_complete' when calling JobLocalesApi.job_locale_complete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/locales/{id}/complete'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_locale_complete) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

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
        @api_client.config.logger.debug "API called: JobLocalesApi#job_locale_complete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a job locale
    # Delete an existing job locale.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] ID
    # @param job_locale_delete [JobLocaleDelete] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def job_locale_delete(project_id, job_id, id, job_locale_delete, opts = {})
      job_locale_delete_with_http_info(project_id, job_id, id, job_locale_delete, opts)
      nil
    end

    # Delete a job locale
    # Delete an existing job locale.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] ID
    # @param job_locale_delete [JobLocaleDelete] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def job_locale_delete_with_http_info(project_id, job_id, id, job_locale_delete, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobLocalesApi.job_locale_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobLocalesApi.job_locale_delete"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobLocalesApi.job_locale_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobLocalesApi.job_locale_delete"
      end
      # verify the required parameter 'job_locale_delete' is set
      if @api_client.config.client_side_validation && job_locale_delete.nil?
        fail ArgumentError, "Missing the required parameter 'job_locale_delete' when calling JobLocalesApi.job_locale_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/locales/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_locale_delete) 

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
        @api_client.config.logger.debug "API called: JobLocalesApi#job_locale_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Reopen a job locale
    # Mark a job locale as uncompleted.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] ID
    # @param job_locale_reopen [JobLocaleReopen] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Object]
    def job_locale_reopen(project_id, job_id, id, job_locale_reopen, opts = {})
      data, _status_code, _headers = job_locale_reopen_with_http_info(project_id, job_id, id, job_locale_reopen, opts)
      data
    end

    # Reopen a job locale
    # Mark a job locale as uncompleted.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] ID
    # @param job_locale_reopen [JobLocaleReopen] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Object)>, Integer, Hash)>] Response<(Object)> data, response status code and response headers
    def job_locale_reopen_with_http_info(project_id, job_id, id, job_locale_reopen, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobLocalesApi.job_locale_reopen ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobLocalesApi.job_locale_reopen"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobLocalesApi.job_locale_reopen"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobLocalesApi.job_locale_reopen"
      end
      # verify the required parameter 'job_locale_reopen' is set
      if @api_client.config.client_side_validation && job_locale_reopen.nil?
        fail ArgumentError, "Missing the required parameter 'job_locale_reopen' when calling JobLocalesApi.job_locale_reopen"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/locales/{id}/reopen'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_locale_reopen) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

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
        @api_client.config.logger.debug "API called: JobLocalesApi#job_locale_reopen\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single job locale
    # Get a single job locale for a given job.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] ID
    # @param job_locale_show [JobLocaleShow] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobLocale]
    def job_locale_show(project_id, job_id, id, job_locale_show, opts = {})
      data, _status_code, _headers = job_locale_show_with_http_info(project_id, job_id, id, job_locale_show, opts)
      data
    end

    # Get a single job locale
    # Get a single job locale for a given job.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] ID
    # @param job_locale_show [JobLocaleShow] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobLocale)>, Integer, Hash)>] Response<(JobLocale)> data, response status code and response headers
    def job_locale_show_with_http_info(project_id, job_id, id, job_locale_show, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobLocalesApi.job_locale_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobLocalesApi.job_locale_show"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobLocalesApi.job_locale_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobLocalesApi.job_locale_show"
      end
      # verify the required parameter 'job_locale_show' is set
      if @api_client.config.client_side_validation && job_locale_show.nil?
        fail ArgumentError, "Missing the required parameter 'job_locale_show' when calling JobLocalesApi.job_locale_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/locale/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_locale_show) 

      # return_type
      return_type = opts[:return_type] || 'JobLocale' 

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
        @api_client.config.logger.debug "API called: JobLocalesApi#job_locale_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a job locale
    # Update an existing job locale.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] ID
    # @param job_locale_update [JobLocaleUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Object]
    def job_locale_update(project_id, job_id, id, job_locale_update, opts = {})
      data, _status_code, _headers = job_locale_update_with_http_info(project_id, job_id, id, job_locale_update, opts)
      data
    end

    # Update a job locale
    # Update an existing job locale.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] ID
    # @param job_locale_update [JobLocaleUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Object)>, Integer, Hash)>] Response<(Object)> data, response status code and response headers
    def job_locale_update_with_http_info(project_id, job_id, id, job_locale_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobLocalesApi.job_locale_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobLocalesApi.job_locale_update"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobLocalesApi.job_locale_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobLocalesApi.job_locale_update"
      end
      # verify the required parameter 'job_locale_update' is set
      if @api_client.config.client_side_validation && job_locale_update.nil?
        fail ArgumentError, "Missing the required parameter 'job_locale_update' when calling JobLocalesApi.job_locale_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/locales/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_locale_update) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

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
        @api_client.config.logger.debug "API called: JobLocalesApi#job_locale_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Create a job locale
    # Create a new job locale.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param job_locales_create [JobLocalesCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def job_locales_create(project_id, job_id, job_locales_create, opts = {})
      job_locales_create_with_http_info(project_id, job_id, job_locales_create, opts)
      nil
    end

    # Create a job locale
    # Create a new job locale.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param job_locales_create [JobLocalesCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def job_locales_create_with_http_info(project_id, job_id, job_locales_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobLocalesApi.job_locales_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobLocalesApi.job_locales_create"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobLocalesApi.job_locales_create"
      end
      # verify the required parameter 'job_locales_create' is set
      if @api_client.config.client_side_validation && job_locales_create.nil?
        fail ArgumentError, "Missing the required parameter 'job_locales_create' when calling JobLocalesApi.job_locales_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/locales'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_locales_create) 

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
        @api_client.config.logger.debug "API called: JobLocalesApi#job_locales_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List job locales
    # List all job locales for a given job.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param job_locales_list [JobLocalesList] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<Object>]
    def job_locales_list(project_id, job_id, job_locales_list, opts = {})
      data, _status_code, _headers = job_locales_list_with_http_info(project_id, job_id, job_locales_list, opts)
      data
    end

    # List job locales
    # List all job locales for a given job.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param job_locales_list [JobLocalesList] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<Object>)>, Integer, Hash)>] Response<(Array<Object>)> data, response status code and response headers
    def job_locales_list_with_http_info(project_id, job_id, job_locales_list, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobLocalesApi.job_locales_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobLocalesApi.job_locales_list"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobLocalesApi.job_locales_list"
      end
      # verify the required parameter 'job_locales_list' is set
      if @api_client.config.client_side_validation && job_locales_list.nil?
        fail ArgumentError, "Missing the required parameter 'job_locales_list' when calling JobLocalesApi.job_locales_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/locales'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_locales_list) 

      # return_type
      return_type = opts[:return_type] || 'Array<Object>' 

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
        @api_client.config.logger.debug "API called: JobLocalesApi#job_locales_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
