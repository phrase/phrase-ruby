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
    # @param key_create [KeyCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def key_create(project_id, key_create, opts = {})
      key_create_with_http_info(project_id, key_create, opts)
      nil
    end

    # Create a key
    # Create a new key.
    # @param project_id [String] Project ID
    # @param key_create [KeyCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def key_create_with_http_info(project_id, key_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.key_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysApi.key_create"
      end
      # verify the required parameter 'key_create' is set
      if @api_client.config.client_side_validation && key_create.nil?
        fail ArgumentError, "Missing the required parameter 'key_create' when calling KeysApi.key_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(key_create) 

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
        @api_client.config.logger.debug "API called: KeysApi#key_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a key
    # Delete an existing key.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param key_delete [KeyDelete] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def key_delete(project_id, id, key_delete, opts = {})
      key_delete_with_http_info(project_id, id, key_delete, opts)
      nil
    end

    # Delete a key
    # Delete an existing key.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param key_delete [KeyDelete] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def key_delete_with_http_info(project_id, id, key_delete, opts = {})
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
      # verify the required parameter 'key_delete' is set
      if @api_client.config.client_side_validation && key_delete.nil?
        fail ArgumentError, "Missing the required parameter 'key_delete' when calling KeysApi.key_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(key_delete) 

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
    # @param key_show [KeyShow] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Object]
    def key_show(project_id, id, key_show, opts = {})
      data, _status_code, _headers = key_show_with_http_info(project_id, id, key_show, opts)
      data
    end

    # Get a single key
    # Get details on a single key for a given project.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param key_show [KeyShow] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Object)>, Integer, Hash)>] Response<(Object)> data, response status code and response headers
    def key_show_with_http_info(project_id, id, key_show, opts = {})
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
      # verify the required parameter 'key_show' is set
      if @api_client.config.client_side_validation && key_show.nil?
        fail ArgumentError, "Missing the required parameter 'key_show' when calling KeysApi.key_show"
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
      post_body = opts[:body] || @api_client.object_to_http_body(key_show) 

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
    # @param key_update [KeyUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Object]
    def key_update(project_id, id, key_update, opts = {})
      data, _status_code, _headers = key_update_with_http_info(project_id, id, key_update, opts)
      data
    end

    # Update a key
    # Update an existing key.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param key_update [KeyUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Object)>, Integer, Hash)>] Response<(Object)> data, response status code and response headers
    def key_update_with_http_info(project_id, id, key_update, opts = {})
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
      # verify the required parameter 'key_update' is set
      if @api_client.config.client_side_validation && key_update.nil?
        fail ArgumentError, "Missing the required parameter 'key_update' when calling KeysApi.key_update"
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
      post_body = opts[:body] || @api_client.object_to_http_body(key_update) 

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
    # @param keys_delete [KeysDelete] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [AffectedResources]
    def keys_delete(project_id, keys_delete, opts = {})
      data, _status_code, _headers = keys_delete_with_http_info(project_id, keys_delete, opts)
      data
    end

    # Delete collection of keys
    # Delete all keys matching query. Same constraints as list. Please limit the number of affected keys to about 1,000 as you might experience timeouts otherwise.
    # @param project_id [String] Project ID
    # @param keys_delete [KeysDelete] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(AffectedResources)>, Integer, Hash)>] Response<(AffectedResources)> data, response status code and response headers
    def keys_delete_with_http_info(project_id, keys_delete, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.keys_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysApi.keys_delete"
      end
      # verify the required parameter 'keys_delete' is set
      if @api_client.config.client_side_validation && keys_delete.nil?
        fail ArgumentError, "Missing the required parameter 'keys_delete' when calling KeysApi.keys_delete"
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
      post_body = opts[:body] || @api_client.object_to_http_body(keys_delete) 

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
    # @param keys_list [KeysList] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<TranslationKey>]
    def keys_list(project_id, keys_list, opts = {})
      data, _status_code, _headers = keys_list_with_http_info(project_id, keys_list, opts)
      data
    end

    # List keys
    # List all keys for the given project. Alternatively you can POST requests to /search.
    # @param project_id [String] Project ID
    # @param keys_list [KeysList] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<TranslationKey>)>, Integer, Hash)>] Response<(Array<TranslationKey>)> data, response status code and response headers
    def keys_list_with_http_info(project_id, keys_list, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.keys_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysApi.keys_list"
      end
      # verify the required parameter 'keys_list' is set
      if @api_client.config.client_side_validation && keys_list.nil?
        fail ArgumentError, "Missing the required parameter 'keys_list' when calling KeysApi.keys_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(keys_list) 

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
    # @param keys_search [KeysSearch] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<Object>]
    def keys_search(project_id, keys_search, opts = {})
      data, _status_code, _headers = keys_search_with_http_info(project_id, keys_search, opts)
      data
    end

    # Search keys
    # Search keys for the given project matching query.
    # @param project_id [String] Project ID
    # @param keys_search [KeysSearch] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<Object>)>, Integer, Hash)>] Response<(Array<Object>)> data, response status code and response headers
    def keys_search_with_http_info(project_id, keys_search, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.keys_search ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysApi.keys_search"
      end
      # verify the required parameter 'keys_search' is set
      if @api_client.config.client_side_validation && keys_search.nil?
        fail ArgumentError, "Missing the required parameter 'keys_search' when calling KeysApi.keys_search"
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
      post_body = opts[:body] || @api_client.object_to_http_body(keys_search) 

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
        @api_client.config.logger.debug "API called: KeysApi#keys_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Add tags to collection of keys
    # Tags all keys matching query. Same constraints as list.
    # @param project_id [String] Project ID
    # @param keys_tag [KeysTag] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Object]
    def keys_tag(project_id, keys_tag, opts = {})
      data, _status_code, _headers = keys_tag_with_http_info(project_id, keys_tag, opts)
      data
    end

    # Add tags to collection of keys
    # Tags all keys matching query. Same constraints as list.
    # @param project_id [String] Project ID
    # @param keys_tag [KeysTag] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Object)>, Integer, Hash)>] Response<(Object)> data, response status code and response headers
    def keys_tag_with_http_info(project_id, keys_tag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.keys_tag ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysApi.keys_tag"
      end
      # verify the required parameter 'keys_tag' is set
      if @api_client.config.client_side_validation && keys_tag.nil?
        fail ArgumentError, "Missing the required parameter 'keys_tag' when calling KeysApi.keys_tag"
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
      post_body = opts[:body] || @api_client.object_to_http_body(keys_tag) 

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
    # @param keys_untag [KeysUntag] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Object]
    def keys_untag(project_id, keys_untag, opts = {})
      data, _status_code, _headers = keys_untag_with_http_info(project_id, keys_untag, opts)
      data
    end

    # Remove tags from collection of keys
    # Removes specified tags from keys matching query.
    # @param project_id [String] Project ID
    # @param keys_untag [KeysUntag] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Object)>, Integer, Hash)>] Response<(Object)> data, response status code and response headers
    def keys_untag_with_http_info(project_id, keys_untag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.keys_untag ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling KeysApi.keys_untag"
      end
      # verify the required parameter 'keys_untag' is set
      if @api_client.config.client_side_validation && keys_untag.nil?
        fail ArgumentError, "Missing the required parameter 'keys_untag' when calling KeysApi.keys_untag"
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
      post_body = opts[:body] || @api_client.object_to_http_body(keys_untag) 

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

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KeysApi#keys_untag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
