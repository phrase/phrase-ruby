require 'cgi'

module Phrase
  class JobsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Complete a job
    # Mark a job as completed.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_complete_parameters [JobCompleteParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobDetails]
    def job_complete(project_id, id, job_complete_parameters, opts = {})
      data, _status_code, _headers = job_complete_with_http_info(project_id, id, job_complete_parameters, opts)
      data
    end

    # Complete a job
    # Mark a job as completed.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_complete_parameters [JobCompleteParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobDetails)>, Integer, Hash)>] Response<(JobDetails)> data, response status code and response headers
    def job_complete_with_http_info(project_id, id, job_complete_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.job_complete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobsApi.job_complete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobsApi.job_complete"
      end
      # verify the required parameter 'job_complete_parameters' is set
      if @api_client.config.client_side_validation && job_complete_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'job_complete_parameters' when calling JobsApi.job_complete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{id}/complete'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_complete_parameters) 

      # return_type
      return_type = opts[:return_type] || 'JobDetails' 

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
        @api_client.config.logger.debug "API called: JobsApi#job_complete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Create a job
    # Create a new job.
    # @param project_id [String] Project ID
    # @param job_create_parameters [JobCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def job_create(project_id, job_create_parameters, opts = {})
      job_create_with_http_info(project_id, job_create_parameters, opts)
      nil
    end

    # Create a job
    # Create a new job.
    # @param project_id [String] Project ID
    # @param job_create_parameters [JobCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def job_create_with_http_info(project_id, job_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.job_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobsApi.job_create"
      end
      # verify the required parameter 'job_create_parameters' is set
      if @api_client.config.client_side_validation && job_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'job_create_parameters' when calling JobsApi.job_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_create_parameters) 

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
        @api_client.config.logger.debug "API called: JobsApi#job_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a job
    # Delete an existing job.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_delete_parameters [JobDeleteParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def job_delete(project_id, id, job_delete_parameters, opts = {})
      job_delete_with_http_info(project_id, id, job_delete_parameters, opts)
      nil
    end

    # Delete a job
    # Delete an existing job.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_delete_parameters [JobDeleteParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def job_delete_with_http_info(project_id, id, job_delete_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.job_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobsApi.job_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobsApi.job_delete"
      end
      # verify the required parameter 'job_delete_parameters' is set
      if @api_client.config.client_side_validation && job_delete_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'job_delete_parameters' when calling JobsApi.job_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_delete_parameters) 

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
        @api_client.config.logger.debug "API called: JobsApi#job_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Add keys to job
    # Add multiple keys to a existing job.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_keys_create_parameters [JobKeysCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobDetails]
    def job_keys_create(project_id, id, job_keys_create_parameters, opts = {})
      data, _status_code, _headers = job_keys_create_with_http_info(project_id, id, job_keys_create_parameters, opts)
      data
    end

    # Add keys to job
    # Add multiple keys to a existing job.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_keys_create_parameters [JobKeysCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobDetails)>, Integer, Hash)>] Response<(JobDetails)> data, response status code and response headers
    def job_keys_create_with_http_info(project_id, id, job_keys_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.job_keys_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobsApi.job_keys_create"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobsApi.job_keys_create"
      end
      # verify the required parameter 'job_keys_create_parameters' is set
      if @api_client.config.client_side_validation && job_keys_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'job_keys_create_parameters' when calling JobsApi.job_keys_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{id}/keys'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_keys_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'JobDetails' 

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
        @api_client.config.logger.debug "API called: JobsApi#job_keys_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Remove keys from job
    # Remove multiple keys from existing job.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_keys_delete_parameters [JobKeysDeleteParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def job_keys_delete(project_id, id, job_keys_delete_parameters, opts = {})
      job_keys_delete_with_http_info(project_id, id, job_keys_delete_parameters, opts)
      nil
    end

    # Remove keys from job
    # Remove multiple keys from existing job.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_keys_delete_parameters [JobKeysDeleteParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def job_keys_delete_with_http_info(project_id, id, job_keys_delete_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.job_keys_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobsApi.job_keys_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobsApi.job_keys_delete"
      end
      # verify the required parameter 'job_keys_delete_parameters' is set
      if @api_client.config.client_side_validation && job_keys_delete_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'job_keys_delete_parameters' when calling JobsApi.job_keys_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{id}/keys'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_keys_delete_parameters) 

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
        @api_client.config.logger.debug "API called: JobsApi#job_keys_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Reopen a job
    # Mark a job as uncompleted.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_reopen_parameters [JobReopenParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobDetails]
    def job_reopen(project_id, id, job_reopen_parameters, opts = {})
      data, _status_code, _headers = job_reopen_with_http_info(project_id, id, job_reopen_parameters, opts)
      data
    end

    # Reopen a job
    # Mark a job as uncompleted.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_reopen_parameters [JobReopenParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobDetails)>, Integer, Hash)>] Response<(JobDetails)> data, response status code and response headers
    def job_reopen_with_http_info(project_id, id, job_reopen_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.job_reopen ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobsApi.job_reopen"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobsApi.job_reopen"
      end
      # verify the required parameter 'job_reopen_parameters' is set
      if @api_client.config.client_side_validation && job_reopen_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'job_reopen_parameters' when calling JobsApi.job_reopen"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{id}/reopen'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_reopen_parameters) 

      # return_type
      return_type = opts[:return_type] || 'JobDetails' 

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
        @api_client.config.logger.debug "API called: JobsApi#job_reopen\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single job
    # Get details on a single job for a given project.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_show_parameters [JobShowParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobDetails]
    def job_show(project_id, id, job_show_parameters, opts = {})
      data, _status_code, _headers = job_show_with_http_info(project_id, id, job_show_parameters, opts)
      data
    end

    # Get a single job
    # Get details on a single job for a given project.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_show_parameters [JobShowParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobDetails)>, Integer, Hash)>] Response<(JobDetails)> data, response status code and response headers
    def job_show_with_http_info(project_id, id, job_show_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.job_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobsApi.job_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobsApi.job_show"
      end
      # verify the required parameter 'job_show_parameters' is set
      if @api_client.config.client_side_validation && job_show_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'job_show_parameters' when calling JobsApi.job_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_show_parameters) 

      # return_type
      return_type = opts[:return_type] || 'JobDetails' 

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
        @api_client.config.logger.debug "API called: JobsApi#job_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Start a job
    # Starts an existing job in state draft.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_start_parameters [JobStartParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobDetails]
    def job_start(project_id, id, job_start_parameters, opts = {})
      data, _status_code, _headers = job_start_with_http_info(project_id, id, job_start_parameters, opts)
      data
    end

    # Start a job
    # Starts an existing job in state draft.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_start_parameters [JobStartParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobDetails)>, Integer, Hash)>] Response<(JobDetails)> data, response status code and response headers
    def job_start_with_http_info(project_id, id, job_start_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.job_start ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobsApi.job_start"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobsApi.job_start"
      end
      # verify the required parameter 'job_start_parameters' is set
      if @api_client.config.client_side_validation && job_start_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'job_start_parameters' when calling JobsApi.job_start"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{id}/start'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_start_parameters) 

      # return_type
      return_type = opts[:return_type] || 'JobDetails' 

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
        @api_client.config.logger.debug "API called: JobsApi#job_start\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a job
    # Update an existing job.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_update_parameters [JobUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobDetails]
    def job_update(project_id, id, job_update_parameters, opts = {})
      data, _status_code, _headers = job_update_with_http_info(project_id, id, job_update_parameters, opts)
      data
    end

    # Update a job
    # Update an existing job.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param job_update_parameters [JobUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobDetails)>, Integer, Hash)>] Response<(JobDetails)> data, response status code and response headers
    def job_update_with_http_info(project_id, id, job_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.job_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobsApi.job_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobsApi.job_update"
      end
      # verify the required parameter 'job_update_parameters' is set
      if @api_client.config.client_side_validation && job_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'job_update_parameters' when calling JobsApi.job_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'JobDetails' 

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
        @api_client.config.logger.debug "API called: JobsApi#job_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List jobs
    # List all jobs for the given project.
    # @param project_id [String] Project ID
    # @param jobs_list_parameters [JobsListParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<Job>]
    def jobs_list(project_id, jobs_list_parameters, opts = {})
      data, _status_code, _headers = jobs_list_with_http_info(project_id, jobs_list_parameters, opts)
      data
    end

    # List jobs
    # List all jobs for the given project.
    # @param project_id [String] Project ID
    # @param jobs_list_parameters [JobsListParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<Job>)>, Integer, Hash)>] Response<(Array<Job>)> data, response status code and response headers
    def jobs_list_with_http_info(project_id, jobs_list_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobsApi.jobs_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobsApi.jobs_list"
      end
      # verify the required parameter 'jobs_list_parameters' is set
      if @api_client.config.client_side_validation && jobs_list_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'jobs_list_parameters' when calling JobsApi.jobs_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(jobs_list_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Array<Job>' 

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
        @api_client.config.logger.debug "API called: JobsApi#jobs_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
