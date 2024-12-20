require 'cgi'

module Phrase
  class RepoSyncEventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Repository Syncs History
    # Get the history of a single Repo Sync. The history includes all imports and exports performed by the Repo Sync.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<RepoSyncEvent>]
    def repo_sync_event_list(account_id, id, opts = {})
      data, _status_code, _headers = repo_sync_event_list_with_http_info(account_id, id, opts)
      data
    end

    # Repository Syncs History
    # Get the history of a single Repo Sync. The history includes all imports and exports performed by the Repo Sync.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Array<RepoSyncEvent>)>, Integer, Hash)>] Response<(Array<RepoSyncEvent>)> data, response status code and response headers
    def repo_sync_event_list_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncEventsApi.repo_sync_event_list ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncEventsApi.repo_sync_event_list"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RepoSyncEventsApi.repo_sync_event_list"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs/{id}/events'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: RepoSyncEventsApi#repo_sync_event_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single Repo Sync Event
    # Shows a single Repo Sync event.
    # @param account_id [String] Account ID
    # @param repo_sync_id [String] Repo Sync ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [RepoSyncEvent]
    def repo_sync_event_show(account_id, repo_sync_id, id, opts = {})
      data, _status_code, _headers = repo_sync_event_show_with_http_info(account_id, repo_sync_id, id, opts)
      data
    end

    # Get a single Repo Sync Event
    # Shows a single Repo Sync event.
    # @param account_id [String] Account ID
    # @param repo_sync_id [String] Repo Sync ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(RepoSyncEvent)>, Integer, Hash)>] Response<(RepoSyncEvent)> data, response status code and response headers
    def repo_sync_event_show_with_http_info(account_id, repo_sync_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RepoSyncEventsApi.repo_sync_event_show ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling RepoSyncEventsApi.repo_sync_event_show"
      end
      # verify the required parameter 'repo_sync_id' is set
      if @api_client.config.client_side_validation && repo_sync_id.nil?
        fail ArgumentError, "Missing the required parameter 'repo_sync_id' when calling RepoSyncEventsApi.repo_sync_event_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RepoSyncEventsApi.repo_sync_event_show"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/repo_syncs/{repo_sync_id}/events/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'repo_sync_id' + '}', CGI.escape(repo_sync_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RepoSyncEventsApi#repo_sync_event_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
