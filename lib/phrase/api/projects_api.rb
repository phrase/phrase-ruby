require 'cgi'

module Phrase
  class ProjectsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a project
    # Create a new project in the given account.  When `source_project_id` is supplied, the new project is created as a clone of that project. All locales, keys, and translations are copied asynchronously after the response is returned, so they may not be available immediately. Settings from the source project are inherited unless explicitly overridden in the request; in clone mode, the `shares_translation_memory` field is ignored and inherited from the source.  `shares_translation_memory` defaults to `true` when omitted on a non-clone create. 
    # @param project_create_parameters [ProjectCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [ProjectDetails]
    def project_create(project_create_parameters, opts = {})
      data, _status_code, _headers = project_create_with_http_info(project_create_parameters, opts)
      data
    end

    # Create a project
    # Create a new project in the given account.  When &#x60;source_project_id&#x60; is supplied, the new project is created as a clone of that project. All locales, keys, and translations are copied asynchronously after the response is returned, so they may not be available immediately. Settings from the source project are inherited unless explicitly overridden in the request; in clone mode, the &#x60;shares_translation_memory&#x60; field is ignored and inherited from the source.  &#x60;shares_translation_memory&#x60; defaults to &#x60;true&#x60; when omitted on a non-clone create. 
    # @param project_create_parameters [ProjectCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(ProjectDetails)>, Integer, Hash)>] Response<(ProjectDetails)> data, response status code and response headers
    def project_create_with_http_info(project_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectsApi.project_create ...'
      end
      # verify the required parameter 'project_create_parameters' is set
      if @api_client.config.client_side_validation && project_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'project_create_parameters' when calling ProjectsApi.project_create"
      end
      # resource path
      local_var_path = '/projects'

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
      post_body = opts[:body] || @api_client.object_to_http_body(project_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'ProjectDetails' 

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
        @api_client.config.logger.debug "API called: ProjectsApi#project_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a project
    # Delete an existing project. Associated repository syncs and OTA distributions are removed. A `project:delete` event is dispatched. 
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def project_delete(id, opts = {})
      data, _status_code, _headers = project_delete_with_http_info(id, opts)
      data
    end

    # Delete a project
    # Delete an existing project. Associated repository syncs and OTA distributions are removed. A &#x60;project:delete&#x60; event is dispatched. 
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def project_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectsApi.project_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectsApi.project_delete"
      end
      # resource path
      local_var_path = '/projects/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: ProjectsApi#project_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single project
    # Get details on a single project.
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [ProjectDetails]
    def project_show(id, opts = {})
      data, _status_code, _headers = project_show_with_http_info(id, opts)
      data
    end

    # Get a single project
    # Get details on a single project.
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(ProjectDetails)>, Integer, Hash)>] Response<(ProjectDetails)> data, response status code and response headers
    def project_show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectsApi.project_show ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectsApi.project_show"
      end
      # resource path
      local_var_path = '/projects/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'ProjectDetails' 

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
        @api_client.config.logger.debug "API called: ProjectsApi#project_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a project
    # Update an existing project.
    # @param id [String] ID
    # @param project_update_parameters [ProjectUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [ProjectDetails]
    def project_update(id, project_update_parameters, opts = {})
      data, _status_code, _headers = project_update_with_http_info(id, project_update_parameters, opts)
      data
    end

    # Update a project
    # Update an existing project.
    # @param id [String] ID
    # @param project_update_parameters [ProjectUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(ProjectDetails)>, Integer, Hash)>] Response<(ProjectDetails)> data, response status code and response headers
    def project_update_with_http_info(id, project_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectsApi.project_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectsApi.project_update"
      end
      # verify the required parameter 'project_update_parameters' is set
      if @api_client.config.client_side_validation && project_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'project_update_parameters' when calling ProjectsApi.project_update"
      end
      # resource path
      local_var_path = '/projects/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(project_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'ProjectDetails' 

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
        @api_client.config.logger.debug "API called: ProjectsApi#project_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List projects
    # List all projects the current user has access to.  When the `account_id` query parameter is omitted, the response includes projects across every account the user is a member of. Pass `account_id` to scope the results to a single account. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :account_id Filter by Account ID
    # @option opts [String] :sort_by Sort projects. Valid values are &#x60;name_asc&#x60;, &#x60;name_desc&#x60;, &#x60;updated_at_asc&#x60;, &#x60;updated_at_desc&#x60;, &#x60;space_asc&#x60;, and &#x60;space_desc&#x60;. The trailing direction segment is optional; if omitted or invalid, projects are sorted ascending. Any other value is ignored and the default ordering is returned.
    # @option opts [Array<String>] :filters Filter projects. The only supported value is &#x60;favorites&#x60;, which restricts the results to projects the current user has starred.
    # @option opts [String] :q Search query. The only supported syntax is &#x60;name:&lt;text&gt;&#x60; — for example &#x60;name:android&#x60; returns projects whose name matches &#x60;android&#x60; (case-insensitive substring). Any value that does not match the &#x60;name:&#x60; prefix is ignored.
    # @return [Array<Project>]
    def projects_list(opts = {})
      data, _status_code, _headers = projects_list_with_http_info(opts)
      data
    end

    # List projects
    # List all projects the current user has access to.  When the &#x60;account_id&#x60; query parameter is omitted, the response includes projects across every account the user is a member of. Pass &#x60;account_id&#x60; to scope the results to a single account. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :account_id Filter by Account ID
    # @option opts [String] :sort_by Sort projects. Valid values are &#x60;name_asc&#x60;, &#x60;name_desc&#x60;, &#x60;updated_at_asc&#x60;, &#x60;updated_at_desc&#x60;, &#x60;space_asc&#x60;, and &#x60;space_desc&#x60;. The trailing direction segment is optional; if omitted or invalid, projects are sorted ascending. Any other value is ignored and the default ordering is returned.
    # @option opts [Array<String>] :filters Filter projects. The only supported value is &#x60;favorites&#x60;, which restricts the results to projects the current user has starred.
    # @option opts [String] :q Search query. The only supported syntax is &#x60;name:&lt;text&gt;&#x60; — for example &#x60;name:android&#x60; returns projects whose name matches &#x60;android&#x60; (case-insensitive substring). Any value that does not match the &#x60;name:&#x60; prefix is ignored.
    # @return [Array<(Response<(Array<Project>)>, Integer, Hash)>] Response<(Array<Project>)> data, response status code and response headers
    def projects_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectsApi.projects_list ...'
      end
      allowable_values = ["name_asc", "name_desc", "updated_at_asc", "updated_at_desc", "space_asc", "space_desc"]
      if @api_client.config.client_side_validation && opts[:'sort_by'] && !allowable_values.include?(opts[:'sort_by'])
        fail ArgumentError, "invalid value for \"sort_by\", must be one of #{allowable_values}"
      end
      allowable_values = ["favorites"]
      if @api_client.config.client_side_validation && opts[:'filters'] && !opts[:'filters'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"filters\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/projects'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'filters'] = @api_client.build_collection_param(opts[:'filters'], :multi) if !opts[:'filters'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?

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
      return_type = opts[:return_type] || 'Array<Project>' 

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
        @api_client.config.logger.debug "API called: ProjectsApi#projects_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
