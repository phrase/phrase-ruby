require 'cgi'

module Phrase
  class PreTranslationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a pre-translation job
    # Triggers a pre-translation job for a resource within a project, addressed by `translatable_type` (`locale`, `job`, `translation_key`, or `upload`) and `translatable_id` (its ID).  Enqueues machine translation using the project's configured MT engine. 
    # @param project_id [String] Project ID
    # @param pre_translation_create_parameters [PreTranslationCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [PreTranslation]
    def pre_translation_create(project_id, pre_translation_create_parameters, opts = {})
      data, _status_code, _headers = pre_translation_create_with_http_info(project_id, pre_translation_create_parameters, opts)
      data
    end

    # Create a pre-translation job
    # Triggers a pre-translation job for a resource within a project, addressed by &#x60;translatable_type&#x60; (&#x60;locale&#x60;, &#x60;job&#x60;, &#x60;translation_key&#x60;, or &#x60;upload&#x60;) and &#x60;translatable_id&#x60; (its ID).  Enqueues machine translation using the project&#39;s configured MT engine. 
    # @param project_id [String] Project ID
    # @param pre_translation_create_parameters [PreTranslationCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(PreTranslation)>, Integer, Hash)>] Response<(PreTranslation)> data, response status code and response headers
    def pre_translation_create_with_http_info(project_id, pre_translation_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PreTranslationsApi.pre_translation_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling PreTranslationsApi.pre_translation_create"
      end
      # verify the required parameter 'pre_translation_create_parameters' is set
      if @api_client.config.client_side_validation && pre_translation_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'pre_translation_create_parameters' when calling PreTranslationsApi.pre_translation_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/pre_translations'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(pre_translation_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'PreTranslation' 

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
        @api_client.config.logger.debug "API called: PreTranslationsApi#pre_translation_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single pre-translation job
    # Returns a single pre-translation job identified by its ID. 
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :if_modified_since Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
    # @option opts [String] :if_none_match ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
    # @return [PreTranslation]
    def pre_translation_show(project_id, id, opts = {})
      data, _status_code, _headers = pre_translation_show_with_http_info(project_id, id, opts)
      data
    end

    # Get a single pre-translation job
    # Returns a single pre-translation job identified by its ID. 
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :if_modified_since Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
    # @option opts [String] :if_none_match ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
    # @return [Array<(Response<(PreTranslation)>, Integer, Hash)>] Response<(PreTranslation)> data, response status code and response headers
    def pre_translation_show_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PreTranslationsApi.pre_translation_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling PreTranslationsApi.pre_translation_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PreTranslationsApi.pre_translation_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/pre_translations/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'PreTranslation' 

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
        @api_client.config.logger.debug "API called: PreTranslationsApi#pre_translation_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List pre-translation jobs
    # Returns all pre-translation jobs scoped to a project, ordered by creation date descending. 
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :if_modified_since Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
    # @option opts [String] :if_none_match ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @return [Array<PreTranslation>]
    def pre_translations_list(project_id, opts = {})
      data, _status_code, _headers = pre_translations_list_with_http_info(project_id, opts)
      data
    end

    # List pre-translation jobs
    # Returns all pre-translation jobs scoped to a project, ordered by creation date descending. 
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :if_modified_since Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
    # @option opts [String] :if_none_match ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @return [Array<(Response<(Array<PreTranslation>)>, Integer, Hash)>] Response<(Array<PreTranslation>)> data, response status code and response headers
    def pre_translations_list_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PreTranslationsApi.pre_translations_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling PreTranslationsApi.pre_translations_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/pre_translations'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

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
      return_type = opts[:return_type] || 'Array<PreTranslation>' 

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
        @api_client.config.logger.debug "API called: PreTranslationsApi#pre_translations_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
