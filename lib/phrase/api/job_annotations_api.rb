require 'cgi'

module Phrase
  class JobAnnotationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a job annotation
    # Delete an annotation for a job.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] Name of the annotation to delete.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [nil]
    def job_annotation_delete(project_id, job_id, id, opts = {})
      data, _status_code, _headers = job_annotation_delete_with_http_info(project_id, job_id, id, opts)
      data
    end

    # Delete a job annotation
    # Delete an annotation for a job.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] Name of the annotation to delete.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def job_annotation_delete_with_http_info(project_id, job_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobAnnotationsApi.job_annotation_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobAnnotationsApi.job_annotation_delete"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobAnnotationsApi.job_annotation_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobAnnotationsApi.job_annotation_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/annotations/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: JobAnnotationsApi#job_annotation_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Create/Update a job annotation
    # Create or update an annotation for a job. If the annotation already exists, it will be updated; otherwise, a new annotation will be created.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] Name of the annotation to set or update.
    # @param job_annotation_update_parameters [JobAnnotationUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobAnnotation]
    def job_annotation_update(project_id, job_id, id, job_annotation_update_parameters, opts = {})
      data, _status_code, _headers = job_annotation_update_with_http_info(project_id, job_id, id, job_annotation_update_parameters, opts)
      data
    end

    # Create/Update a job annotation
    # Create or update an annotation for a job. If the annotation already exists, it will be updated; otherwise, a new annotation will be created.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param id [String] Name of the annotation to set or update.
    # @param job_annotation_update_parameters [JobAnnotationUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobAnnotation)>, Integer, Hash)>] Response<(JobAnnotation)> data, response status code and response headers
    def job_annotation_update_with_http_info(project_id, job_id, id, job_annotation_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobAnnotationsApi.job_annotation_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobAnnotationsApi.job_annotation_update"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobAnnotationsApi.job_annotation_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobAnnotationsApi.job_annotation_update"
      end
      # verify the required parameter 'job_annotation_update_parameters' is set
      if @api_client.config.client_side_validation && job_annotation_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'job_annotation_update_parameters' when calling JobAnnotationsApi.job_annotation_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/annotations/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_annotation_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'JobAnnotation' 

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
        @api_client.config.logger.debug "API called: JobAnnotationsApi#job_annotation_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List job annotations
    # Retrieve a list of annotations for a job.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [Array<JobAnnotation>]
    def job_annotations_list(project_id, job_id, opts = {})
      data, _status_code, _headers = job_annotations_list_with_http_info(project_id, job_id, opts)
      data
    end

    # List job annotations
    # Retrieve a list of annotations for a job.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [Array<(Response<(Array<JobAnnotation>)>, Integer, Hash)>] Response<(Array<JobAnnotation>)> data, response status code and response headers
    def job_annotations_list_with_http_info(project_id, job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobAnnotationsApi.job_annotations_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobAnnotationsApi.job_annotations_list"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobAnnotationsApi.job_annotations_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/annotations'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s))

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
      return_type = opts[:return_type] || 'Array<JobAnnotation>' 

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
        @api_client.config.logger.debug "API called: JobAnnotationsApi#job_annotations_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a job locale annotation
    # Delete an annotation for a job locale.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param job_locale_id [String] Job Locale ID
    # @param id [String] Name of the annotation to delete.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [nil]
    def job_locale_annotation_delete(project_id, job_id, job_locale_id, id, opts = {})
      data, _status_code, _headers = job_locale_annotation_delete_with_http_info(project_id, job_id, job_locale_id, id, opts)
      data
    end

    # Delete a job locale annotation
    # Delete an annotation for a job locale.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param job_locale_id [String] Job Locale ID
    # @param id [String] Name of the annotation to delete.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def job_locale_annotation_delete_with_http_info(project_id, job_id, job_locale_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobAnnotationsApi.job_locale_annotation_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobAnnotationsApi.job_locale_annotation_delete"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobAnnotationsApi.job_locale_annotation_delete"
      end
      # verify the required parameter 'job_locale_id' is set
      if @api_client.config.client_side_validation && job_locale_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_locale_id' when calling JobAnnotationsApi.job_locale_annotation_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobAnnotationsApi.job_locale_annotation_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/locales/{job_locale_id}/annotations/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s)).sub('{' + 'job_locale_id' + '}', CGI.escape(job_locale_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: JobAnnotationsApi#job_locale_annotation_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Create/Update a job locale annotation
    # Create or update an annotation for a job locale. If the annotation already exists, it will be updated; otherwise, a new annotation will be created.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param job_locale_id [String] Job Locale ID
    # @param id [String] Name of the annotation to set or update.
    # @param job_annotation_update_parameters [JobAnnotationUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [JobAnnotation]
    def job_locale_annotation_update(project_id, job_id, job_locale_id, id, job_annotation_update_parameters, opts = {})
      data, _status_code, _headers = job_locale_annotation_update_with_http_info(project_id, job_id, job_locale_id, id, job_annotation_update_parameters, opts)
      data
    end

    # Create/Update a job locale annotation
    # Create or update an annotation for a job locale. If the annotation already exists, it will be updated; otherwise, a new annotation will be created.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param job_locale_id [String] Job Locale ID
    # @param id [String] Name of the annotation to set or update.
    # @param job_annotation_update_parameters [JobAnnotationUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(JobAnnotation)>, Integer, Hash)>] Response<(JobAnnotation)> data, response status code and response headers
    def job_locale_annotation_update_with_http_info(project_id, job_id, job_locale_id, id, job_annotation_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobAnnotationsApi.job_locale_annotation_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobAnnotationsApi.job_locale_annotation_update"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobAnnotationsApi.job_locale_annotation_update"
      end
      # verify the required parameter 'job_locale_id' is set
      if @api_client.config.client_side_validation && job_locale_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_locale_id' when calling JobAnnotationsApi.job_locale_annotation_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobAnnotationsApi.job_locale_annotation_update"
      end
      # verify the required parameter 'job_annotation_update_parameters' is set
      if @api_client.config.client_side_validation && job_annotation_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'job_annotation_update_parameters' when calling JobAnnotationsApi.job_locale_annotation_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/locales/{job_locale_id}/annotations/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s)).sub('{' + 'job_locale_id' + '}', CGI.escape(job_locale_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(job_annotation_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'JobAnnotation' 

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
        @api_client.config.logger.debug "API called: JobAnnotationsApi#job_locale_annotation_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List job locale annotations
    # Retrieve a list of annotations for a job locale.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param job_locale_id [String] Job Locale ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [Array<JobAnnotation>]
    def job_locale_annotations_list(project_id, job_id, job_locale_id, opts = {})
      data, _status_code, _headers = job_locale_annotations_list_with_http_info(project_id, job_id, job_locale_id, opts)
      data
    end

    # List job locale annotations
    # Retrieve a list of annotations for a job locale.
    # @param project_id [String] Project ID
    # @param job_id [String] Job ID
    # @param job_locale_id [String] Job Locale ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [Array<(Response<(Array<JobAnnotation>)>, Integer, Hash)>] Response<(Array<JobAnnotation>)> data, response status code and response headers
    def job_locale_annotations_list_with_http_info(project_id, job_id, job_locale_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobAnnotationsApi.job_locale_annotations_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling JobAnnotationsApi.job_locale_annotations_list"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobAnnotationsApi.job_locale_annotations_list"
      end
      # verify the required parameter 'job_locale_id' is set
      if @api_client.config.client_side_validation && job_locale_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_locale_id' when calling JobAnnotationsApi.job_locale_annotations_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/jobs/{job_id}/locales/{job_locale_id}/annotations'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'job_id' + '}', CGI.escape(job_id.to_s)).sub('{' + 'job_locale_id' + '}', CGI.escape(job_locale_id.to_s))

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
      return_type = opts[:return_type] || 'Array<JobAnnotation>' 

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
        @api_client.config.logger.debug "API called: JobAnnotationsApi#job_locale_annotations_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
