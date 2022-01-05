require 'cgi'

module Phrase
  class BranchesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Compare branches
    # Compare branch with main branch.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def branch_compare(project_id, name, opts = {})
      data, _status_code, _headers = branch_compare_with_http_info(project_id, name, opts)
      data
    end

    # Compare branches
    # Compare branch with main branch.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def branch_compare_with_http_info(project_id, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BranchesApi.branch_compare ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling BranchesApi.branch_compare"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling BranchesApi.branch_compare"
      end
      # resource path
      local_var_path = '/projects/{project_id}/branches/{name}/compare'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      auth_names = opts[:auth_names] || ['Basic', 'Token', 'bearerAuth']

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
        @api_client.config.logger.debug "API called: BranchesApi#branch_compare\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Create a branch
    # Create a new branch.
    # @param project_id [String] Project ID
    # @param branch_create_parameters [BranchCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Branch]
    def branch_create(project_id, branch_create_parameters, opts = {})
      data, _status_code, _headers = branch_create_with_http_info(project_id, branch_create_parameters, opts)
      data
    end

    # Create a branch
    # Create a new branch.
    # @param project_id [String] Project ID
    # @param branch_create_parameters [BranchCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Branch)>, Integer, Hash)>] Response<(Branch)> data, response status code and response headers
    def branch_create_with_http_info(project_id, branch_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BranchesApi.branch_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling BranchesApi.branch_create"
      end
      # verify the required parameter 'branch_create_parameters' is set
      if @api_client.config.client_side_validation && branch_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'branch_create_parameters' when calling BranchesApi.branch_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/branches'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(branch_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Branch' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token', 'bearerAuth']

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
        @api_client.config.logger.debug "API called: BranchesApi#branch_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a branch
    # Delete an existing branch.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def branch_delete(project_id, name, opts = {})
      data, _status_code, _headers = branch_delete_with_http_info(project_id, name, opts)
      data
    end

    # Delete a branch
    # Delete an existing branch.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def branch_delete_with_http_info(project_id, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BranchesApi.branch_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling BranchesApi.branch_delete"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling BranchesApi.branch_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/branches/{name}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      auth_names = opts[:auth_names] || ['Basic', 'Token', 'bearerAuth']

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
        @api_client.config.logger.debug "API called: BranchesApi#branch_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Merge a branch
    # Merge an existing branch.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param branch_merge_parameters [BranchMergeParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def branch_merge(project_id, name, branch_merge_parameters, opts = {})
      data, _status_code, _headers = branch_merge_with_http_info(project_id, name, branch_merge_parameters, opts)
      data
    end

    # Merge a branch
    # Merge an existing branch.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param branch_merge_parameters [BranchMergeParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def branch_merge_with_http_info(project_id, name, branch_merge_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BranchesApi.branch_merge ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling BranchesApi.branch_merge"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling BranchesApi.branch_merge"
      end
      # verify the required parameter 'branch_merge_parameters' is set
      if @api_client.config.client_side_validation && branch_merge_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'branch_merge_parameters' when calling BranchesApi.branch_merge"
      end
      # resource path
      local_var_path = '/projects/{project_id}/branches/{name}/merge'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(branch_merge_parameters) 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token', 'bearerAuth']

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
        @api_client.config.logger.debug "API called: BranchesApi#branch_merge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single branch
    # Get details on a single branch for a given project.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Branch]
    def branch_show(project_id, name, opts = {})
      data, _status_code, _headers = branch_show_with_http_info(project_id, name, opts)
      data
    end

    # Get a single branch
    # Get details on a single branch for a given project.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Branch)>, Integer, Hash)>] Response<(Branch)> data, response status code and response headers
    def branch_show_with_http_info(project_id, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BranchesApi.branch_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling BranchesApi.branch_show"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling BranchesApi.branch_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/branches/{name}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      return_type = opts[:return_type] || 'Branch' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token', 'bearerAuth']

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
        @api_client.config.logger.debug "API called: BranchesApi#branch_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a branch
    # Update an existing branch.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param branch_update_parameters [BranchUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Branch]
    def branch_update(project_id, name, branch_update_parameters, opts = {})
      data, _status_code, _headers = branch_update_with_http_info(project_id, name, branch_update_parameters, opts)
      data
    end

    # Update a branch
    # Update an existing branch.
    # @param project_id [String] Project ID
    # @param name [String] name
    # @param branch_update_parameters [BranchUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Branch)>, Integer, Hash)>] Response<(Branch)> data, response status code and response headers
    def branch_update_with_http_info(project_id, name, branch_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BranchesApi.branch_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling BranchesApi.branch_update"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling BranchesApi.branch_update"
      end
      # verify the required parameter 'branch_update_parameters' is set
      if @api_client.config.client_side_validation && branch_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'branch_update_parameters' when calling BranchesApi.branch_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/branches/{name}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'name' + '}', CGI.escape(name.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(branch_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Branch' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token', 'bearerAuth']

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
        @api_client.config.logger.debug "API called: BranchesApi#branch_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List branches
    # List all branches the of the current project.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
    # @return [Array<Branch>]
    def branches_list(project_id, opts = {})
      data, _status_code, _headers = branches_list_with_http_info(project_id, opts)
      data
    end

    # List branches
    # List all branches the of the current project.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
    # @return [Array<(Response<(Array<Branch>)>, Integer, Hash)>] Response<(Array<Branch>)> data, response status code and response headers
    def branches_list_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BranchesApi.branches_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling BranchesApi.branches_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/branches'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      return_type = opts[:return_type] || 'Array<Branch>' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic', 'Token', 'bearerAuth']

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
        @api_client.config.logger.debug "API called: BranchesApi#branches_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
