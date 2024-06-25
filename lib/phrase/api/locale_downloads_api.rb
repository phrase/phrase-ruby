require 'cgi'

module Phrase
  class LocaleDownloadsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Initiate async download of a locale
    # Prepare a locale for download in a specific file format.
    # @param project_id [String] Project ID
    # @param locale_id [String] Locale ID
    # @param locale_download_create_parameters [LocaleDownloadCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :if_modified_since Last modified condition, see &lt;a href&#x3D;\&quot;#overview--conditional-get-requests--http-caching\&quot;&gt;Conditional GET requests / HTTP Caching&lt;/a&gt; (optional)
    # @option opts [String] :if_none_match ETag condition, see &lt;a href&#x3D;\&quot;#overview--conditional-get-requests--http-caching\&quot;&gt;Conditional GET requests / HTTP Caching&lt;/a&gt; (optional)
    # @return [LocaleDownload]
    def locale_download_create(project_id, locale_id, locale_download_create_parameters, opts = {})
      data, _status_code, _headers = locale_download_create_with_http_info(project_id, locale_id, locale_download_create_parameters, opts)
      data
    end

    # Initiate async download of a locale
    # Prepare a locale for download in a specific file format.
    # @param project_id [String] Project ID
    # @param locale_id [String] Locale ID
    # @param locale_download_create_parameters [LocaleDownloadCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :if_modified_since Last modified condition, see &lt;a href&#x3D;\&quot;#overview--conditional-get-requests--http-caching\&quot;&gt;Conditional GET requests / HTTP Caching&lt;/a&gt; (optional)
    # @option opts [String] :if_none_match ETag condition, see &lt;a href&#x3D;\&quot;#overview--conditional-get-requests--http-caching\&quot;&gt;Conditional GET requests / HTTP Caching&lt;/a&gt; (optional)
    # @return [Array<(Response<(LocaleDownload)>, Integer, Hash)>] Response<(LocaleDownload)> data, response status code and response headers
    def locale_download_create_with_http_info(project_id, locale_id, locale_download_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocaleDownloadsApi.locale_download_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling LocaleDownloadsApi.locale_download_create"
      end
      # verify the required parameter 'locale_id' is set
      if @api_client.config.client_side_validation && locale_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_id' when calling LocaleDownloadsApi.locale_download_create"
      end
      # verify the required parameter 'locale_download_create_parameters' is set
      if @api_client.config.client_side_validation && locale_download_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'locale_download_create_parameters' when calling LocaleDownloadsApi.locale_download_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/locales/{locale_id}/downloads'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'locale_id' + '}', CGI.escape(locale_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-PhraseApp-OTP'] = opts[:'x_phrase_app_otp'] if !opts[:'x_phrase_app_otp'].nil?
      header_params[:'If-Modified-Since'] = opts[:'if_modified_since'] if !opts[:'if_modified_since'].nil?
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(locale_download_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'LocaleDownload' 

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
        @api_client.config.logger.debug "API called: LocaleDownloadsApi#locale_download_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Show status of an async locale download
    # Show status of already started async locale download. If the download is finished, the download link will be returned.
    # @param project_id [String] Project ID
    # @param locale_id [String] Locale ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :if_modified_since Last modified condition, see &lt;a href&#x3D;\&quot;#overview--conditional-get-requests--http-caching\&quot;&gt;Conditional GET requests / HTTP Caching&lt;/a&gt; (optional)
    # @option opts [String] :if_none_match ETag condition, see &lt;a href&#x3D;\&quot;#overview--conditional-get-requests--http-caching\&quot;&gt;Conditional GET requests / HTTP Caching&lt;/a&gt; (optional)
    # @return [LocaleDownload]
    def locale_download_show(project_id, locale_id, id, opts = {})
      data, _status_code, _headers = locale_download_show_with_http_info(project_id, locale_id, id, opts)
      data
    end

    # Show status of an async locale download
    # Show status of already started async locale download. If the download is finished, the download link will be returned.
    # @param project_id [String] Project ID
    # @param locale_id [String] Locale ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :if_modified_since Last modified condition, see &lt;a href&#x3D;\&quot;#overview--conditional-get-requests--http-caching\&quot;&gt;Conditional GET requests / HTTP Caching&lt;/a&gt; (optional)
    # @option opts [String] :if_none_match ETag condition, see &lt;a href&#x3D;\&quot;#overview--conditional-get-requests--http-caching\&quot;&gt;Conditional GET requests / HTTP Caching&lt;/a&gt; (optional)
    # @return [Array<(Response<(LocaleDownload)>, Integer, Hash)>] Response<(LocaleDownload)> data, response status code and response headers
    def locale_download_show_with_http_info(project_id, locale_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocaleDownloadsApi.locale_download_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling LocaleDownloadsApi.locale_download_show"
      end
      # verify the required parameter 'locale_id' is set
      if @api_client.config.client_side_validation && locale_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_id' when calling LocaleDownloadsApi.locale_download_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocaleDownloadsApi.locale_download_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/locales/{locale_id}/downloads/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'locale_id' + '}', CGI.escape(locale_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-PhraseApp-OTP'] = opts[:'x_phrase_app_otp'] if !opts[:'x_phrase_app_otp'].nil?
      header_params[:'If-Modified-Since'] = opts[:'if_modified_since'] if !opts[:'if_modified_since'].nil?
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'LocaleDownload' 

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
        @api_client.config.logger.debug "API called: LocaleDownloadsApi#locale_download_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
