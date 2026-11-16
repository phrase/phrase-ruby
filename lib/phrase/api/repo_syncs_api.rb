require 'cgi'

module Phrase
  class RepoSyncsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Activate a Repo Sync
    # Activate a deactivated Repo Sync. Active syncs can be used to import and export translations, and imports to Phrase are automatically triggered by pushes to the repository, if configured.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [RepoSync]
    def repo_sync_activate(account_id, id, opts = {})
      data, _status_code, _headers = repo_sync_activate_with_http_info(account_id, id, opts)
      data
    end

    # Activate a Repo Sync
    # Activate a deactivated Repo Sync. Active syncs can be used to import and export translations, and imports to Phrase are automatically triggered by pushes to the repository, if configured.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(RepoSync)>, Integer, Hash)>] Response<(RepoSync)> data, response status code and response headers
    def repo_sync_activate_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncsApi.repo_sync_activate ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncsApi.repo_sync_activate"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RepoSyncsApi.repo_sync_activate"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs/{id}/activate'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'RepoSync' 

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
        @api_client.config.logger.debug "API called: RepoSyncsApi#repo_sync_activate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Create a Repo Sync
    # Create a new Repo Sync.
    # @param account_id [String] Account ID
    # @param repo_sync_create_parameters [RepoSyncCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [RepoSync]
    def repo_sync_create(account_id, repo_sync_create_parameters, opts = {})
      data, _status_code, _headers = repo_sync_create_with_http_info(account_id, repo_sync_create_parameters, opts)
      data
    end

    # Create a Repo Sync
    # Create a new Repo Sync.
    # @param account_id [String] Account ID
    # @param repo_sync_create_parameters [RepoSyncCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(RepoSync)>, Integer, Hash)>] Response<(RepoSync)> data, response status code and response headers
    def repo_sync_create_with_http_info(account_id, repo_sync_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncsApi.repo_sync_create ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncsApi.repo_sync_create"
      end
      # verify the required parameter 'repo_sync_create_parameters' is set
      if @api_client.config.client_side_validation && repo_sync_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'repo_sync_create_parameters' when calling RepoSyncsApi.repo_sync_create"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(repo_sync_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'RepoSync' 

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
        @api_client.config.logger.debug "API called: RepoSyncsApi#repo_sync_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Deactivate a Repo Sync
    # Deactivate an active Repo Sync. Import and export can't be performed on deactivated syncs and the pushes to the repository won't trigger the import to Phrase.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [RepoSync]
    def repo_sync_deactivate(account_id, id, opts = {})
      data, _status_code, _headers = repo_sync_deactivate_with_http_info(account_id, id, opts)
      data
    end

    # Deactivate a Repo Sync
    # Deactivate an active Repo Sync. Import and export can&#39;t be performed on deactivated syncs and the pushes to the repository won&#39;t trigger the import to Phrase.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(RepoSync)>, Integer, Hash)>] Response<(RepoSync)> data, response status code and response headers
    def repo_sync_deactivate_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncsApi.repo_sync_deactivate ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncsApi.repo_sync_deactivate"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RepoSyncsApi.repo_sync_deactivate"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs/{id}/deactivate'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'RepoSync' 

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
        @api_client.config.logger.debug "API called: RepoSyncsApi#repo_sync_deactivate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Export to code repository
    # Export translations from Phrase Strings to repository provider according to the .phrase.yml file within the code repository.  *Export is done asynchronously and may take several seconds depending on the project size.*
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [RepoSyncExportParameters] :repo_sync_export_parameters 
    # @return [RepoSyncEvent]
    def repo_sync_export(account_id, id, opts = {})
      data, _status_code, _headers = repo_sync_export_with_http_info(account_id, id, opts)
      data
    end

    # Export to code repository
    # Export translations from Phrase Strings to repository provider according to the .phrase.yml file within the code repository.  *Export is done asynchronously and may take several seconds depending on the project size.*
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [RepoSyncExportParameters] :repo_sync_export_parameters 
    # @return [Array<(Response<(RepoSyncEvent)>, Integer, Hash)>] Response<(RepoSyncEvent)> data, response status code and response headers
    def repo_sync_export_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncsApi.repo_sync_export ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncsApi.repo_sync_export"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RepoSyncsApi.repo_sync_export"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs/{id}/export'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'repo_sync_export_parameters']) 

      # return_type
      return_type = opts[:return_type] || 'RepoSyncEvent' 

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
        @api_client.config.logger.debug "API called: RepoSyncsApi#repo_sync_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Import from code repository
    # Import translations from repository provider to Phrase Strings according to the .phrase.yml file within the code repository.  _Import is done asynchronously and may take several seconds depending on the project size._
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [RepoSyncImportParameters] :repo_sync_import_parameters 
    # @return [RepoSyncEvent]
    def repo_sync_import(account_id, id, opts = {})
      data, _status_code, _headers = repo_sync_import_with_http_info(account_id, id, opts)
      data
    end

    # Import from code repository
    # Import translations from repository provider to Phrase Strings according to the .phrase.yml file within the code repository.  _Import is done asynchronously and may take several seconds depending on the project size._
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [RepoSyncImportParameters] :repo_sync_import_parameters 
    # @return [Array<(Response<(RepoSyncEvent)>, Integer, Hash)>] Response<(RepoSyncEvent)> data, response status code and response headers
    def repo_sync_import_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncsApi.repo_sync_import ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncsApi.repo_sync_import"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RepoSyncsApi.repo_sync_import"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs/{id}/import'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'repo_sync_import_parameters']) 

      # return_type
      return_type = opts[:return_type] || 'RepoSyncEvent' 

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
        @api_client.config.logger.debug "API called: RepoSyncsApi#repo_sync_import\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get Repo Syncs
    # Lists all Repo Syncs from an account
    # @param account_id [String] Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @return [Array<RepoSync>]
    def repo_sync_list(account_id, opts = {})
      data, _status_code, _headers = repo_sync_list_with_http_info(account_id, opts)
      data
    end

    # Get Repo Syncs
    # Lists all Repo Syncs from an account
    # @param account_id [String] Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @return [Array<(Response<(Array<RepoSync>)>, Integer, Hash)>] Response<(Array<RepoSync>)> data, response status code and response headers
    def repo_sync_list_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncsApi.repo_sync_list ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncsApi.repo_sync_list"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:return_type] || 'Array<RepoSync>' 

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
        @api_client.config.logger.debug "API called: RepoSyncsApi#repo_sync_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single Repo Sync
    # Shows a single Repo Sync setting.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [RepoSync]
    def repo_sync_show(account_id, id, opts = {})
      data, _status_code, _headers = repo_sync_show_with_http_info(account_id, id, opts)
      data
    end

    # Get a single Repo Sync
    # Shows a single Repo Sync setting.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(RepoSync)>, Integer, Hash)>] Response<(RepoSync)> data, response status code and response headers
    def repo_sync_show_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncsApi.repo_sync_show ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncsApi.repo_sync_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RepoSyncsApi.repo_sync_show"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'RepoSync' 

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
        @api_client.config.logger.debug "API called: RepoSyncsApi#repo_sync_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a repo sync
    # Update settings for an existing Repo Sync. Sending `owner_id`, `export_triggers`, or `export_schedule` requires the caller to have `manage_github_sync?` permission on the project (returns `403` otherwise). Sending `export_triggers` or `export_schedule` when the automatic export feature is not enabled for the account returns `422`. 
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param repo_sync_update_parameters [RepoSyncUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [RepoSync]
    def repo_sync_update(account_id, id, repo_sync_update_parameters, opts = {})
      data, _status_code, _headers = repo_sync_update_with_http_info(account_id, id, repo_sync_update_parameters, opts)
      data
    end

    # Update a repo sync
    # Update settings for an existing Repo Sync. Sending &#x60;owner_id&#x60;, &#x60;export_triggers&#x60;, or &#x60;export_schedule&#x60; requires the caller to have &#x60;manage_github_sync?&#x60; permission on the project (returns &#x60;403&#x60; otherwise). Sending &#x60;export_triggers&#x60; or &#x60;export_schedule&#x60; when the automatic export feature is not enabled for the account returns &#x60;422&#x60;. 
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param repo_sync_update_parameters [RepoSyncUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(RepoSync)>, Integer, Hash)>] Response<(RepoSync)> data, response status code and response headers
    def repo_sync_update_with_http_info(account_id, id, repo_sync_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncsApi.repo_sync_update ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncsApi.repo_sync_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RepoSyncsApi.repo_sync_update"
      end
      # verify the required parameter 'repo_sync_update_parameters' is set
      if @api_client.config.client_side_validation && repo_sync_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'repo_sync_update_parameters' when calling RepoSyncsApi.repo_sync_update"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(repo_sync_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'RepoSync' 

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
        @api_client.config.logger.debug "API called: RepoSyncsApi#repo_sync_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
