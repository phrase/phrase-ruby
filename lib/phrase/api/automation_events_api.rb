require 'cgi'

module Phrase
  class AutomationEventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List automation events for an account
    # Returns the run history across all automations in the account, newest-first.  Use `automation_id` to narrow results to a single automation. Use `project_id` or `project_ids` to narrow by project.  For feature availability, see [Jobs (Strings)](https://support.phrase.com/hc/en-us/articles/5784100517788-Jobs-Strings). 
    # @param account_id [String] Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :automation_id Filter events to a single automation by its ID.
    # @option opts [String] :state Filter events by outcome state. Unrecognized values are ignored.
    # @option opts [String] :triggered_by Filter events by what triggered the automation run. Unrecognized values are ignored.
    # @option opts [String] :project_id Filter events by project ID. Accepts a single ID or a comma-separated list of IDs.
    # @option opts [Array<String>] :project_ids Filter events by one or more project IDs.
    # @option opts [String] :created_after Return only events created after this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time.
    # @option opts [String] :created_before Return only events created before this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time.
    # @return [Array<AutomationEvent>]
    def account_automation_events_list(account_id, opts = {})
      data, _status_code, _headers = account_automation_events_list_with_http_info(account_id, opts)
      data
    end

    # List automation events for an account
    # Returns the run history across all automations in the account, newest-first.  Use &#x60;automation_id&#x60; to narrow results to a single automation. Use &#x60;project_id&#x60; or &#x60;project_ids&#x60; to narrow by project.  For feature availability, see [Jobs (Strings)](https://support.phrase.com/hc/en-us/articles/5784100517788-Jobs-Strings). 
    # @param account_id [String] Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :automation_id Filter events to a single automation by its ID.
    # @option opts [String] :state Filter events by outcome state. Unrecognized values are ignored.
    # @option opts [String] :triggered_by Filter events by what triggered the automation run. Unrecognized values are ignored.
    # @option opts [String] :project_id Filter events by project ID. Accepts a single ID or a comma-separated list of IDs.
    # @option opts [Array<String>] :project_ids Filter events by one or more project IDs.
    # @option opts [String] :created_after Return only events created after this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time.
    # @option opts [String] :created_before Return only events created before this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time.
    # @return [Array<(Response<(Array<AutomationEvent>)>, Integer, Hash)>] Response<(Array<AutomationEvent>)> data, response status code and response headers
    def account_automation_events_list_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomationEventsApi.account_automation_events_list ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AutomationEventsApi.account_automation_events_list"
      end
      allowable_values = ["success", "failure", "in_progress"]
      if @api_client.config.client_side_validation && opts[:'state'] && !allowable_values.include?(opts[:'state'])
        fail ArgumentError, "invalid value for \"state\", must be one of #{allowable_values}"
      end
      allowable_values = ["manual", "schedule", "upload", "upload_batch"]
      if @api_client.config.client_side_validation && opts[:'triggered_by'] && !allowable_values.include?(opts[:'triggered_by'])
        fail ArgumentError, "invalid value for \"triggered_by\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/automation_events'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'automation_id'] = opts[:'automation_id'] if !opts[:'automation_id'].nil?
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?
      query_params[:'triggered_by'] = opts[:'triggered_by'] if !opts[:'triggered_by'].nil?
      query_params[:'project_id'] = opts[:'project_id'] if !opts[:'project_id'].nil?
      query_params[:'project_ids'] = @api_client.build_collection_param(opts[:'project_ids'], :multi) if !opts[:'project_ids'].nil?
      query_params[:'created_after'] = opts[:'created_after'] if !opts[:'created_after'].nil?
      query_params[:'created_before'] = opts[:'created_before'] if !opts[:'created_before'].nil?

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
      return_type = opts[:return_type] || 'Array<AutomationEvent>' 

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
        @api_client.config.logger.debug "API called: AutomationEventsApi#account_automation_events_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List events for an automation
    # Returns the run history for a specific automation, newest-first.  For feature availability, see [Jobs (Strings)](https://support.phrase.com/hc/en-us/articles/5784100517788-Jobs-Strings). 
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :state Filter events by outcome state. Unrecognized values are ignored.
    # @option opts [String] :triggered_by Filter events by what triggered the automation run. Unrecognized values are ignored.
    # @option opts [String] :project_id Filter events by project ID. Accepts a single ID or a comma-separated list of IDs.
    # @option opts [Array<String>] :project_ids Filter events by one or more project IDs.
    # @option opts [String] :created_after Return only events created after this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time.
    # @option opts [String] :created_before Return only events created before this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time.
    # @return [Array<AutomationEvent>]
    def automation_events_list(account_id, id, opts = {})
      data, _status_code, _headers = automation_events_list_with_http_info(account_id, id, opts)
      data
    end

    # List events for an automation
    # Returns the run history for a specific automation, newest-first.  For feature availability, see [Jobs (Strings)](https://support.phrase.com/hc/en-us/articles/5784100517788-Jobs-Strings). 
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :state Filter events by outcome state. Unrecognized values are ignored.
    # @option opts [String] :triggered_by Filter events by what triggered the automation run. Unrecognized values are ignored.
    # @option opts [String] :project_id Filter events by project ID. Accepts a single ID or a comma-separated list of IDs.
    # @option opts [Array<String>] :project_ids Filter events by one or more project IDs.
    # @option opts [String] :created_after Return only events created after this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time.
    # @option opts [String] :created_before Return only events created before this ISO 8601 timestamp. Returns 400 if the value is not a valid date-time.
    # @return [Array<(Response<(Array<AutomationEvent>)>, Integer, Hash)>] Response<(Array<AutomationEvent>)> data, response status code and response headers
    def automation_events_list_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomationEventsApi.automation_events_list ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AutomationEventsApi.automation_events_list"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AutomationEventsApi.automation_events_list"
      end
      allowable_values = ["success", "failure", "in_progress"]
      if @api_client.config.client_side_validation && opts[:'state'] && !allowable_values.include?(opts[:'state'])
        fail ArgumentError, "invalid value for \"state\", must be one of #{allowable_values}"
      end
      allowable_values = ["manual", "schedule", "upload", "upload_batch"]
      if @api_client.config.client_side_validation && opts[:'triggered_by'] && !allowable_values.include?(opts[:'triggered_by'])
        fail ArgumentError, "invalid value for \"triggered_by\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/automations/{automation_id}/events'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?
      query_params[:'triggered_by'] = opts[:'triggered_by'] if !opts[:'triggered_by'].nil?
      query_params[:'project_id'] = opts[:'project_id'] if !opts[:'project_id'].nil?
      query_params[:'project_ids'] = @api_client.build_collection_param(opts[:'project_ids'], :multi) if !opts[:'project_ids'].nil?
      query_params[:'created_after'] = opts[:'created_after'] if !opts[:'created_after'].nil?
      query_params[:'created_before'] = opts[:'created_before'] if !opts[:'created_before'].nil?

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
      return_type = opts[:return_type] || 'Array<AutomationEvent>' 

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
        @api_client.config.logger.debug "API called: AutomationEventsApi#automation_events_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
