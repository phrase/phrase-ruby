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
    # @param repo_sync_id [String] Repo Sync ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [RepoSync]
    def repo_sync_activate(account_id, repo_sync_id, opts = {})
      data, _status_code, _headers = repo_sync_activate_with_http_info(account_id, repo_sync_id, opts)
      data
    end

    # Activate a Repo Sync
    # Activate a deactivated Repo Sync. Active syncs can be used to import and export translations, and imports to Phrase are automatically triggered by pushes to the repository, if configured.
    # @param account_id [String] Account ID
    # @param repo_sync_id [String] Repo Sync ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(RepoSync)>, Integer, Hash)>] Response<(RepoSync)> data, response status code and response headers
    def repo_sync_activate_with_http_info(account_id, repo_sync_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncsApi.repo_sync_activate ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncsApi.repo_sync_activate"
      end
      # verify the required parameter 'repo_sync_id' is set
      if @api_client.config.client_side_validation && repo_sync_id.nil?
        fail ArgumentError, "Missing the required parameter 'repo_sync_id' when calling RepoSyncsApi.repo_sync_activate"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs/{repo_sync_id}/activate'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'repo_sync_id' + '}', CGI.escape(repo_sync_id.to_s))

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

    # Deactivate a Repo Sync
    # Deactivate an active Repo Sync. Import and export can't be performed on deactivated syncs and the pushes to the repository won't trigger the import to Phrase.
    # @param account_id [String] Account ID
    # @param repo_sync_id [String] Repo Sync ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [RepoSync]
    def repo_sync_deactivate(account_id, repo_sync_id, opts = {})
      data, _status_code, _headers = repo_sync_deactivate_with_http_info(account_id, repo_sync_id, opts)
      data
    end

    # Deactivate a Repo Sync
    # Deactivate an active Repo Sync. Import and export can&#39;t be performed on deactivated syncs and the pushes to the repository won&#39;t trigger the import to Phrase.
    # @param account_id [String] Account ID
    # @param repo_sync_id [String] Repo Sync ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(RepoSync)>, Integer, Hash)>] Response<(RepoSync)> data, response status code and response headers
    def repo_sync_deactivate_with_http_info(account_id, repo_sync_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncsApi.repo_sync_deactivate ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncsApi.repo_sync_deactivate"
      end
      # verify the required parameter 'repo_sync_id' is set
      if @api_client.config.client_side_validation && repo_sync_id.nil?
        fail ArgumentError, "Missing the required parameter 'repo_sync_id' when calling RepoSyncsApi.repo_sync_deactivate"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs/{repo_sync_id}/deactivate'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'repo_sync_id' + '}', CGI.escape(repo_sync_id.to_s))

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

    # Repository Syncs History
    # Get the history of a single Repo Sync. The history includes all imports and exports performed by the Repo Sync.
    # @param account_id [String] Account ID
    # @param repo_sync_id [String] Repo Sync ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<RepoSyncEvent>]
    def repo_sync_events(account_id, repo_sync_id, opts = {})
      data, _status_code, _headers = repo_sync_events_with_http_info(account_id, repo_sync_id, opts)
      data
    end

    # Repository Syncs History
    # Get the history of a single Repo Sync. The history includes all imports and exports performed by the Repo Sync.
    # @param account_id [String] Account ID
    # @param repo_sync_id [String] Repo Sync ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Array<RepoSyncEvent>)>, Integer, Hash)>] Response<(Array<RepoSyncEvent>)> data, response status code and response headers
    def repo_sync_events_with_http_info(account_id, repo_sync_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncsApi.repo_sync_events ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncsApi.repo_sync_events"
      end
      # verify the required parameter 'repo_sync_id' is set
      if @api_client.config.client_side_validation && repo_sync_id.nil?
        fail ArgumentError, "Missing the required parameter 'repo_sync_id' when calling RepoSyncsApi.repo_sync_events"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs/{repo_sync_id}/events'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'repo_sync_id' + '}', CGI.escape(repo_sync_id.to_s))

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
      return_type = opts[:return_type] || 'Array<RepoSyncEvent>' 

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
        @api_client.config.logger.debug "API called: RepoSyncsApi#repo_sync_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Export to code repository
    # > Beta: this feature will change in the future.  Export translations from Phrase Strings to repository provider according to the .phrase.yml file within the code repository.  *Export is done asynchronously and may take several seconds depending on the project size.*
    # @param account_id [String] Account ID
    # @param repo_sync_id [String] Repo Sync ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [RepoSyncExport]
    def repo_sync_export(account_id, repo_sync_id, opts = {})
      data, _status_code, _headers = repo_sync_export_with_http_info(account_id, repo_sync_id, opts)
      data
    end

    # Export to code repository
    # &gt; Beta: this feature will change in the future.  Export translations from Phrase Strings to repository provider according to the .phrase.yml file within the code repository.  *Export is done asynchronously and may take several seconds depending on the project size.*
    # @param account_id [String] Account ID
    # @param repo_sync_id [String] Repo Sync ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(RepoSyncExport)>, Integer, Hash)>] Response<(RepoSyncExport)> data, response status code and response headers
    def repo_sync_export_with_http_info(account_id, repo_sync_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncsApi.repo_sync_export ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncsApi.repo_sync_export"
      end
      # verify the required parameter 'repo_sync_id' is set
      if @api_client.config.client_side_validation && repo_sync_id.nil?
        fail ArgumentError, "Missing the required parameter 'repo_sync_id' when calling RepoSyncsApi.repo_sync_export"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs/{repo_sync_id}/export'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'repo_sync_id' + '}', CGI.escape(repo_sync_id.to_s))

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
      return_type = opts[:return_type] || 'RepoSyncExport' 

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
    # > Beta: this feature will change in the future.  Import translations from repository provider to Phrase Strings according to the .phrase.yml file within the code repository.  _Import is done asynchronously and may take several seconds depending on the project size._
    # @param account_id [String] Account ID
    # @param repo_sync_id [String] Repo Sync ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [RepoSyncImport]
    def repo_sync_import(account_id, repo_sync_id, opts = {})
      data, _status_code, _headers = repo_sync_import_with_http_info(account_id, repo_sync_id, opts)
      data
    end

    # Import from code repository
    # &gt; Beta: this feature will change in the future.  Import translations from repository provider to Phrase Strings according to the .phrase.yml file within the code repository.  _Import is done asynchronously and may take several seconds depending on the project size._
    # @param account_id [String] Account ID
    # @param repo_sync_id [String] Repo Sync ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(RepoSyncImport)>, Integer, Hash)>] Response<(RepoSyncImport)> data, response status code and response headers
    def repo_sync_import_with_http_info(account_id, repo_sync_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncsApi.repo_sync_import ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncsApi.repo_sync_import"
      end
      # verify the required parameter 'repo_sync_id' is set
      if @api_client.config.client_side_validation && repo_sync_id.nil?
        fail ArgumentError, "Missing the required parameter 'repo_sync_id' when calling RepoSyncsApi.repo_sync_import"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs/{repo_sync_id}/import'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'repo_sync_id' + '}', CGI.escape(repo_sync_id.to_s))

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
      return_type = opts[:return_type] || 'RepoSyncImport' 

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
    # @param repo_sync_id [String] Repo Sync ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [RepoSync]
    def repo_sync_show(account_id, repo_sync_id, opts = {})
      data, _status_code, _headers = repo_sync_show_with_http_info(account_id, repo_sync_id, opts)
      data
    end

    # Get a single Repo Sync
    # Shows a single Repo Sync setting.
    # @param account_id [String] Account ID
    # @param repo_sync_id [String] Repo Sync ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(RepoSync)>, Integer, Hash)>] Response<(RepoSync)> data, response status code and response headers
    def repo_sync_show_with_http_info(account_id, repo_sync_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncsApi.repo_sync_show ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncsApi.repo_sync_show"
      end
      # verify the required parameter 'repo_sync_id' is set
      if @api_client.config.client_side_validation && repo_sync_id.nil?
        fail ArgumentError, "Missing the required parameter 'repo_sync_id' when calling RepoSyncsApi.repo_sync_show"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs/{repo_sync_id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'repo_sync_id' + '}', CGI.escape(repo_sync_id.to_s))

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
  end
end
