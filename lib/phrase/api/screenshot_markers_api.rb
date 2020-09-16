require 'cgi'

module Phrase
  class ScreenshotMarkersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a screenshot marker
    # Create a new screenshot marker.
    # @param project_id [String] Project ID
    # @param screenshot_id [String] Screenshot ID
    # @param screenshot_marker_create_parameters [ScreenshotMarkerCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [ScreenshotMarker]
    def screenshot_marker_create(project_id, screenshot_id, screenshot_marker_create_parameters, opts = {})
      data, _status_code, _headers = screenshot_marker_create_with_http_info(project_id, screenshot_id, screenshot_marker_create_parameters, opts)
      data
    end

    # Create a screenshot marker
    # Create a new screenshot marker.
    # @param project_id [String] Project ID
    # @param screenshot_id [String] Screenshot ID
    # @param screenshot_marker_create_parameters [ScreenshotMarkerCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(ScreenshotMarker)>, Integer, Hash)>] Response<(ScreenshotMarker)> data, response status code and response headers
    def screenshot_marker_create_with_http_info(project_id, screenshot_id, screenshot_marker_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScreenshotMarkersApi.screenshot_marker_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ScreenshotMarkersApi.screenshot_marker_create"
      end
      # verify the required parameter 'screenshot_id' is set
      if @api_client.config.client_side_validation && screenshot_id.nil?
        fail ArgumentError, "Missing the required parameter 'screenshot_id' when calling ScreenshotMarkersApi.screenshot_marker_create"
      end
      # verify the required parameter 'screenshot_marker_create_parameters' is set
      if @api_client.config.client_side_validation && screenshot_marker_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'screenshot_marker_create_parameters' when calling ScreenshotMarkersApi.screenshot_marker_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/screenshots/{screenshot_id}/markers'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'screenshot_id' + '}', CGI.escape(screenshot_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(screenshot_marker_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'ScreenshotMarker' 

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
        @api_client.config.logger.debug "API called: ScreenshotMarkersApi#screenshot_marker_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a screenshot marker
    # Delete an existing screenshot marker.
    # @param project_id [String] Project ID
    # @param screenshot_id [String] Screenshot ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def screenshot_marker_delete(project_id, screenshot_id, opts = {})
      data, _status_code, _headers = screenshot_marker_delete_with_http_info(project_id, screenshot_id, opts)
      data
    end

    # Delete a screenshot marker
    # Delete an existing screenshot marker.
    # @param project_id [String] Project ID
    # @param screenshot_id [String] Screenshot ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def screenshot_marker_delete_with_http_info(project_id, screenshot_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScreenshotMarkersApi.screenshot_marker_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ScreenshotMarkersApi.screenshot_marker_delete"
      end
      # verify the required parameter 'screenshot_id' is set
      if @api_client.config.client_side_validation && screenshot_id.nil?
        fail ArgumentError, "Missing the required parameter 'screenshot_id' when calling ScreenshotMarkersApi.screenshot_marker_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/screenshots/{screenshot_id}/markers'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'screenshot_id' + '}', CGI.escape(screenshot_id.to_s))

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
        @api_client.config.logger.debug "API called: ScreenshotMarkersApi#screenshot_marker_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single screenshot marker
    # Get details on a single screenshot marker for a given project.
    # @param project_id [String] Project ID
    # @param screenshot_id [String] Screenshot ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [ScreenshotMarker]
    def screenshot_marker_show(project_id, screenshot_id, id, opts = {})
      data, _status_code, _headers = screenshot_marker_show_with_http_info(project_id, screenshot_id, id, opts)
      data
    end

    # Get a single screenshot marker
    # Get details on a single screenshot marker for a given project.
    # @param project_id [String] Project ID
    # @param screenshot_id [String] Screenshot ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(ScreenshotMarker)>, Integer, Hash)>] Response<(ScreenshotMarker)> data, response status code and response headers
    def screenshot_marker_show_with_http_info(project_id, screenshot_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScreenshotMarkersApi.screenshot_marker_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ScreenshotMarkersApi.screenshot_marker_show"
      end
      # verify the required parameter 'screenshot_id' is set
      if @api_client.config.client_side_validation && screenshot_id.nil?
        fail ArgumentError, "Missing the required parameter 'screenshot_id' when calling ScreenshotMarkersApi.screenshot_marker_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ScreenshotMarkersApi.screenshot_marker_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/screenshots/{screenshot_id}/markers/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'screenshot_id' + '}', CGI.escape(screenshot_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'ScreenshotMarker' 

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
        @api_client.config.logger.debug "API called: ScreenshotMarkersApi#screenshot_marker_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a screenshot marker
    # Update an existing screenshot marker.
    # @param project_id [String] Project ID
    # @param screenshot_id [String] Screenshot ID
    # @param screenshot_marker_update_parameters [ScreenshotMarkerUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [ScreenshotMarker]
    def screenshot_marker_update(project_id, screenshot_id, screenshot_marker_update_parameters, opts = {})
      data, _status_code, _headers = screenshot_marker_update_with_http_info(project_id, screenshot_id, screenshot_marker_update_parameters, opts)
      data
    end

    # Update a screenshot marker
    # Update an existing screenshot marker.
    # @param project_id [String] Project ID
    # @param screenshot_id [String] Screenshot ID
    # @param screenshot_marker_update_parameters [ScreenshotMarkerUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(ScreenshotMarker)>, Integer, Hash)>] Response<(ScreenshotMarker)> data, response status code and response headers
    def screenshot_marker_update_with_http_info(project_id, screenshot_id, screenshot_marker_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScreenshotMarkersApi.screenshot_marker_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ScreenshotMarkersApi.screenshot_marker_update"
      end
      # verify the required parameter 'screenshot_id' is set
      if @api_client.config.client_side_validation && screenshot_id.nil?
        fail ArgumentError, "Missing the required parameter 'screenshot_id' when calling ScreenshotMarkersApi.screenshot_marker_update"
      end
      # verify the required parameter 'screenshot_marker_update_parameters' is set
      if @api_client.config.client_side_validation && screenshot_marker_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'screenshot_marker_update_parameters' when calling ScreenshotMarkersApi.screenshot_marker_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/screenshots/{screenshot_id}/markers'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'screenshot_id' + '}', CGI.escape(screenshot_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(screenshot_marker_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'ScreenshotMarker' 

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
        @api_client.config.logger.debug "API called: ScreenshotMarkersApi#screenshot_marker_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List screenshot markers
    # List all screenshot markers for the given project.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
    # @return [Array<ScreenshotMarker>]
    def screenshot_markers_list(project_id, id, opts = {})
      data, _status_code, _headers = screenshot_markers_list_with_http_info(project_id, id, opts)
      data
    end

    # List screenshot markers
    # List all screenshot markers for the given project.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
    # @return [Array<(Response<(Array<ScreenshotMarker>)>, Integer, Hash)>] Response<(Array<ScreenshotMarker>)> data, response status code and response headers
    def screenshot_markers_list_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScreenshotMarkersApi.screenshot_markers_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ScreenshotMarkersApi.screenshot_markers_list"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ScreenshotMarkersApi.screenshot_markers_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/screenshots/{id}/markers'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Array<ScreenshotMarker>' 

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
        @api_client.config.logger.debug "API called: ScreenshotMarkersApi#screenshot_markers_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
