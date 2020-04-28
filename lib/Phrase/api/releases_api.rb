require 'cgi'

module Phrase
  class ReleasesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a release
    # Create a new release.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param release_create_parameters [ReleaseCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def release_create(account_id, distribution_id, release_create_parameters, opts = {})
      release_create_with_http_info(account_id, distribution_id, release_create_parameters, opts)
      nil
    end

    # Create a release
    # Create a new release.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param release_create_parameters [ReleaseCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def release_create_with_http_info(account_id, distribution_id, release_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReleasesApi.release_create ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ReleasesApi.release_create"
      end
      # verify the required parameter 'distribution_id' is set
      if @api_client.config.client_side_validation && distribution_id.nil?
        fail ArgumentError, "Missing the required parameter 'distribution_id' when calling ReleasesApi.release_create"
      end
      # verify the required parameter 'release_create_parameters' is set
      if @api_client.config.client_side_validation && release_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'release_create_parameters' when calling ReleasesApi.release_create"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/distributions/{distribution_id}/releases'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'distribution_id' + '}', CGI.escape(distribution_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(release_create_parameters) 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReleasesApi#release_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a release
    # Delete an existing release.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def release_delete(account_id, distribution_id, id, opts = {})
      release_delete_with_http_info(account_id, distribution_id, id, opts)
      nil
    end

    # Delete a release
    # Delete an existing release.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def release_delete_with_http_info(account_id, distribution_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReleasesApi.release_delete ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ReleasesApi.release_delete"
      end
      # verify the required parameter 'distribution_id' is set
      if @api_client.config.client_side_validation && distribution_id.nil?
        fail ArgumentError, "Missing the required parameter 'distribution_id' when calling ReleasesApi.release_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReleasesApi.release_delete"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/distributions/{distribution_id}/releases/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'distribution_id' + '}', CGI.escape(distribution_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: ReleasesApi#release_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Publish a release
    # Publish a release for production.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Release]
    def release_publish(account_id, distribution_id, id, opts = {})
      data, _status_code, _headers = release_publish_with_http_info(account_id, distribution_id, id, opts)
      data
    end

    # Publish a release
    # Publish a release for production.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Release)>, Integer, Hash)>] Response<(Release)> data, response status code and response headers
    def release_publish_with_http_info(account_id, distribution_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReleasesApi.release_publish ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ReleasesApi.release_publish"
      end
      # verify the required parameter 'distribution_id' is set
      if @api_client.config.client_side_validation && distribution_id.nil?
        fail ArgumentError, "Missing the required parameter 'distribution_id' when calling ReleasesApi.release_publish"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReleasesApi.release_publish"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/distributions/{distribution_id}/releases/{id}/publish'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'distribution_id' + '}', CGI.escape(distribution_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Release' 

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
        @api_client.config.logger.debug "API called: ReleasesApi#release_publish\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single release
    # Get details on a single release.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Release]
    def release_show(account_id, distribution_id, id, opts = {})
      data, _status_code, _headers = release_show_with_http_info(account_id, distribution_id, id, opts)
      data
    end

    # Get a single release
    # Get details on a single release.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Release)>, Integer, Hash)>] Response<(Release)> data, response status code and response headers
    def release_show_with_http_info(account_id, distribution_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReleasesApi.release_show ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ReleasesApi.release_show"
      end
      # verify the required parameter 'distribution_id' is set
      if @api_client.config.client_side_validation && distribution_id.nil?
        fail ArgumentError, "Missing the required parameter 'distribution_id' when calling ReleasesApi.release_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReleasesApi.release_show"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/distributions/{distribution_id}/releases/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'distribution_id' + '}', CGI.escape(distribution_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Release' 

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
        @api_client.config.logger.debug "API called: ReleasesApi#release_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a release
    # Update an existing release.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param id [String] ID
    # @param release_update_parameters [ReleaseUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Release]
    def release_update(account_id, distribution_id, id, release_update_parameters, opts = {})
      data, _status_code, _headers = release_update_with_http_info(account_id, distribution_id, id, release_update_parameters, opts)
      data
    end

    # Update a release
    # Update an existing release.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param id [String] ID
    # @param release_update_parameters [ReleaseUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Release)>, Integer, Hash)>] Response<(Release)> data, response status code and response headers
    def release_update_with_http_info(account_id, distribution_id, id, release_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReleasesApi.release_update ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ReleasesApi.release_update"
      end
      # verify the required parameter 'distribution_id' is set
      if @api_client.config.client_side_validation && distribution_id.nil?
        fail ArgumentError, "Missing the required parameter 'distribution_id' when calling ReleasesApi.release_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReleasesApi.release_update"
      end
      # verify the required parameter 'release_update_parameters' is set
      if @api_client.config.client_side_validation && release_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'release_update_parameters' when calling ReleasesApi.release_update"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/distributions/{distribution_id}/releases/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'distribution_id' + '}', CGI.escape(distribution_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(release_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Release' 

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
        @api_client.config.logger.debug "API called: ReleasesApi#release_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List releases
    # List all releases for the given distribution.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<ReleasePreview>]
    def releases_list(account_id, distribution_id, opts = {})
      data, _status_code, _headers = releases_list_with_http_info(account_id, distribution_id, opts)
      data
    end

    # List releases
    # List all releases for the given distribution.
    # @param account_id [String] Account ID
    # @param distribution_id [String] Distribution ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<ReleasePreview>)>, Integer, Hash)>] Response<(Array<ReleasePreview>)> data, response status code and response headers
    def releases_list_with_http_info(account_id, distribution_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReleasesApi.releases_list ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ReleasesApi.releases_list"
      end
      # verify the required parameter 'distribution_id' is set
      if @api_client.config.client_side_validation && distribution_id.nil?
        fail ArgumentError, "Missing the required parameter 'distribution_id' when calling ReleasesApi.releases_list"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/distributions/{distribution_id}/releases'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'distribution_id' + '}', CGI.escape(distribution_id.to_s))

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
      return_type = opts[:return_type] || 'Array<ReleasePreview>' 

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
        @api_client.config.logger.debug "API called: ReleasesApi#releases_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
