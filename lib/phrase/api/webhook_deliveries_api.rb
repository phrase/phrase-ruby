require 'cgi'

module Phrase
  class WebhookDeliveriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List webhook deliveries
    # List all webhook deliveries for the given webhook_id.
    # @param project_id [String] Project ID
    # @param webhook_id [String] Webhook ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :response_status_codes List of Response Status Codes
    # @return [Array<WebhookDelivery>]
    def webhook_deliveries_list(project_id, webhook_id, opts = {})
      data, _status_code, _headers = webhook_deliveries_list_with_http_info(project_id, webhook_id, opts)
      data
    end

    # List webhook deliveries
    # List all webhook deliveries for the given webhook_id.
    # @param project_id [String] Project ID
    # @param webhook_id [String] Webhook ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :response_status_codes List of Response Status Codes
    # @return [Array<(Response<(Array<WebhookDelivery>)>, Integer, Hash)>] Response<(Array<WebhookDelivery>)> data, response status code and response headers
    def webhook_deliveries_list_with_http_info(project_id, webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookDeliveriesApi.webhook_deliveries_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling WebhookDeliveriesApi.webhook_deliveries_list"
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookDeliveriesApi.webhook_deliveries_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/webhooks/{webhook_id}/deliveries'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'webhook_id' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'response_status_codes'] = opts[:'response_status_codes'] if !opts[:'response_status_codes'].nil?

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
      return_type = opts[:return_type] || 'Array<WebhookDelivery>' 

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
        @api_client.config.logger.debug "API called: WebhookDeliveriesApi#webhook_deliveries_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Redeliver a single webhook delivery
    # Trigger an individual webhook delivery to be redelivered.
    # @param project_id [String] Project ID
    # @param webhook_id [String] Webhook ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [WebhookDelivery]
    def webhook_deliveries_redeliver(project_id, webhook_id, id, opts = {})
      data, _status_code, _headers = webhook_deliveries_redeliver_with_http_info(project_id, webhook_id, id, opts)
      data
    end

    # Redeliver a single webhook delivery
    # Trigger an individual webhook delivery to be redelivered.
    # @param project_id [String] Project ID
    # @param webhook_id [String] Webhook ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(WebhookDelivery)>, Integer, Hash)>] Response<(WebhookDelivery)> data, response status code and response headers
    def webhook_deliveries_redeliver_with_http_info(project_id, webhook_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookDeliveriesApi.webhook_deliveries_redeliver ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling WebhookDeliveriesApi.webhook_deliveries_redeliver"
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookDeliveriesApi.webhook_deliveries_redeliver"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookDeliveriesApi.webhook_deliveries_redeliver"
      end
      # resource path
      local_var_path = '/projects/{project_id}/webhooks/{webhook_id}/deliveries/{id}/redeliver'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'webhook_id' + '}', CGI.escape(webhook_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'WebhookDelivery' 

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
        @api_client.config.logger.debug "API called: WebhookDeliveriesApi#webhook_deliveries_redeliver\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single webhook delivery
    # Get all information about a single webhook delivery for the given ID.
    # @param project_id [String] Project ID
    # @param webhook_id [String] Webhook ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [WebhookDelivery]
    def webhook_deliveries_show(project_id, webhook_id, id, opts = {})
      data, _status_code, _headers = webhook_deliveries_show_with_http_info(project_id, webhook_id, id, opts)
      data
    end

    # Get a single webhook delivery
    # Get all information about a single webhook delivery for the given ID.
    # @param project_id [String] Project ID
    # @param webhook_id [String] Webhook ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(WebhookDelivery)>, Integer, Hash)>] Response<(WebhookDelivery)> data, response status code and response headers
    def webhook_deliveries_show_with_http_info(project_id, webhook_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookDeliveriesApi.webhook_deliveries_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling WebhookDeliveriesApi.webhook_deliveries_show"
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookDeliveriesApi.webhook_deliveries_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookDeliveriesApi.webhook_deliveries_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/webhooks/{webhook_id}/deliveries/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'webhook_id' + '}', CGI.escape(webhook_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'WebhookDelivery' 

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
        @api_client.config.logger.debug "API called: WebhookDeliveriesApi#webhook_deliveries_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
