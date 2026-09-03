require 'cgi'

module Phrase
  class ChecksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Dismiss a check issue
    # **Note:** The Checks API is still in development and might change in subsequent releases.  Mark a check issue as dismissed so it no longer appears on the list of active check issues.
    # @param project_id [String] Project ID
    # @param id [String] Check Issue ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [CheckIssue]
    def check_issue_dismiss(project_id, id, opts = {})
      data, _status_code, _headers = check_issue_dismiss_with_http_info(project_id, id, opts)
      data
    end

    # Dismiss a check issue
    # **Note:** The Checks API is still in development and might change in subsequent releases.  Mark a check issue as dismissed so it no longer appears on the list of active check issues.
    # @param project_id [String] Project ID
    # @param id [String] Check Issue ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(CheckIssue)>, Integer, Hash)>] Response<(CheckIssue)> data, response status code and response headers
    def check_issue_dismiss_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChecksApi.check_issue_dismiss ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ChecksApi.check_issue_dismiss"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChecksApi.check_issue_dismiss"
      end
      # resource path
      local_var_path = '/projects/{project_id}/checks/issues/{id}/dismiss'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'CheckIssue' 

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
        @api_client.config.logger.debug "API called: ChecksApi#check_issue_dismiss\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List check issues
    # **Note:** The Checks API is still in development and might change in subsequent releases.  List check issues for the given project. Results can be filtered by locale, check name, and state.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :state Filter by state of the check issue. Can be one of: &#x60;active&#x60;, &#x60;solved&#x60;, &#x60;dismissed&#x60;, &#x60;all&#x60;. Defaults to &#x60;active&#x60;. (default to 'active')
    # @option opts [Array<String>] :locale_ids Filter by one or more locale IDs.
    # @option opts [Array<String>] :check_names Filter by one or more check names. Valid values are:  - &#x60;translation_content_length&#x60; — the translation exceeds the maximum character limit configured for the key. - &#x60;translation_placeholder_usage&#x60; — the translation is missing placeholders present in the source, or contains unexpected ones. - &#x60;translation_glossary_usage&#x60; — the translation does not follow the glossary term translations.
    # @return [Array<CheckIssue>]
    def check_issues_list(project_id, opts = {})
      data, _status_code, _headers = check_issues_list_with_http_info(project_id, opts)
      data
    end

    # List check issues
    # **Note:** The Checks API is still in development and might change in subsequent releases.  List check issues for the given project. Results can be filtered by locale, check name, and state.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :state Filter by state of the check issue. Can be one of: &#x60;active&#x60;, &#x60;solved&#x60;, &#x60;dismissed&#x60;, &#x60;all&#x60;. Defaults to &#x60;active&#x60;.
    # @option opts [Array<String>] :locale_ids Filter by one or more locale IDs.
    # @option opts [Array<String>] :check_names Filter by one or more check names. Valid values are:  - &#x60;translation_content_length&#x60; — the translation exceeds the maximum character limit configured for the key. - &#x60;translation_placeholder_usage&#x60; — the translation is missing placeholders present in the source, or contains unexpected ones. - &#x60;translation_glossary_usage&#x60; — the translation does not follow the glossary term translations.
    # @return [Array<(Response<(Array<CheckIssue>)>, Integer, Hash)>] Response<(Array<CheckIssue>)> data, response status code and response headers
    def check_issues_list_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChecksApi.check_issues_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ChecksApi.check_issues_list"
      end
      allowable_values = ["active", "solved", "dismissed", "all"]
      if @api_client.config.client_side_validation && opts[:'state'] && !allowable_values.include?(opts[:'state'])
        fail ArgumentError, "invalid value for \"state\", must be one of #{allowable_values}"
      end
      allowable_values = ["translation_content_length", "translation_placeholder_usage", "translation_glossary_usage"]
      if @api_client.config.client_side_validation && opts[:'check_names'] && !opts[:'check_names'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"check_names\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/projects/{project_id}/checks/issues'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?
      query_params[:'locale_ids'] = @api_client.build_collection_param(opts[:'locale_ids'], :multi) if !opts[:'locale_ids'].nil?
      query_params[:'check_names'] = @api_client.build_collection_param(opts[:'check_names'], :multi) if !opts[:'check_names'].nil?

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
      return_type = opts[:return_type] || 'Array<CheckIssue>' 

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
        @api_client.config.logger.debug "API called: ChecksApi#check_issues_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
