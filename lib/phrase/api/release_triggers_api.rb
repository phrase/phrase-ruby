require 'cgi'

module Phrase
  class ReleaseTriggersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a release trigger
    # Create a new recurring release. New releases will be published automatically, based on the cron schedule provided. Currently, only one release trigger can exist per distribution.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param release_create_parameters1 [ReleaseCreateParameters1] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [ReleaseTrigger]
    def release_triggers_create(account_id, distribution_id, release_create_parameters1, opts = {})
      data, _status_code, _headers = release_triggers_create_with_http_info(account_id, distribution_id, release_create_parameters1, opts)
      data
    end

    # Create a release trigger
    # Create a new recurring release. New releases will be published automatically, based on the cron schedule provided. Currently, only one release trigger can exist per distribution.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param release_create_parameters1 [ReleaseCreateParameters1] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(ReleaseTrigger)>, Integer, Hash)>] Response<(ReleaseTrigger)> data, response status code and response headers
    def release_triggers_create_with_http_info(account_id, distribution_id, release_create_parameters1, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReleaseTriggersApi.release_triggers_create ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ReleaseTriggersApi.release_triggers_create"
      end
      # verify the required parameter 'distribution_id' is set
      if @api_client.config.client_side_validation && distribution_id.nil?
        fail ArgumentError, "Missing the required parameter 'distribution_id' when calling ReleaseTriggersApi.release_triggers_create"
      end
      # verify the required parameter 'release_create_parameters1' is set
      if @api_client.config.client_side_validation && release_create_parameters1.nil?
        fail ArgumentError, "Missing the required parameter 'release_create_parameters1' when calling ReleaseTriggersApi.release_triggers_create"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/distributions/{distribution_id}/release_triggers'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'distribution_id' + '}', CGI.escape(distribution_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(release_create_parameters1) 

      # return_type
      return_type = opts[:return_type] || 'ReleaseTrigger' 

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
        @api_client.config.logger.debug "API called: ReleaseTriggersApi#release_triggers_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a single release trigger
    # Delete a single release trigger.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def release_triggers_destroy(account_id, distribution_id, id, opts = {})
      data, _status_code, _headers = release_triggers_destroy_with_http_info(account_id, distribution_id, id, opts)
      data
    end

    # Delete a single release trigger
    # Delete a single release trigger.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def release_triggers_destroy_with_http_info(account_id, distribution_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReleaseTriggersApi.release_triggers_destroy ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ReleaseTriggersApi.release_triggers_destroy"
      end
      # verify the required parameter 'distribution_id' is set
      if @api_client.config.client_side_validation && distribution_id.nil?
        fail ArgumentError, "Missing the required parameter 'distribution_id' when calling ReleaseTriggersApi.release_triggers_destroy"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReleaseTriggersApi.release_triggers_destroy"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/distributions/{distribution_id}/release_triggers/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'distribution_id' + '}', CGI.escape(distribution_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: ReleaseTriggersApi#release_triggers_destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List release triggers
    # List all release triggers for the given distribution.  Note: Currently only one release trigger can exist per distribution. 
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<ReleaseTrigger>]
    def release_triggers_list(account_id, distribution_id, opts = {})
      data, _status_code, _headers = release_triggers_list_with_http_info(account_id, distribution_id, opts)
      data
    end

    # List release triggers
    # List all release triggers for the given distribution.  Note: Currently only one release trigger can exist per distribution. 
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Array<ReleaseTrigger>)>, Integer, Hash)>] Response<(Array<ReleaseTrigger>)> data, response status code and response headers
    def release_triggers_list_with_http_info(account_id, distribution_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReleaseTriggersApi.release_triggers_list ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ReleaseTriggersApi.release_triggers_list"
      end
      # verify the required parameter 'distribution_id' is set
      if @api_client.config.client_side_validation && distribution_id.nil?
        fail ArgumentError, "Missing the required parameter 'distribution_id' when calling ReleaseTriggersApi.release_triggers_list"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/distributions/{distribution_id}/release_triggers'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'distribution_id' + '}', CGI.escape(distribution_id.to_s))

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
      return_type = opts[:return_type] || 'Array<ReleaseTrigger>' 

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
        @api_client.config.logger.debug "API called: ReleaseTriggersApi#release_triggers_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single release trigger
    # Get details of a single release trigger.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [ReleaseTrigger]
    def release_triggers_show(account_id, distribution_id, id, opts = {})
      data, _status_code, _headers = release_triggers_show_with_http_info(account_id, distribution_id, id, opts)
      data
    end

    # Get a single release trigger
    # Get details of a single release trigger.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(ReleaseTrigger)>, Integer, Hash)>] Response<(ReleaseTrigger)> data, response status code and response headers
    def release_triggers_show_with_http_info(account_id, distribution_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReleaseTriggersApi.release_triggers_show ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ReleaseTriggersApi.release_triggers_show"
      end
      # verify the required parameter 'distribution_id' is set
      if @api_client.config.client_side_validation && distribution_id.nil?
        fail ArgumentError, "Missing the required parameter 'distribution_id' when calling ReleaseTriggersApi.release_triggers_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReleaseTriggersApi.release_triggers_show"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/distributions/{distribution_id}/release_triggers/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'distribution_id' + '}', CGI.escape(distribution_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'ReleaseTrigger' 

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
        @api_client.config.logger.debug "API called: ReleaseTriggersApi#release_triggers_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a release trigger
    # Update a recurring release.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param id [String] ID
    # @param release_update_parameters1 [ReleaseUpdateParameters1] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [ReleaseTrigger]
    def release_triggers_update(account_id, distribution_id, id, release_update_parameters1, opts = {})
      data, _status_code, _headers = release_triggers_update_with_http_info(account_id, distribution_id, id, release_update_parameters1, opts)
      data
    end

    # Update a release trigger
    # Update a recurring release.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param id [String] ID
    # @param release_update_parameters1 [ReleaseUpdateParameters1] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(ReleaseTrigger)>, Integer, Hash)>] Response<(ReleaseTrigger)> data, response status code and response headers
    def release_triggers_update_with_http_info(account_id, distribution_id, id, release_update_parameters1, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReleaseTriggersApi.release_triggers_update ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ReleaseTriggersApi.release_triggers_update"
      end
      # verify the required parameter 'distribution_id' is set
      if @api_client.config.client_side_validation && distribution_id.nil?
        fail ArgumentError, "Missing the required parameter 'distribution_id' when calling ReleaseTriggersApi.release_triggers_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReleaseTriggersApi.release_triggers_update"
      end
      # verify the required parameter 'release_update_parameters1' is set
      if @api_client.config.client_side_validation && release_update_parameters1.nil?
        fail ArgumentError, "Missing the required parameter 'release_update_parameters1' when calling ReleaseTriggersApi.release_triggers_update"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/distributions/{distribution_id}/release_triggers/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'distribution_id' + '}', CGI.escape(distribution_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(release_update_parameters1) 

      # return_type
      return_type = opts[:return_type] || 'ReleaseTrigger' 

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
        @api_client.config.logger.debug "API called: ReleaseTriggersApi#release_triggers_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
