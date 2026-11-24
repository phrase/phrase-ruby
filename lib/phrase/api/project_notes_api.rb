require 'cgi'

module Phrase
  class ProjectNotesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a project note
    # Deletes the note associated with a project. This operation is idempotent — it succeeds silently even when no note exists. The note is resolved against the main project — branch projects delete the main project's note. Requires manage permissions on the project and the `write` OAuth scope. 
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [nil]
    def project_note_destroy(project_id, opts = {})
      data, _status_code, _headers = project_note_destroy_with_http_info(project_id, opts)
      data
    end

    # Delete a project note
    # Deletes the note associated with a project. This operation is idempotent — it succeeds silently even when no note exists. The note is resolved against the main project — branch projects delete the main project&#39;s note. Requires manage permissions on the project and the &#x60;write&#x60; OAuth scope. 
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def project_note_destroy_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectNotesApi.project_note_destroy ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ProjectNotesApi.project_note_destroy"
      end
      # resource path
      local_var_path = '/projects/{project_id}/note'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
        @api_client.config.logger.debug "API called: ProjectNotesApi#project_note_destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a project note
    # Returns the Markdown-formatted note attached to a project. The note is resolved against the main project — branch projects return the main project's note. Returns 404 when no note has been created yet. Requires the `read` OAuth scope. 
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [Note]
    def project_note_show(project_id, opts = {})
      data, _status_code, _headers = project_note_show_with_http_info(project_id, opts)
      data
    end

    # Get a project note
    # Returns the Markdown-formatted note attached to a project. The note is resolved against the main project — branch projects return the main project&#39;s note. Returns 404 when no note has been created yet. Requires the &#x60;read&#x60; OAuth scope. 
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [Array<(Response<(Note)>, Integer, Hash)>] Response<(Note)> data, response status code and response headers
    def project_note_show_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectNotesApi.project_note_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ProjectNotesApi.project_note_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/note'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      return_type = opts[:return_type] || 'Note' 

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
        @api_client.config.logger.debug "API called: ProjectNotesApi#project_note_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Create or update a project note
    # Creates or updates the Markdown-formatted note for a project. If a note already exists it is updated in place; otherwise a new note is created. The note is stored on the main project — branch projects write to the main project's note. `body` is required. Requires manage permissions on the project and the `write` OAuth scope. 
    # @param project_id [String] Project ID
    # @param project_note_update_parameters [ProjectNoteUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [Note]
    def project_note_update(project_id, project_note_update_parameters, opts = {})
      data, _status_code, _headers = project_note_update_with_http_info(project_id, project_note_update_parameters, opts)
      data
    end

    # Create or update a project note
    # Creates or updates the Markdown-formatted note for a project. If a note already exists it is updated in place; otherwise a new note is created. The note is stored on the main project — branch projects write to the main project&#39;s note. &#x60;body&#x60; is required. Requires manage permissions on the project and the &#x60;write&#x60; OAuth scope. 
    # @param project_id [String] Project ID
    # @param project_note_update_parameters [ProjectNoteUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch Branch to use
    # @return [Array<(Response<(Note)>, Integer, Hash)>] Response<(Note)> data, response status code and response headers
    def project_note_update_with_http_info(project_id, project_note_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectNotesApi.project_note_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ProjectNotesApi.project_note_update"
      end
      # verify the required parameter 'project_note_update_parameters' is set
      if @api_client.config.client_side_validation && project_note_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'project_note_update_parameters' when calling ProjectNotesApi.project_note_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/note'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?

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
      post_body = opts[:body] || @api_client.object_to_http_body(project_note_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Note' 

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
        @api_client.config.logger.debug "API called: ProjectNotesApi#project_note_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
