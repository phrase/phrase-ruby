require 'cgi'

module Phrase
  class JobCommentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a job comment
    # Create a new comment for a job.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param job_comment_create_parameters [JobCommentCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobComment]
    def job_comment_create(project_id, job_id, job_comment_create_parameters, opts = {})
      data, _status_code, _headers = job_comment_create_with_http_info(project_id, job_id, job_comment_create_parameters, opts)
      data
    end

    # Create a job comment
    # Create a new comment for a job.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param job_comment_create_parameters [JobCommentCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobComment)>, Integer, Hash)>] Response<(JobComment)> data, response status code and response headers
    def job_comment_create_with_http_info(project_id, job_id, job_comment_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobCommentsApi.job_comment_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobCommentsApi.job_comment_create"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobCommentsApi.job_comment_create"
      end
      # verify the required parameter 'job_comment_create_parameters' is set
      if @api_client.config.client_side_validation && job_comment_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'job_comment_create_parameters' when calling JobCommentsApi.job_comment_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/comments'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_comment_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'JobComment' 

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
        @api_client.config.logger.debug "API called: JobCommentsApi#job_comment_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a job comment
    # Delete an existing job comment.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [nil]
    def job_comment_delete(project_id, job_id, id, opts = {})
      data, _status_code, _headers = job_comment_delete_with_http_info(project_id, job_id, id, opts)
      data
    end

    # Delete a job comment
    # Delete an existing job comment.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def job_comment_delete_with_http_info(project_id, job_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobCommentsApi.job_comment_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobCommentsApi.job_comment_delete"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobCommentsApi.job_comment_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobCommentsApi.job_comment_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/comments/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: JobCommentsApi#job_comment_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single job comment
    # Get details on a single job comment.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [JobComment]
    def job_comment_show(project_id, job_id, id, opts = {})
      data, _status_code, _headers = job_comment_show_with_http_info(project_id, job_id, id, opts)
      data
    end

    # Get a single job comment
    # Get details on a single job comment.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(JobComment)>, Integer, Hash)>] Response<(JobComment)> data, response status code and response headers
    def job_comment_show_with_http_info(project_id, job_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobCommentsApi.job_comment_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobCommentsApi.job_comment_show"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobCommentsApi.job_comment_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobCommentsApi.job_comment_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/comments/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'JobComment' 

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
        @api_client.config.logger.debug "API called: JobCommentsApi#job_comment_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a job comment
    # Update an existing job comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param id [String] ID
    # @param job_comment_update_parameters [JobCommentUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobComment]
    def job_comment_update(project_id, key_id, id, job_comment_update_parameters, opts = {})
      data, _status_code, _headers = job_comment_update_with_http_info(project_id, key_id, id, job_comment_update_parameters, opts)
      data
    end

    # Update a job comment
    # Update an existing job comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param id [String] ID
    # @param job_comment_update_parameters [JobCommentUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobComment)>, Integer, Hash)>] Response<(JobComment)> data, response status code and response headers
    def job_comment_update_with_http_info(project_id, key_id, id, job_comment_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobCommentsApi.job_comment_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobCommentsApi.job_comment_update"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling JobCommentsApi.job_comment_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobCommentsApi.job_comment_update"
      end
      # verify the required parameter 'job_comment_update_parameters' is set
      if @api_client.config.client_side_validation && job_comment_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'job_comment_update_parameters' when calling JobCommentsApi.job_comment_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/comments/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_comment_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'JobComment' 

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
        @api_client.config.logger.debug "API called: JobCommentsApi#job_comment_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List job comments
    # List all comments for a job.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<JobComment>]
    def job_comments_list(project_id, job_id, opts = {})
      data, _status_code, _headers = job_comments_list_with_http_info(project_id, job_id, opts)
      data
    end

    # List job comments
    # List all comments for a job.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(Array<JobComment>)>, Integer, Hash)>] Response<(Array<JobComment>)> data, response status code and response headers
    def job_comments_list_with_http_info(project_id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobCommentsApi.job_comments_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobCommentsApi.job_comments_list"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobCommentsApi.job_comments_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/comments'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s))

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
      return_type = opts[:return_type] || 'Array<JobComment>' 

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
        @api_client.config.logger.debug "API called: JobCommentsApi#job_comments_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
