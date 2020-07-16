require 'cgi'

module Phrase
  class GitLabSyncApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete single Sync Setting
    # Deletes a single GitLab Sync Setting.
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :account_id Account ID to specify the actual account the GitLab Sync should be created in. Required if the requesting user is a member of multiple accounts.
    # @return [nil]
    def gitlab_sync_delete(id, opts = {})
      data, _status_code, _headers = gitlab_sync_delete_with_http_info(id, opts)
      data
    end

    # Delete single Sync Setting
    # Deletes a single GitLab Sync Setting.
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :account_id Account ID to specify the actual account the GitLab Sync should be created in. Required if the requesting user is a member of multiple accounts.
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def gitlab_sync_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitLabSyncApi.gitlab_sync_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GitLabSyncApi.gitlab_sync_delete"
      end
      # resource path
      local_var_path = '/gitlab_syncs/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?

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
        @api_client.config.logger.debug "API called: GitLabSyncApi#gitlab_sync_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Export from Phrase to GitLab
    # Export translations from Phrase to GitLab according to the .phraseapp.yml file within the GitLab repository.
    # @param gitlab_sync_id [String] Gitlab Sync ID
    # @param gitlab_sync_export_parameters [GitlabSyncExportParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [GitlabSyncExport]
    def gitlab_sync_export(gitlab_sync_id, gitlab_sync_export_parameters, opts = {})
      data, _status_code, _headers = gitlab_sync_export_with_http_info(gitlab_sync_id, gitlab_sync_export_parameters, opts)
      data
    end

    # Export from Phrase to GitLab
    # Export translations from Phrase to GitLab according to the .phraseapp.yml file within the GitLab repository.
    # @param gitlab_sync_id [String] Gitlab Sync ID
    # @param gitlab_sync_export_parameters [GitlabSyncExportParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(GitlabSyncExport)>, Integer, Hash)>] Response<(GitlabSyncExport)> data, response status code and response headers
    def gitlab_sync_export_with_http_info(gitlab_sync_id, gitlab_sync_export_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitLabSyncApi.gitlab_sync_export ...'
      end
      # verify the required parameter 'gitlab_sync_id' is set
      if @api_client.config.client_side_validation && gitlab_sync_id.nil?
        fail ArgumentError, "Missing the required parameter 'gitlab_sync_id' when calling GitLabSyncApi.gitlab_sync_export"
      end
      # verify the required parameter 'gitlab_sync_export_parameters' is set
      if @api_client.config.client_side_validation && gitlab_sync_export_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'gitlab_sync_export_parameters' when calling GitLabSyncApi.gitlab_sync_export"
      end
      # resource path
      local_var_path = '/gitlab_syncs/{gitlab_sync_id}/export'.sub('{' + 'gitlab_sync_id' + '}', CGI.escape(gitlab_sync_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(gitlab_sync_export_parameters) 

      # return_type
      return_type = opts[:return_type] || 'GitlabSyncExport' 

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
        @api_client.config.logger.debug "API called: GitLabSyncApi#gitlab_sync_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # History of single Sync Setting
    # List history for a single Sync Setting.
    # @param gitlab_sync_id [String] Gitlab Sync ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @option opts [String] :account_id Account ID to specify the actual account the GitLab Sync should be created in. Required if the requesting user is a member of multiple accounts.
    # @return [Array<GitlabSyncHistory>]
    def gitlab_sync_history(gitlab_sync_id, opts = {})
      data, _status_code, _headers = gitlab_sync_history_with_http_info(gitlab_sync_id, opts)
      data
    end

    # History of single Sync Setting
    # List history for a single Sync Setting.
    # @param gitlab_sync_id [String] Gitlab Sync ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @option opts [String] :account_id Account ID to specify the actual account the GitLab Sync should be created in. Required if the requesting user is a member of multiple accounts.
    # @return [Array<(Response<(Array<GitlabSyncHistory>)>, Integer, Hash)>] Response<(Array<GitlabSyncHistory>)> data, response status code and response headers
    def gitlab_sync_history_with_http_info(gitlab_sync_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitLabSyncApi.gitlab_sync_history ...'
      end
      # verify the required parameter 'gitlab_sync_id' is set
      if @api_client.config.client_side_validation && gitlab_sync_id.nil?
        fail ArgumentError, "Missing the required parameter 'gitlab_sync_id' when calling GitLabSyncApi.gitlab_sync_history"
      end
      # resource path
      local_var_path = '/gitlab_syncs/{gitlab_sync_id}/history'.sub('{' + 'gitlab_sync_id' + '}', CGI.escape(gitlab_sync_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?

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
      return_type = opts[:return_type] || 'Array<GitlabSyncHistory>' 

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
        @api_client.config.logger.debug "API called: GitLabSyncApi#gitlab_sync_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Import from GitLab to Phrase
    # Import translations from GitLab to Phrase according to the .phraseapp.yml file within the GitLab repository.
    # @param gitlab_sync_id [String] Gitlab Sync ID
    # @param gitlab_sync_import_parameters [GitlabSyncImportParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<Upload>]
    def gitlab_sync_import(gitlab_sync_id, gitlab_sync_import_parameters, opts = {})
      data, _status_code, _headers = gitlab_sync_import_with_http_info(gitlab_sync_id, gitlab_sync_import_parameters, opts)
      data
    end

    # Import from GitLab to Phrase
    # Import translations from GitLab to Phrase according to the .phraseapp.yml file within the GitLab repository.
    # @param gitlab_sync_id [String] Gitlab Sync ID
    # @param gitlab_sync_import_parameters [GitlabSyncImportParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Array<Upload>)>, Integer, Hash)>] Response<(Array<Upload>)> data, response status code and response headers
    def gitlab_sync_import_with_http_info(gitlab_sync_id, gitlab_sync_import_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitLabSyncApi.gitlab_sync_import ...'
      end
      # verify the required parameter 'gitlab_sync_id' is set
      if @api_client.config.client_side_validation && gitlab_sync_id.nil?
        fail ArgumentError, "Missing the required parameter 'gitlab_sync_id' when calling GitLabSyncApi.gitlab_sync_import"
      end
      # verify the required parameter 'gitlab_sync_import_parameters' is set
      if @api_client.config.client_side_validation && gitlab_sync_import_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'gitlab_sync_import_parameters' when calling GitLabSyncApi.gitlab_sync_import"
      end
      # resource path
      local_var_path = '/gitlab_syncs/{gitlab_sync_id}/import'.sub('{' + 'gitlab_sync_id' + '}', CGI.escape(gitlab_sync_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(gitlab_sync_import_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Array<Upload>' 

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
        @api_client.config.logger.debug "API called: GitLabSyncApi#gitlab_sync_import\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List GitLab syncs
    # List all GitLab Sync Settings for which synchronisation with Phrase and GitLab is activated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :account_id Account ID to specify the actual account the GitLab Sync should be created in. Required if the requesting user is a member of multiple accounts.
    # @return [Array<GitlabSync>]
    def gitlab_sync_list(opts = {})
      data, _status_code, _headers = gitlab_sync_list_with_http_info(opts)
      data
    end

    # List GitLab syncs
    # List all GitLab Sync Settings for which synchronisation with Phrase and GitLab is activated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :account_id Account ID to specify the actual account the GitLab Sync should be created in. Required if the requesting user is a member of multiple accounts.
    # @return [Array<(Response<(Array<GitlabSync>)>, Integer, Hash)>] Response<(Array<GitlabSync>)> data, response status code and response headers
    def gitlab_sync_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitLabSyncApi.gitlab_sync_list ...'
      end
      # resource path
      local_var_path = '/gitlab_syncs'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?

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
      return_type = opts[:return_type] || 'Array<GitlabSync>' 

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
        @api_client.config.logger.debug "API called: GitLabSyncApi#gitlab_sync_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get single Sync Setting
    # Shows a single GitLab Sync Setting.
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :account_id Account ID to specify the actual account the GitLab Sync should be created in. Required if the requesting user is a member of multiple accounts.
    # @return [GitlabSync]
    def gitlab_sync_show(id, opts = {})
      data, _status_code, _headers = gitlab_sync_show_with_http_info(id, opts)
      data
    end

    # Get single Sync Setting
    # Shows a single GitLab Sync Setting.
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :account_id Account ID to specify the actual account the GitLab Sync should be created in. Required if the requesting user is a member of multiple accounts.
    # @return [Array<(Response<(GitlabSync)>, Integer, Hash)>] Response<(GitlabSync)> data, response status code and response headers
    def gitlab_sync_show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitLabSyncApi.gitlab_sync_show ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GitLabSyncApi.gitlab_sync_show"
      end
      # resource path
      local_var_path = '/gitlab_syncs/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?

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
      return_type = opts[:return_type] || 'GitlabSync' 

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
        @api_client.config.logger.debug "API called: GitLabSyncApi#gitlab_sync_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update single Sync Setting
    # Updates a single GitLab Sync Setting.
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :account_id Account ID to specify the actual account the GitLab Sync should be created in. Required if the requesting user is a member of multiple accounts.
    # @option opts [String] :phrase_project_code Code of the related Phrase Project.
    # @option opts [Integer] :gitlab_project_id ID of the related GitLab Project.
    # @option opts [String] :gitlab_branch_name Name of the GitLab Branch.
    # @return [GitlabSync]
    def gitlab_sync_update(id, opts = {})
      data, _status_code, _headers = gitlab_sync_update_with_http_info(id, opts)
      data
    end

    # Update single Sync Setting
    # Updates a single GitLab Sync Setting.
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :account_id Account ID to specify the actual account the GitLab Sync should be created in. Required if the requesting user is a member of multiple accounts.
    # @option opts [String] :phrase_project_code Code of the related Phrase Project.
    # @option opts [Integer] :gitlab_project_id ID of the related GitLab Project.
    # @option opts [String] :gitlab_branch_name Name of the GitLab Branch.
    # @return [Array<(Response<(GitlabSync)>, Integer, Hash)>] Response<(GitlabSync)> data, response status code and response headers
    def gitlab_sync_update_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitLabSyncApi.gitlab_sync_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GitLabSyncApi.gitlab_sync_update"
      end
      # resource path
      local_var_path = '/gitlab_syncs/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'phrase_project_code'] = opts[:'phrase_project_code'] if !opts[:'phrase_project_code'].nil?
      query_params[:'gitlab_project_id'] = opts[:'gitlab_project_id'] if !opts[:'gitlab_project_id'].nil?
      query_params[:'gitlab_branch_name'] = opts[:'gitlab_branch_name'] if !opts[:'gitlab_branch_name'].nil?

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
      return_type = opts[:return_type] || 'GitlabSync' 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GitLabSyncApi#gitlab_sync_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
