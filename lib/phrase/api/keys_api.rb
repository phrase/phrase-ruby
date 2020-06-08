require 'cgi'

module Phrase
  class KeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a key
    # Create a new key.
    # @param project_id [String] Project ID
    # @param key_create_parameters [KeyCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [TranslationKeyDetails]
    def key_create(project_id, key_create_parameters, opts = {})
      data, _status_code, _headers = key_create_with_http_info(project_id, key_create_parameters, opts)
      data
    end

    # Create a key
    # Create a new key.
    # @param project_id [String] Project ID
    # @param key_create_parameters [KeyCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(TranslationKeyDetails)>, Integer, Hash)>] Response<(TranslationKeyDetails)> data, response status code and response headers
    def key_create_with_http_info(project_id, key_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.key_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysApi.key_create"
      end
      # verify the required parameter 'key_create_parameters' is set
      if @api_client.config.client_side_validation && key_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'key_create_parameters' when calling KeysApi.key_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(key_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'TranslationKeyDetails' 

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
        @api_client.config.logger.debug "API called: KeysApi#key_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a key
    # Delete an existing key.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [nil]
    def key_delete(project_id, id, opts = {})
      key_delete_with_http_info(project_id, id, opts)
      nil
    end

    # Delete a key
    # Delete an existing key.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def key_delete_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.key_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysApi.key_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling KeysApi.key_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?

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
        @api_client.config.logger.debug "API called: KeysApi#key_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single key
    # Get details on a single key for a given project.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [TranslationKeyDetails]
    def key_show(project_id, id, opts = {})
      data, _status_code, _headers = key_show_with_http_info(project_id, id, opts)
      data
    end

    # Get a single key
    # Get details on a single key for a given project.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(TranslationKeyDetails)>, Integer, Hash)>] Response<(TranslationKeyDetails)> data, response status code and response headers
    def key_show_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.key_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysApi.key_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling KeysApi.key_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?

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
      return_type = opts[:return_type] || 'TranslationKeyDetails' 

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
        @api_client.config.logger.debug "API called: KeysApi#key_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a key
    # Update an existing key.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param key_update_parameters [KeyUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [TranslationKeyDetails]
    def key_update(project_id, id, key_update_parameters, opts = {})
      data, _status_code, _headers = key_update_with_http_info(project_id, id, key_update_parameters, opts)
      data
    end

    # Update a key
    # Update an existing key.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param key_update_parameters [KeyUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(TranslationKeyDetails)>, Integer, Hash)>] Response<(TranslationKeyDetails)> data, response status code and response headers
    def key_update_with_http_info(project_id, id, key_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.key_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysApi.key_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling KeysApi.key_update"
      end
      # verify the required parameter 'key_update_parameters' is set
      if @api_client.config.client_side_validation && key_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'key_update_parameters' when calling KeysApi.key_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(key_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'TranslationKeyDetails' 

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
        @api_client.config.logger.debug "API called: KeysApi#key_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete collection of keys
    # Delete all keys matching query. Same constraints as list. Please limit the number of affected keys to about 1,000 as you might experience timeouts otherwise.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :q q_description_placeholder
    # @option opts [String] :locale_id Locale used to determine the translation state of a key when filtering for untranslated or translated keys.
    # @return [AffectedResources]
    def keys_delete(project_id, opts = {})
      data, _status_code, _headers = keys_delete_with_http_info(project_id, opts)
      data
    end

    # Delete collection of keys
    # Delete all keys matching query. Same constraints as list. Please limit the number of affected keys to about 1,000 as you might experience timeouts otherwise.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :q q_description_placeholder
    # @option opts [String] :locale_id Locale used to determine the translation state of a key when filtering for untranslated or translated keys.
    # @return [Array<(Response<(AffectedResources)>, Integer, Hash)>] Response<(AffectedResources)> data, response status code and response headers
    def keys_delete_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.keys_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysApi.keys_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'locale_id'] = opts[:'locale_id'] if !opts[:'locale_id'].nil?

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
      return_type = opts[:return_type] || 'AffectedResources' 

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
        @api_client.config.logger.debug "API called: KeysApi#keys_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List keys
    # List all keys for the given project. Alternatively you can POST requests to /search.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :sort Sort by field. Can be one of: name, created_at, updated_at.
    # @option opts [String] :order Order direction. Can be one of: asc, desc.
    # @option opts [String] :q q_description_placeholder
    # @option opts [String] :locale_id Locale used to determine the translation state of a key when filtering for untranslated or translated keys.
    # @return [Array<TranslationKey>]
    def keys_list(project_id, opts = {})
      data, _status_code, _headers = keys_list_with_http_info(project_id, opts)
      data
    end

    # List keys
    # List all keys for the given project. Alternatively you can POST requests to /search.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :sort Sort by field. Can be one of: name, created_at, updated_at.
    # @option opts [String] :order Order direction. Can be one of: asc, desc.
    # @option opts [String] :q q_description_placeholder
    # @option opts [String] :locale_id Locale used to determine the translation state of a key when filtering for untranslated or translated keys.
    # @return [Array<(Response<(Array<TranslationKey>)>, Integer, Hash)>] Response<(Array<TranslationKey>)> data, response status code and response headers
    def keys_list_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.keys_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysApi.keys_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'locale_id'] = opts[:'locale_id'] if !opts[:'locale_id'].nil?

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
      return_type = opts[:return_type] || 'Array<TranslationKey>' 

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
        @api_client.config.logger.debug "API called: KeysApi#keys_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Search keys
    # Search keys for the given project matching query.
    # @param project_id [String] Project ID
    # @param keys_search_parameters [KeysSearchParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<TranslationKey>]
    def keys_search(project_id, keys_search_parameters, opts = {})
      data, _status_code, _headers = keys_search_with_http_info(project_id, keys_search_parameters, opts)
      data
    end

    # Search keys
    # Search keys for the given project matching query.
    # @param project_id [String] Project ID
    # @param keys_search_parameters [KeysSearchParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<TranslationKey>)>, Integer, Hash)>] Response<(Array<TranslationKey>)> data, response status code and response headers
    def keys_search_with_http_info(project_id, keys_search_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.keys_search ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysApi.keys_search"
      end
      # verify the required parameter 'keys_search_parameters' is set
      if @api_client.config.client_side_validation && keys_search_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'keys_search_parameters' when calling KeysApi.keys_search"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/search'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(keys_search_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Array<TranslationKey>' 

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
        @api_client.config.logger.debug "API called: KeysApi#keys_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Add tags to collection of keys
    # Tags all keys matching query. Same constraints as list.
    # @param project_id [String] Project ID
    # @param keys_tag_parameters [KeysTagParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [AffectedResources]
    def keys_tag(project_id, keys_tag_parameters, opts = {})
      data, _status_code, _headers = keys_tag_with_http_info(project_id, keys_tag_parameters, opts)
      data
    end

    # Add tags to collection of keys
    # Tags all keys matching query. Same constraints as list.
    # @param project_id [String] Project ID
    # @param keys_tag_parameters [KeysTagParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(AffectedResources)>, Integer, Hash)>] Response<(AffectedResources)> data, response status code and response headers
    def keys_tag_with_http_info(project_id, keys_tag_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.keys_tag ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysApi.keys_tag"
      end
      # verify the required parameter 'keys_tag_parameters' is set
      if @api_client.config.client_side_validation && keys_tag_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'keys_tag_parameters' when calling KeysApi.keys_tag"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/tag'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(keys_tag_parameters) 

      # return_type
      return_type = opts[:return_type] || 'AffectedResources' 

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
        @api_client.config.logger.debug "API called: KeysApi#keys_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Remove tags from collection of keys
    # Removes specified tags from keys matching query.
    # @param project_id [String] Project ID
    # @param keys_untag_parameters [KeysUntagParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [AffectedResources]
    def keys_untag(project_id, keys_untag_parameters, opts = {})
      data, _status_code, _headers = keys_untag_with_http_info(project_id, keys_untag_parameters, opts)
      data
    end

    # Remove tags from collection of keys
    # Removes specified tags from keys matching query.
    # @param project_id [String] Project ID
    # @param keys_untag_parameters [KeysUntagParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(AffectedResources)>, Integer, Hash)>] Response<(AffectedResources)> data, response status code and response headers
    def keys_untag_with_http_info(project_id, keys_untag_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.keys_untag ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysApi.keys_untag"
      end
      # verify the required parameter 'keys_untag_parameters' is set
      if @api_client.config.client_side_validation && keys_untag_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'keys_untag_parameters' when calling KeysApi.keys_untag"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/untag'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(keys_untag_parameters) 

      # return_type
      return_type = opts[:return_type] || 'AffectedResources' 

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
        @api_client.config.logger.debug "API called: KeysApi#keys_untag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
