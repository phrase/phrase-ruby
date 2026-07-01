require 'cgi'

module Phrase
  class ScreenshotsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a screenshot
    # Creates a screenshot in a project to provide visual context for in-context translation. Attach translation keys to regions of the uploaded image so translators can see where each string appears in your UI.  This endpoint accepts a multipart/form-data request with a binary file upload, unlike most Phrase API endpoints that use JSON. Use a multipart form client or the -F flag in curl rather than a JSON body.  The screenshot name must be unique within the project (case-insensitive). When name is omitted, it is derived from the uploaded filename. The account must have the Screenshots feature enabled; requests to projects on accounts without it return 403. Creating a screenshot requires a token with the write scope and manage access to the project. 
    # @param project_id [String] Project ID
    # @param filename [File] Image file to upload. Accepted formats are JPEG (jpg/jpeg), GIF, and PNG. Maximum file size is 10 MB. Submitting an unsupported format or a file exceeding the size limit returns 422.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :name Display name for the screenshot. Must be unique within the project (case-insensitive). When omitted, the name is derived from the uploaded filename.
    # @option opts [String] :description Optional free-text description of the screenshot.
    # @return [Screenshot]
    def screenshot_create(project_id, filename, opts = {})
      data, _status_code, _headers = screenshot_create_with_http_info(project_id, filename, opts)
      data
    end

    # Create a screenshot
    # Creates a screenshot in a project to provide visual context for in-context translation. Attach translation keys to regions of the uploaded image so translators can see where each string appears in your UI.  This endpoint accepts a multipart/form-data request with a binary file upload, unlike most Phrase API endpoints that use JSON. Use a multipart form client or the -F flag in curl rather than a JSON body.  The screenshot name must be unique within the project (case-insensitive). When name is omitted, it is derived from the uploaded filename. The account must have the Screenshots feature enabled; requests to projects on accounts without it return 403. Creating a screenshot requires a token with the write scope and manage access to the project. 
    # @param project_id [String] Project ID
    # @param filename [File] Image file to upload. Accepted formats are JPEG (jpg/jpeg), GIF, and PNG. Maximum file size is 10 MB. Submitting an unsupported format or a file exceeding the size limit returns 422.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :name Display name for the screenshot. Must be unique within the project (case-insensitive). When omitted, the name is derived from the uploaded filename.
    # @option opts [String] :description Optional free-text description of the screenshot.
    # @return [Array<(Response<(Screenshot)>, Integer, Hash)>] Response<(Screenshot)> data, response status code and response headers
    def screenshot_create_with_http_info(project_id, filename, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScreenshotsApi.screenshot_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ScreenshotsApi.screenshot_create"
      end
      # verify the required parameter 'filename' is set
      if @api_client.config.client_side_validation && filename.nil?
        fail ArgumentError, "Missing the required parameter 'filename' when calling ScreenshotsApi.screenshot_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/screenshots'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'X-PhraseApp-OTP'] = opts[:'x_phrase_app_otp'] if !opts[:'x_phrase_app_otp'].nil?

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['filename'] = filename
      form_params['branch'] = opts[:'branch'] if !opts[:'branch'].nil?
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['description'] = opts[:'description'] if !opts[:'description'].nil?

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Screenshot' 

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
        @api_client.config.logger.debug "API called: ScreenshotsApi#screenshot_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a screenshot
    # Permanently removes a screenshot and all its associated markers from the project. Use this when you need to fully remove a screenshot that is no longer relevant — for example, after a UI redesign renders the captured screen obsolete. This is a hard delete: the screenshot record and every key-to-region marker linked to it are destroyed together and cannot be recovered. 
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [nil]
    def screenshot_delete(project_id, id, opts = {})
      data, _status_code, _headers = screenshot_delete_with_http_info(project_id, id, opts)
      data
    end

    # Delete a screenshot
    # Permanently removes a screenshot and all its associated markers from the project. Use this when you need to fully remove a screenshot that is no longer relevant — for example, after a UI redesign renders the captured screen obsolete. This is a hard delete: the screenshot record and every key-to-region marker linked to it are destroyed together and cannot be recovered. 
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def screenshot_delete_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScreenshotsApi.screenshot_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ScreenshotsApi.screenshot_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ScreenshotsApi.screenshot_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/screenshots/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: ScreenshotsApi#screenshot_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single screenshot
    # Returns a single screenshot belonging to the specified project. Use this to retrieve the screenshot's name, description, hosted image URL, and marker count after uploading, or before creating, updating, or inspecting its markers. The response is a synchronous, idempotent read — repeated calls return the same record without side effects.  The Attachable Screenshots feature must be enabled on the account. 
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Screenshot]
    def screenshot_show(project_id, id, opts = {})
      data, _status_code, _headers = screenshot_show_with_http_info(project_id, id, opts)
      data
    end

    # Get a single screenshot
    # Returns a single screenshot belonging to the specified project. Use this to retrieve the screenshot&#39;s name, description, hosted image URL, and marker count after uploading, or before creating, updating, or inspecting its markers. The response is a synchronous, idempotent read — repeated calls return the same record without side effects.  The Attachable Screenshots feature must be enabled on the account. 
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(Screenshot)>, Integer, Hash)>] Response<(Screenshot)> data, response status code and response headers
    def screenshot_show_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScreenshotsApi.screenshot_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ScreenshotsApi.screenshot_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ScreenshotsApi.screenshot_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/screenshots/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Screenshot' 

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
        @api_client.config.logger.debug "API called: ScreenshotsApi#screenshot_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a screenshot
    # Update an existing screenshot.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param screenshot_update_parameters [ScreenshotUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Screenshot]
    def screenshot_update(project_id, id, screenshot_update_parameters, opts = {})
      data, _status_code, _headers = screenshot_update_with_http_info(project_id, id, screenshot_update_parameters, opts)
      data
    end

    # Update a screenshot
    # Update an existing screenshot.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param screenshot_update_parameters [ScreenshotUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Screenshot)>, Integer, Hash)>] Response<(Screenshot)> data, response status code and response headers
    def screenshot_update_with_http_info(project_id, id, screenshot_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScreenshotsApi.screenshot_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ScreenshotsApi.screenshot_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ScreenshotsApi.screenshot_update"
      end
      # verify the required parameter 'screenshot_update_parameters' is set
      if @api_client.config.client_side_validation && screenshot_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'screenshot_update_parameters' when calling ScreenshotsApi.screenshot_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/screenshots/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(screenshot_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Screenshot' 

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
        @api_client.config.logger.debug "API called: ScreenshotsApi#screenshot_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List screenshots
    # List all screenshots for the given project.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :key_id filter by key
    # @return [Array<Screenshot>]
    def screenshots_list(project_id, opts = {})
      data, _status_code, _headers = screenshots_list_with_http_info(project_id, opts)
      data
    end

    # List screenshots
    # List all screenshots for the given project.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :key_id filter by key
    # @return [Array<(Response<(Array<Screenshot>)>, Integer, Hash)>] Response<(Array<Screenshot>)> data, response status code and response headers
    def screenshots_list_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScreenshotsApi.screenshots_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ScreenshotsApi.screenshots_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/screenshots'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?
      query_params[:'key_id'] = opts[:'key_id'] if !opts[:'key_id'].nil?

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
      return_type = opts[:return_type] || 'Array<Screenshot>' 

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
        @api_client.config.logger.debug "API called: ScreenshotsApi#screenshots_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
