require 'cgi'

module Phrase
  class LocalesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a locale
    # Create a new locale.
    # @param project_id [String] Project ID
    # @param locale_create [LocaleCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def locale_create(project_id, locale_create, opts = {})
      locale_create_with_http_info(project_id, locale_create, opts)
      nil
    end

    # Create a locale
    # Create a new locale.
    # @param project_id [String] Project ID
    # @param locale_create [LocaleCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def locale_create_with_http_info(project_id, locale_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalesApi.locale_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling LocalesApi.locale_create"
      end
      # verify the required parameter 'locale_create' is set
      if @api_client.config.client_side_validation && locale_create.nil?
        fail ArgumentError, "Missing the required parameter 'locale_create' when calling LocalesApi.locale_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/locales'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(locale_create) 

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
        @api_client.config.logger.debug "API called: LocalesApi#locale_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a locale
    # Delete an existing locale.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param locale_delete [LocaleDelete] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def locale_delete(project_id, id, locale_delete, opts = {})
      locale_delete_with_http_info(project_id, id, locale_delete, opts)
      nil
    end

    # Delete a locale
    # Delete an existing locale.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param locale_delete [LocaleDelete] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def locale_delete_with_http_info(project_id, id, locale_delete, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalesApi.locale_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling LocalesApi.locale_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocalesApi.locale_delete"
      end
      # verify the required parameter 'locale_delete' is set
      if @api_client.config.client_side_validation && locale_delete.nil?
        fail ArgumentError, "Missing the required parameter 'locale_delete' when calling LocalesApi.locale_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/locales/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(locale_delete) 

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
        @api_client.config.logger.debug "API called: LocalesApi#locale_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Download a locale
    # Download a locale in a specific file format.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param locale_download [LocaleDownload] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def locale_download(project_id, id, locale_download, opts = {})
      locale_download_with_http_info(project_id, id, locale_download, opts)
      nil
    end

    # Download a locale
    # Download a locale in a specific file format.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param locale_download [LocaleDownload] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(nil)>, Integer, Hash)>] Response<(nil, response status code and response headers
    def locale_download_with_http_info(project_id, id, locale_download, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalesApi.locale_download ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling LocalesApi.locale_download"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocalesApi.locale_download"
      end
      # verify the required parameter 'locale_download' is set
      if @api_client.config.client_side_validation && locale_download.nil?
        fail ArgumentError, "Missing the required parameter 'locale_download' when calling LocalesApi.locale_download"
      end
      # resource path
      local_var_path = '/projects/{project_id}/locales/{id}/download'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(locale_download) 

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocalesApi#locale_download\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single locale
    # Get details on a single locale for a given project.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param locale_show [LocaleShow] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Object]
    def locale_show(project_id, id, locale_show, opts = {})
      data, _status_code, _headers = locale_show_with_http_info(project_id, id, locale_show, opts)
      data
    end

    # Get a single locale
    # Get details on a single locale for a given project.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param locale_show [LocaleShow] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Object)>, Integer, Hash)>] Response<(Object)> data, response status code and response headers
    def locale_show_with_http_info(project_id, id, locale_show, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalesApi.locale_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling LocalesApi.locale_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocalesApi.locale_show"
      end
      # verify the required parameter 'locale_show' is set
      if @api_client.config.client_side_validation && locale_show.nil?
        fail ArgumentError, "Missing the required parameter 'locale_show' when calling LocalesApi.locale_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/locales/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(locale_show) 

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
        @api_client.config.logger.debug "API called: LocalesApi#locale_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a locale
    # Update an existing locale.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param locale_update [LocaleUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Object]
    def locale_update(project_id, id, locale_update, opts = {})
      data, _status_code, _headers = locale_update_with_http_info(project_id, id, locale_update, opts)
      data
    end

    # Update a locale
    # Update an existing locale.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param locale_update [LocaleUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Object)>, Integer, Hash)>] Response<(Object)> data, response status code and response headers
    def locale_update_with_http_info(project_id, id, locale_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalesApi.locale_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling LocalesApi.locale_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocalesApi.locale_update"
      end
      # verify the required parameter 'locale_update' is set
      if @api_client.config.client_side_validation && locale_update.nil?
        fail ArgumentError, "Missing the required parameter 'locale_update' when calling LocalesApi.locale_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/locales/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(locale_update) 

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
        @api_client.config.logger.debug "API called: LocalesApi#locale_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List locales
    # List all locales for the given project.
    # @param project_id [String] Project ID
    # @param locales_list [LocalesList] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<Locale>]
    def locales_list(project_id, locales_list, opts = {})
      data, _status_code, _headers = locales_list_with_http_info(project_id, locales_list, opts)
      data
    end

    # List locales
    # List all locales for the given project.
    # @param project_id [String] Project ID
    # @param locales_list [LocalesList] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<Locale>)>, Integer, Hash)>] Response<(Array<Locale>)> data, response status code and response headers
    def locales_list_with_http_info(project_id, locales_list, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalesApi.locales_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling LocalesApi.locales_list"
      end
      # verify the required parameter 'locales_list' is set
      if @api_client.config.client_side_validation && locales_list.nil?
        fail ArgumentError, "Missing the required parameter 'locales_list' when calling LocalesApi.locales_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/locales'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(locales_list) 

      # return_type
      return_type = opts[:return_type] || 'Array<Locale>' 

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
        @api_client.config.logger.debug "API called: LocalesApi#locales_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
