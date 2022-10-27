require 'cgi'

module Phrase
  class LocalesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List locales used in account
    # List all locales unique by locale code used across all projects within an account.
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
    # @return [Array<LocalePreview1>]
    def account_locales(id, opts = {})
      data, _status_code, _headers = account_locales_with_http_info(id, opts)
      data
    end

    # List locales used in account
    # List all locales unique by locale code used across all projects within an account.
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
    # @return [Array<(Response<(Array<LocalePreview1>)>, Integer, Hash)>] Response<(Array<LocalePreview1>)> data, response status code and response headers
    def account_locales_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalesApi.account_locales ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocalesApi.account_locales"
      end
      # resource path
      local_var_path = '/accounts/{id}/locales'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Array<LocalePreview1>' 

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
        @api_client.config.logger.debug "API called: LocalesApi#account_locales\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Create a locale
    # Create a new locale.
    # @param project_id [String] Project ID
    # @param locale_create_parameters [LocaleCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [LocaleDetails]
    def locale_create(project_id, locale_create_parameters, opts = {})
      data, _status_code, _headers = locale_create_with_http_info(project_id, locale_create_parameters, opts)
      data
    end

    # Create a locale
    # Create a new locale.
    # @param project_id [String] Project ID
    # @param locale_create_parameters [LocaleCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(LocaleDetails)>, Integer, Hash)>] Response<(LocaleDetails)> data, response status code and response headers
    def locale_create_with_http_info(project_id, locale_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalesApi.locale_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling LocalesApi.locale_create"
      end
      # verify the required parameter 'locale_create_parameters' is set
      if @api_client.config.client_side_validation && locale_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'locale_create_parameters' when calling LocalesApi.locale_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/locales'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(locale_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'LocaleDetails' 

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
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [nil]
    def locale_delete(project_id, id, opts = {})
      data, _status_code, _headers = locale_delete_with_http_info(project_id, id, opts)
      data
    end

    # Delete a locale
    # Delete an existing locale.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def locale_delete_with_http_info(project_id, id, opts = {})
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
      # resource path
      local_var_path = '/projects/{project_id}/locales/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: LocalesApi#locale_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Download a locale
    # Download a locale in a specific file format.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :file_format File format name. See the &lt;a href&#x3D;\&quot;https://support.phrase.com/hc/en-us/articles/5784070560412\&quot;&gt;format guide&lt;/a&gt; for all supported file formats.
    # @option opts [String] :tags Limit results to keys tagged with a list of comma separated tag names.
    # @option opts [String] :tag Limit download to tagged keys. This parameter is deprecated. Please use the \&quot;tags\&quot; parameter instead
    # @option opts [Boolean] :include_empty_translations Indicates whether keys without translations should be included in the output as well.
    # @option opts [Boolean] :exclude_empty_zero_forms Indicates whether zero forms should be included when empty in pluralized keys.
    # @option opts [Boolean] :include_translated_keys Include translated keys in the locale file. Use in combination with include_empty_translations to obtain only untranslated keys.
    # @option opts [Boolean] :keep_notranslate_tags Indicates whether [NOTRANSLATE] tags should be kept.
    # @option opts [Boolean] :convert_emoji This option is obsolete. Projects that were created on or after Nov 29th 2019 or that did not contain emoji by then will not require this flag any longer since emoji are now supported natively.
    # @option opts [Object] :format_options Additional formatting and render options. See the &lt;a href&#x3D;\&quot;https://support.phrase.com/hc/en-us/articles/5784070560412\&quot;&gt;format guide&lt;/a&gt; for a list of options available for each format. Specify format options like this: &lt;code&gt;...&amp;format_options[foo]&#x3D;bar&lt;/code&gt;
    # @option opts [String] :encoding Enforces a specific encoding on the file contents. Valid options are \&quot;UTF-8\&quot;, \&quot;UTF-16\&quot; and \&quot;ISO-8859-1\&quot;.
    # @option opts [Boolean] :skip_unverified_translations Indicates whether the locale file should skip all unverified translations. This parameter is deprecated and should be replaced with &lt;code&gt;include_unverified_translations&lt;/code&gt;.
    # @option opts [Boolean] :include_unverified_translations if set to false unverified translations are excluded
    # @option opts [Boolean] :use_last_reviewed_version If set to true the last reviewed version of a translation is used. This is only available if the review workflow (currently in beta) is enabled for the project.
    # @option opts [String] :fallback_locale_id If a key has no translation in the locale being downloaded the translation in the fallback locale will be used. Provide the public ID of the locale that should be used as the fallback. Requires include_empty_translations to be set to &lt;code&gt;true&lt;/code&gt;.
    # @option opts [String] :source_locale_id Provides the source language of a corresponding job as the source language of the generated locale file. This parameter will be ignored unless used in combination with a &lt;code&gt;tag&lt;/code&gt; parameter indicating a specific job.
    # @return [File]
    def locale_download(project_id, id, opts = {})
      data, _status_code, _headers = locale_download_with_http_info(project_id, id, opts)
      data
    end

    # Download a locale
    # Download a locale in a specific file format.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :file_format File format name. See the &lt;a href&#x3D;\&quot;https://support.phrase.com/hc/en-us/articles/5784070560412\&quot;&gt;format guide&lt;/a&gt; for all supported file formats.
    # @option opts [String] :tags Limit results to keys tagged with a list of comma separated tag names.
    # @option opts [String] :tag Limit download to tagged keys. This parameter is deprecated. Please use the \&quot;tags\&quot; parameter instead
    # @option opts [Boolean] :include_empty_translations Indicates whether keys without translations should be included in the output as well.
    # @option opts [Boolean] :exclude_empty_zero_forms Indicates whether zero forms should be included when empty in pluralized keys.
    # @option opts [Boolean] :include_translated_keys Include translated keys in the locale file. Use in combination with include_empty_translations to obtain only untranslated keys.
    # @option opts [Boolean] :keep_notranslate_tags Indicates whether [NOTRANSLATE] tags should be kept.
    # @option opts [Boolean] :convert_emoji This option is obsolete. Projects that were created on or after Nov 29th 2019 or that did not contain emoji by then will not require this flag any longer since emoji are now supported natively.
    # @option opts [Object] :format_options Additional formatting and render options. See the &lt;a href&#x3D;\&quot;https://support.phrase.com/hc/en-us/articles/5784070560412\&quot;&gt;format guide&lt;/a&gt; for a list of options available for each format. Specify format options like this: &lt;code&gt;...&amp;format_options[foo]&#x3D;bar&lt;/code&gt;
    # @option opts [String] :encoding Enforces a specific encoding on the file contents. Valid options are \&quot;UTF-8\&quot;, \&quot;UTF-16\&quot; and \&quot;ISO-8859-1\&quot;.
    # @option opts [Boolean] :skip_unverified_translations Indicates whether the locale file should skip all unverified translations. This parameter is deprecated and should be replaced with &lt;code&gt;include_unverified_translations&lt;/code&gt;.
    # @option opts [Boolean] :include_unverified_translations if set to false unverified translations are excluded
    # @option opts [Boolean] :use_last_reviewed_version If set to true the last reviewed version of a translation is used. This is only available if the review workflow (currently in beta) is enabled for the project.
    # @option opts [String] :fallback_locale_id If a key has no translation in the locale being downloaded the translation in the fallback locale will be used. Provide the public ID of the locale that should be used as the fallback. Requires include_empty_translations to be set to &lt;code&gt;true&lt;/code&gt;.
    # @option opts [String] :source_locale_id Provides the source language of a corresponding job as the source language of the generated locale file. This parameter will be ignored unless used in combination with a &lt;code&gt;tag&lt;/code&gt; parameter indicating a specific job.
    # @return [Array<(Response<(File)>, Integer, Hash)>] Response<(File)> data, response status code and response headers
    def locale_download_with_http_info(project_id, id, opts = {})
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
      # resource path
      local_var_path = '/projects/{project_id}/locales/{id}/download'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?
      query_params[:'file_format'] = opts[:'file_format'] if !opts[:'file_format'].nil?
      query_params[:'tags'] = opts[:'tags'] if !opts[:'tags'].nil?
      query_params[:'tag'] = opts[:'tag'] if !opts[:'tag'].nil?
      query_params[:'include_empty_translations'] = opts[:'include_empty_translations'] if !opts[:'include_empty_translations'].nil?
      query_params[:'exclude_empty_zero_forms'] = opts[:'exclude_empty_zero_forms'] if !opts[:'exclude_empty_zero_forms'].nil?
      query_params[:'include_translated_keys'] = opts[:'include_translated_keys'] if !opts[:'include_translated_keys'].nil?
      query_params[:'keep_notranslate_tags'] = opts[:'keep_notranslate_tags'] if !opts[:'keep_notranslate_tags'].nil?
      query_params[:'convert_emoji'] = opts[:'convert_emoji'] if !opts[:'convert_emoji'].nil?
      query_params[:'format_options'] = opts[:'format_options'] if !opts[:'format_options'].nil?
      query_params[:'encoding'] = opts[:'encoding'] if !opts[:'encoding'].nil?
      query_params[:'skip_unverified_translations'] = opts[:'skip_unverified_translations'] if !opts[:'skip_unverified_translations'].nil?
      query_params[:'include_unverified_translations'] = opts[:'include_unverified_translations'] if !opts[:'include_unverified_translations'].nil?
      query_params[:'use_last_reviewed_version'] = opts[:'use_last_reviewed_version'] if !opts[:'use_last_reviewed_version'].nil?
      query_params[:'fallback_locale_id'] = opts[:'fallback_locale_id'] if !opts[:'fallback_locale_id'].nil?
      query_params[:'source_locale_id'] = opts[:'source_locale_id'] if !opts[:'source_locale_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*'])
      header_params[:'X-PhraseApp-OTP'] = opts[:'x_phrase_app_otp'] if !opts[:'x_phrase_app_otp'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'File' 

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
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [LocaleDetails]
    def locale_show(project_id, id, opts = {})
      data, _status_code, _headers = locale_show_with_http_info(project_id, id, opts)
      data
    end

    # Get a single locale
    # Get details on a single locale for a given project.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(LocaleDetails)>, Integer, Hash)>] Response<(LocaleDetails)> data, response status code and response headers
    def locale_show_with_http_info(project_id, id, opts = {})
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
      # resource path
      local_var_path = '/projects/{project_id}/locales/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'LocaleDetails' 

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
    # @param locale_update_parameters [LocaleUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [LocaleDetails]
    def locale_update(project_id, id, locale_update_parameters, opts = {})
      data, _status_code, _headers = locale_update_with_http_info(project_id, id, locale_update_parameters, opts)
      data
    end

    # Update a locale
    # Update an existing locale.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param locale_update_parameters [LocaleUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(LocaleDetails)>, Integer, Hash)>] Response<(LocaleDetails)> data, response status code and response headers
    def locale_update_with_http_info(project_id, id, locale_update_parameters, opts = {})
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
      # verify the required parameter 'locale_update_parameters' is set
      if @api_client.config.client_side_validation && locale_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'locale_update_parameters' when calling LocalesApi.locale_update"
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
      post_body = opts[:body] || @api_client.object_to_http_body(locale_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'LocaleDetails' 

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
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
    # @option opts [String] :sort_by Sort locales. Valid options are \&quot;name_asc\&quot;, \&quot;name_desc\&quot;, \&quot;default_asc\&quot;, \&quot;default_desc\&quot;.
    # @option opts [String] :branch specify the branch to use
    # @return [Array<Locale>]
    def locales_list(project_id, opts = {})
      data, _status_code, _headers = locales_list_with_http_info(project_id, opts)
      data
    end

    # List locales
    # List all locales for the given project.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
    # @option opts [String] :sort_by Sort locales. Valid options are \&quot;name_asc\&quot;, \&quot;name_desc\&quot;, \&quot;default_asc\&quot;, \&quot;default_desc\&quot;.
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(Array<Locale>)>, Integer, Hash)>] Response<(Array<Locale>)> data, response status code and response headers
    def locales_list_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalesApi.locales_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling LocalesApi.locales_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/locales'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
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
