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
    # @param gitlab_sync_delete [GitlabSyncDelete] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def gitlab_sync_delete(id, gitlab_sync_delete, opts = {})
      gitlab_sync_delete_with_http_info(id, gitlab_sync_delete, opts)
      nil
    end

    # Delete single Sync Setting
    # Deletes a single GitLab Sync Setting.
    # @param id [String] ID
    # @param gitlab_sync_delete [GitlabSyncDelete] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def gitlab_sync_delete_with_http_info(id, gitlab_sync_delete, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitLabSyncApi.gitlab_sync_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GitLabSyncApi.gitlab_sync_delete"
      end
      # verify the required parameter 'gitlab_sync_delete' is set
      if @api_client.config.client_side_validation && gitlab_sync_delete.nil?
        fail ArgumentError, "Missing the required parameter 'gitlab_sync_delete' when calling GitLabSyncApi.gitlab_sync_delete"
      end
      # resource path
      local_var_path = '/gitlab_syncs/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(gitlab_sync_delete) 

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
    # @param gitlab_sync_export [GitlabSyncExport] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [GitlabSyncExport1]
    def gitlab_sync_export(gitlab_sync_id, gitlab_sync_export, opts = {})
      data, _status_code, _headers = gitlab_sync_export_with_http_info(gitlab_sync_id, gitlab_sync_export, opts)
      data
    end

    # Export from Phrase to GitLab
    # Export translations from Phrase to GitLab according to the .phraseapp.yml file within the GitLab repository.
    # @param gitlab_sync_id [String] Gitlab Sync ID
    # @param gitlab_sync_export [GitlabSyncExport] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(GitlabSyncExport1)>, Integer, Hash)>] Response<(GitlabSyncExport1)> data, response status code and response headers
    def gitlab_sync_export_with_http_info(gitlab_sync_id, gitlab_sync_export, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitLabSyncApi.gitlab_sync_export ...'
      end
      # verify the required parameter 'gitlab_sync_id' is set
      if @api_client.config.client_side_validation && gitlab_sync_id.nil?
        fail ArgumentError, "Missing the required parameter 'gitlab_sync_id' when calling GitLabSyncApi.gitlab_sync_export"
      end
      # verify the required parameter 'gitlab_sync_export' is set
      if @api_client.config.client_side_validation && gitlab_sync_export.nil?
        fail ArgumentError, "Missing the required parameter 'gitlab_sync_export' when calling GitLabSyncApi.gitlab_sync_export"
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
      post_body = opts[:body] || @api_client.object_to_http_body(gitlab_sync_export) 

      # return_type
      return_type = opts[:return_type] || 'GitlabSyncExport1' 

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
    # @param gitlab_sync_history [GitlabSyncHistory] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<GitlabSyncHistory1>]
    def gitlab_sync_history(gitlab_sync_id, gitlab_sync_history, opts = {})
      data, _status_code, _headers = gitlab_sync_history_with_http_info(gitlab_sync_id, gitlab_sync_history, opts)
      data
    end

    # History of single Sync Setting
    # List history for a single Sync Setting.
    # @param gitlab_sync_id [String] Gitlab Sync ID
    # @param gitlab_sync_history [GitlabSyncHistory] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<GitlabSyncHistory1>)>, Integer, Hash)>] Response<(Array<GitlabSyncHistory1>)> data, response status code and response headers
    def gitlab_sync_history_with_http_info(gitlab_sync_id, gitlab_sync_history, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitLabSyncApi.gitlab_sync_history ...'
      end
      # verify the required parameter 'gitlab_sync_id' is set
      if @api_client.config.client_side_validation && gitlab_sync_id.nil?
        fail ArgumentError, "Missing the required parameter 'gitlab_sync_id' when calling GitLabSyncApi.gitlab_sync_history"
      end
      # verify the required parameter 'gitlab_sync_history' is set
      if @api_client.config.client_side_validation && gitlab_sync_history.nil?
        fail ArgumentError, "Missing the required parameter 'gitlab_sync_history' when calling GitLabSyncApi.gitlab_sync_history"
      end
      # resource path
      local_var_path = '/gitlab_syncs/{gitlab_sync_id}/history'.sub('{' + 'gitlab_sync_id' + '}', CGI.escape(gitlab_sync_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

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
      post_body = opts[:body] || @api_client.object_to_http_body(gitlab_sync_history) 

      # return_type
      return_type = opts[:return_type] || 'Array<GitlabSyncHistory1>' 

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
    # @param gitlab_sync_import [GitlabSyncImport] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<Object>]
    def gitlab_sync_import(gitlab_sync_id, gitlab_sync_import, opts = {})
      data, _status_code, _headers = gitlab_sync_import_with_http_info(gitlab_sync_id, gitlab_sync_import, opts)
      data
    end

    # Import from GitLab to Phrase
    # Import translations from GitLab to Phrase according to the .phraseapp.yml file within the GitLab repository.
    # @param gitlab_sync_id [String] Gitlab Sync ID
    # @param gitlab_sync_import [GitlabSyncImport] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Array<Object>)>, Integer, Hash)>] Response<(Array<Object>)> data, response status code and response headers
    def gitlab_sync_import_with_http_info(gitlab_sync_id, gitlab_sync_import, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitLabSyncApi.gitlab_sync_import ...'
      end
      # verify the required parameter 'gitlab_sync_id' is set
      if @api_client.config.client_side_validation && gitlab_sync_id.nil?
        fail ArgumentError, "Missing the required parameter 'gitlab_sync_id' when calling GitLabSyncApi.gitlab_sync_import"
      end
      # verify the required parameter 'gitlab_sync_import' is set
      if @api_client.config.client_side_validation && gitlab_sync_import.nil?
        fail ArgumentError, "Missing the required parameter 'gitlab_sync_import' when calling GitLabSyncApi.gitlab_sync_import"
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
      post_body = opts[:body] || @api_client.object_to_http_body(gitlab_sync_import) 

      # return_type
      return_type = opts[:return_type] || 'Array<Object>' 

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
    # @param gitlab_sync_list [GitlabSyncList] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<Object>]
    def gitlab_sync_list(gitlab_sync_list, opts = {})
      data, _status_code, _headers = gitlab_sync_list_with_http_info(gitlab_sync_list, opts)
      data
    end

    # List GitLab syncs
    # List all GitLab Sync Settings for which synchronisation with Phrase and GitLab is activated.
    # @param gitlab_sync_list [GitlabSyncList] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Array<Object>)>, Integer, Hash)>] Response<(Array<Object>)> data, response status code and response headers
    def gitlab_sync_list_with_http_info(gitlab_sync_list, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitLabSyncApi.gitlab_sync_list ...'
      end
      # verify the required parameter 'gitlab_sync_list' is set
      if @api_client.config.client_side_validation && gitlab_sync_list.nil?
        fail ArgumentError, "Missing the required parameter 'gitlab_sync_list' when calling GitLabSyncApi.gitlab_sync_list"
      end
      # resource path
      local_var_path = '/gitlab_syncs'

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
      post_body = opts[:body] || @api_client.object_to_http_body(gitlab_sync_list) 

      # return_type
      return_type = opts[:return_type] || 'Array<Object>' 

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
    # @param gitlab_sync_show [GitlabSyncShow] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [GitlabSync]
    def gitlab_sync_show(id, gitlab_sync_show, opts = {})
      data, _status_code, _headers = gitlab_sync_show_with_http_info(id, gitlab_sync_show, opts)
      data
    end

    # Get single Sync Setting
    # Shows a single GitLab Sync Setting.
    # @param id [String] ID
    # @param gitlab_sync_show [GitlabSyncShow] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(GitlabSync)>, Integer, Hash)>] Response<(GitlabSync)> data, response status code and response headers
    def gitlab_sync_show_with_http_info(id, gitlab_sync_show, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitLabSyncApi.gitlab_sync_show ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GitLabSyncApi.gitlab_sync_show"
      end
      # verify the required parameter 'gitlab_sync_show' is set
      if @api_client.config.client_side_validation && gitlab_sync_show.nil?
        fail ArgumentError, "Missing the required parameter 'gitlab_sync_show' when calling GitLabSyncApi.gitlab_sync_show"
      end
      # resource path
      local_var_path = '/gitlab_syncs/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(gitlab_sync_show) 

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
    # @param gitlab_sync_update [GitlabSyncUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Object]
    def gitlab_sync_update(id, gitlab_sync_update, opts = {})
      data, _status_code, _headers = gitlab_sync_update_with_http_info(id, gitlab_sync_update, opts)
      data
    end

    # Update single Sync Setting
    # Updates a single GitLab Sync Setting.
    # @param id [String] ID
    # @param gitlab_sync_update [GitlabSyncUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Object)>, Integer, Hash)>] Response<(Object)> data, response status code and response headers
    def gitlab_sync_update_with_http_info(id, gitlab_sync_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GitLabSyncApi.gitlab_sync_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GitLabSyncApi.gitlab_sync_update"
      end
      # verify the required parameter 'gitlab_sync_update' is set
      if @api_client.config.client_side_validation && gitlab_sync_update.nil?
        fail ArgumentError, "Missing the required parameter 'gitlab_sync_update' when calling GitLabSyncApi.gitlab_sync_update"
      end
      # resource path
      local_var_path = '/gitlab_syncs/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(gitlab_sync_update) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

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
