require 'cgi'

module Phrase
  class TranslationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a translation
    # Create a translation.
    # @param project_id [String] Project ID
    # @param translation_create_parameters [TranslationCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [TranslationDetails]
    def translation_create(project_id, translation_create_parameters, opts = {})
      data, _status_code, _headers = translation_create_with_http_info(project_id, translation_create_parameters, opts)
      data
    end

    # Create a translation
    # Create a translation.
    # @param project_id [String] Project ID
    # @param translation_create_parameters [TranslationCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(TranslationDetails)>, Integer, Hash)>] Response<(TranslationDetails)> data, response status code and response headers
    def translation_create_with_http_info(project_id, translation_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translation_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translation_create"
      end
      # verify the required parameter 'translation_create_parameters' is set
      if @api_client.config.client_side_validation && translation_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'translation_create_parameters' when calling TranslationsApi.translation_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(translation_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'TranslationDetails' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translation_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Exclude a translation from export
    # Set exclude from export flag on an existing translation.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param translation_exclude_parameters [TranslationExcludeParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [TranslationDetails]
    def translation_exclude(project_id, id, translation_exclude_parameters, opts = {})
      data, _status_code, _headers = translation_exclude_with_http_info(project_id, id, translation_exclude_parameters, opts)
      data
    end

    # Exclude a translation from export
    # Set exclude from export flag on an existing translation.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param translation_exclude_parameters [TranslationExcludeParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(TranslationDetails)>, Integer, Hash)>] Response<(TranslationDetails)> data, response status code and response headers
    def translation_exclude_with_http_info(project_id, id, translation_exclude_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translation_exclude ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translation_exclude"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TranslationsApi.translation_exclude"
      end
      # verify the required parameter 'translation_exclude_parameters' is set
      if @api_client.config.client_side_validation && translation_exclude_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'translation_exclude_parameters' when calling TranslationsApi.translation_exclude"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/{id}/exclude'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(translation_exclude_parameters) 

      # return_type
      return_type = opts[:return_type] || 'TranslationDetails' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translation_exclude\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Include a translation
    # Remove exclude from export flag from an existing translation.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param translation_include_parameters [TranslationIncludeParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [TranslationDetails]
    def translation_include(project_id, id, translation_include_parameters, opts = {})
      data, _status_code, _headers = translation_include_with_http_info(project_id, id, translation_include_parameters, opts)
      data
    end

    # Include a translation
    # Remove exclude from export flag from an existing translation.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param translation_include_parameters [TranslationIncludeParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(TranslationDetails)>, Integer, Hash)>] Response<(TranslationDetails)> data, response status code and response headers
    def translation_include_with_http_info(project_id, id, translation_include_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translation_include ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translation_include"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TranslationsApi.translation_include"
      end
      # verify the required parameter 'translation_include_parameters' is set
      if @api_client.config.client_side_validation && translation_include_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'translation_include_parameters' when calling TranslationsApi.translation_include"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/{id}/include'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(translation_include_parameters) 

      # return_type
      return_type = opts[:return_type] || 'TranslationDetails' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translation_include\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Review a translation
    # Mark an existing translation as reviewed.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param translation_review_parameters [TranslationReviewParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [TranslationDetails]
    def translation_review(project_id, id, translation_review_parameters, opts = {})
      data, _status_code, _headers = translation_review_with_http_info(project_id, id, translation_review_parameters, opts)
      data
    end

    # Review a translation
    # Mark an existing translation as reviewed.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param translation_review_parameters [TranslationReviewParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(TranslationDetails)>, Integer, Hash)>] Response<(TranslationDetails)> data, response status code and response headers
    def translation_review_with_http_info(project_id, id, translation_review_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translation_review ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translation_review"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TranslationsApi.translation_review"
      end
      # verify the required parameter 'translation_review_parameters' is set
      if @api_client.config.client_side_validation && translation_review_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'translation_review_parameters' when calling TranslationsApi.translation_review"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/{id}/review'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(translation_review_parameters) 

      # return_type
      return_type = opts[:return_type] || 'TranslationDetails' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translation_review\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single translation
    # Get details on a single translation.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [TranslationDetails]
    def translation_show(project_id, id, opts = {})
      data, _status_code, _headers = translation_show_with_http_info(project_id, id, opts)
      data
    end

    # Get a single translation
    # Get details on a single translation.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(TranslationDetails)>, Integer, Hash)>] Response<(TranslationDetails)> data, response status code and response headers
    def translation_show_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translation_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translation_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TranslationsApi.translation_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'TranslationDetails' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translation_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Unreview a translation
    # Mark a reviewed translation as translated.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param translation_unreview_parameters [TranslationUnreviewParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [TranslationDetails]
    def translation_unreview(project_id, id, translation_unreview_parameters, opts = {})
      data, _status_code, _headers = translation_unreview_with_http_info(project_id, id, translation_unreview_parameters, opts)
      data
    end

    # Unreview a translation
    # Mark a reviewed translation as translated.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param translation_unreview_parameters [TranslationUnreviewParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(TranslationDetails)>, Integer, Hash)>] Response<(TranslationDetails)> data, response status code and response headers
    def translation_unreview_with_http_info(project_id, id, translation_unreview_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translation_unreview ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translation_unreview"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TranslationsApi.translation_unreview"
      end
      # verify the required parameter 'translation_unreview_parameters' is set
      if @api_client.config.client_side_validation && translation_unreview_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'translation_unreview_parameters' when calling TranslationsApi.translation_unreview"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/{id}/unreview'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(translation_unreview_parameters) 

      # return_type
      return_type = opts[:return_type] || 'TranslationDetails' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translation_unreview\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Mark a translation as unverified
    # Mark an existing translation as unverified.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param translation_unverify_parameters [TranslationUnverifyParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [TranslationDetails]
    def translation_unverify(project_id, id, translation_unverify_parameters, opts = {})
      data, _status_code, _headers = translation_unverify_with_http_info(project_id, id, translation_unverify_parameters, opts)
      data
    end

    # Mark a translation as unverified
    # Mark an existing translation as unverified.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param translation_unverify_parameters [TranslationUnverifyParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(TranslationDetails)>, Integer, Hash)>] Response<(TranslationDetails)> data, response status code and response headers
    def translation_unverify_with_http_info(project_id, id, translation_unverify_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translation_unverify ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translation_unverify"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TranslationsApi.translation_unverify"
      end
      # verify the required parameter 'translation_unverify_parameters' is set
      if @api_client.config.client_side_validation && translation_unverify_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'translation_unverify_parameters' when calling TranslationsApi.translation_unverify"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/{id}/unverify'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(translation_unverify_parameters) 

      # return_type
      return_type = opts[:return_type] || 'TranslationDetails' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translation_unverify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a translation
    # Update an existing translation.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param translation_update_parameters [TranslationUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [TranslationDetails]
    def translation_update(project_id, id, translation_update_parameters, opts = {})
      data, _status_code, _headers = translation_update_with_http_info(project_id, id, translation_update_parameters, opts)
      data
    end

    # Update a translation
    # Update an existing translation.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param translation_update_parameters [TranslationUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(TranslationDetails)>, Integer, Hash)>] Response<(TranslationDetails)> data, response status code and response headers
    def translation_update_with_http_info(project_id, id, translation_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translation_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translation_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TranslationsApi.translation_update"
      end
      # verify the required parameter 'translation_update_parameters' is set
      if @api_client.config.client_side_validation && translation_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'translation_update_parameters' when calling TranslationsApi.translation_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(translation_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'TranslationDetails' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translation_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Verify a translation
    # Verify an existing translation.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param translation_verify_parameters [TranslationVerifyParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [TranslationDetails]
    def translation_verify(project_id, id, translation_verify_parameters, opts = {})
      data, _status_code, _headers = translation_verify_with_http_info(project_id, id, translation_verify_parameters, opts)
      data
    end

    # Verify a translation
    # Verify an existing translation.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param translation_verify_parameters [TranslationVerifyParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(TranslationDetails)>, Integer, Hash)>] Response<(TranslationDetails)> data, response status code and response headers
    def translation_verify_with_http_info(project_id, id, translation_verify_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translation_verify ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translation_verify"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TranslationsApi.translation_verify"
      end
      # verify the required parameter 'translation_verify_parameters' is set
      if @api_client.config.client_side_validation && translation_verify_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'translation_verify_parameters' when calling TranslationsApi.translation_verify"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/{id}/verify'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(translation_verify_parameters) 

      # return_type
      return_type = opts[:return_type] || 'TranslationDetails' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translation_verify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List translations by key
    # List translations for a specific key.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :sort Sort criteria. Can be one of: key_name, created_at, updated_at.
    # @option opts [String] :order Order direction. Can be one of: asc, desc.
    # @option opts [String] :q Specify a query to find translations by content (including wildcards).  The following qualifiers are supported in the query:  * &#x60;id:translation_id,...&#x60; for queries on a comma-separated list of ids * &#x60;unverified:{true|false}&#x60; for verification status * &#x60;tags:XYZ&#x60; for tags on the translation * &#x60;excluded:{true|false}&#x60; for exclusion status * &#x60;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&#x60; for date range queries  Find more examples [here](/en/api/strings/usage-examples). 
    # @return [Array<Translation>]
    def translations_by_key(project_id, key_id, opts = {})
      data, _status_code, _headers = translations_by_key_with_http_info(project_id, key_id, opts)
      data
    end

    # List translations by key
    # List translations for a specific key.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :sort Sort criteria. Can be one of: key_name, created_at, updated_at.
    # @option opts [String] :order Order direction. Can be one of: asc, desc.
    # @option opts [String] :q Specify a query to find translations by content (including wildcards).  The following qualifiers are supported in the query:  * &#x60;id:translation_id,...&#x60; for queries on a comma-separated list of ids * &#x60;unverified:{true|false}&#x60; for verification status * &#x60;tags:XYZ&#x60; for tags on the translation * &#x60;excluded:{true|false}&#x60; for exclusion status * &#x60;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&#x60; for date range queries  Find more examples [here](/en/api/strings/usage-examples). 
    # @return [Array<(Response<(Array<Translation>)>, Integer, Hash)>] Response<(Array<Translation>)> data, response status code and response headers
    def translations_by_key_with_http_info(project_id, key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translations_by_key ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translations_by_key"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling TranslationsApi.translations_by_key"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/translations'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?

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
      return_type = opts[:return_type] || 'Array<Translation>' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translations_by_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List translations by locale
    # List translations for a specific locale. If you want to download all translations for one locale we recommend to use the `locales#download` endpoint. 
    # @param project_id [String] Project ID
    # @param locale_id [String] Locale ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :sort Sort criteria. Can be one of: key_name, created_at, updated_at.
    # @option opts [String] :order Order direction. Can be one of: asc, desc.
    # @option opts [String] :q Specify a query to find translations by content (including wildcards).  *Note: Search is limited to 10000 results and may not include recently updated data (depending on the project size).*  The following qualifiers are supported in the query: - &#x60;id:translation_id,...&#x60; for queries on a comma-separated list of ids - &#x60;unverified:{true|false}&#x60; for verification status - &#x60;tags:XYZ&#x60; for tags on the translation - &#x60;excluded:{true|false}&#x60; for exclusion status - &#x60;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&#x60; for date range queries  Find more examples [here](/en/api/strings/usage-examples). 
    # @return [Array<Translation>]
    def translations_by_locale(project_id, locale_id, opts = {})
      data, _status_code, _headers = translations_by_locale_with_http_info(project_id, locale_id, opts)
      data
    end

    # List translations by locale
    # List translations for a specific locale. If you want to download all translations for one locale we recommend to use the &#x60;locales#download&#x60; endpoint. 
    # @param project_id [String] Project ID
    # @param locale_id [String] Locale ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :sort Sort criteria. Can be one of: key_name, created_at, updated_at.
    # @option opts [String] :order Order direction. Can be one of: asc, desc.
    # @option opts [String] :q Specify a query to find translations by content (including wildcards).  *Note: Search is limited to 10000 results and may not include recently updated data (depending on the project size).*  The following qualifiers are supported in the query: - &#x60;id:translation_id,...&#x60; for queries on a comma-separated list of ids - &#x60;unverified:{true|false}&#x60; for verification status - &#x60;tags:XYZ&#x60; for tags on the translation - &#x60;excluded:{true|false}&#x60; for exclusion status - &#x60;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&#x60; for date range queries  Find more examples [here](/en/api/strings/usage-examples). 
    # @return [Array<(Response<(Array<Translation>)>, Integer, Hash)>] Response<(Array<Translation>)> data, response status code and response headers
    def translations_by_locale_with_http_info(project_id, locale_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translations_by_locale ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translations_by_locale"
      end
      # verify the required parameter 'locale_id' is set
      if @api_client.config.client_side_validation && locale_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_id' when calling TranslationsApi.translations_by_locale"
      end
      # resource path
      local_var_path = '/projects/{project_id}/locales/{locale_id}/translations'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'locale_id' + '}', CGI.escape(locale_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?

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
      return_type = opts[:return_type] || 'Array<Translation>' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translations_by_locale\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Exclude translations by query
    # Exclude translations matching query from locale export.
    # @param project_id [String] Project ID
    # @param translations_exclude_parameters [TranslationsExcludeParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [AffectedCount]
    def translations_exclude_collection(project_id, translations_exclude_parameters, opts = {})
      data, _status_code, _headers = translations_exclude_collection_with_http_info(project_id, translations_exclude_parameters, opts)
      data
    end

    # Exclude translations by query
    # Exclude translations matching query from locale export.
    # @param project_id [String] Project ID
    # @param translations_exclude_parameters [TranslationsExcludeParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(AffectedCount)>, Integer, Hash)>] Response<(AffectedCount)> data, response status code and response headers
    def translations_exclude_collection_with_http_info(project_id, translations_exclude_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translations_exclude_collection ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translations_exclude_collection"
      end
      # verify the required parameter 'translations_exclude_parameters' is set
      if @api_client.config.client_side_validation && translations_exclude_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'translations_exclude_parameters' when calling TranslationsApi.translations_exclude_collection"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/exclude'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(translations_exclude_parameters) 

      # return_type
      return_type = opts[:return_type] || 'AffectedCount' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translations_exclude_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Include translations by query
    # Include translations matching query in locale export.
    # @param project_id [String] Project ID
    # @param translations_include_parameters [TranslationsIncludeParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [AffectedCount]
    def translations_include_collection(project_id, translations_include_parameters, opts = {})
      data, _status_code, _headers = translations_include_collection_with_http_info(project_id, translations_include_parameters, opts)
      data
    end

    # Include translations by query
    # Include translations matching query in locale export.
    # @param project_id [String] Project ID
    # @param translations_include_parameters [TranslationsIncludeParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(AffectedCount)>, Integer, Hash)>] Response<(AffectedCount)> data, response status code and response headers
    def translations_include_collection_with_http_info(project_id, translations_include_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translations_include_collection ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translations_include_collection"
      end
      # verify the required parameter 'translations_include_parameters' is set
      if @api_client.config.client_side_validation && translations_include_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'translations_include_parameters' when calling TranslationsApi.translations_include_collection"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/include'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(translations_include_parameters) 

      # return_type
      return_type = opts[:return_type] || 'AffectedCount' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translations_include_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List all translations
    # List translations for the given project. If you want to download all translations for one locale we recommend to use the `locales#download` endpoint. 
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :if_modified_since Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
    # @option opts [String] :if_none_match ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :sort Sort criteria. Can be one of: key_name, created_at, updated_at.
    # @option opts [String] :order Order direction. Can be one of: asc, desc.
    # @option opts [String] :q Specify a query to find translations by content (including wildcards).  *Note: Search is limited to 10000 results and may not include recently updated data (depending on the project size).*  The following qualifiers are supported in the query:  * &#x60;id:translation_id,...&#x60; for queries on a comma-separated list of ids * &#x60;tags:XYZ&#x60; for tags on the translation * &#x60;unverified:{true|false}&#x60; for verification status * &#x60;excluded:{true|false}&#x60; for exclusion status * &#x60;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&#x60; for date range queries * &#x60;reviewed_after:2013-02-21T00:00:00Z&#x60; for fetching translations that were reviewed after the given timestamp  Find more examples [here](/en/api/strings/usage-examples). 
    # @return [Array<Translation>]
    def translations_list(project_id, opts = {})
      data, _status_code, _headers = translations_list_with_http_info(project_id, opts)
      data
    end

    # List all translations
    # List translations for the given project. If you want to download all translations for one locale we recommend to use the &#x60;locales#download&#x60; endpoint. 
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :if_modified_since Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
    # @option opts [String] :if_none_match ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :sort Sort criteria. Can be one of: key_name, created_at, updated_at.
    # @option opts [String] :order Order direction. Can be one of: asc, desc.
    # @option opts [String] :q Specify a query to find translations by content (including wildcards).  *Note: Search is limited to 10000 results and may not include recently updated data (depending on the project size).*  The following qualifiers are supported in the query:  * &#x60;id:translation_id,...&#x60; for queries on a comma-separated list of ids * &#x60;tags:XYZ&#x60; for tags on the translation * &#x60;unverified:{true|false}&#x60; for verification status * &#x60;excluded:{true|false}&#x60; for exclusion status * &#x60;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&#x60; for date range queries * &#x60;reviewed_after:2013-02-21T00:00:00Z&#x60; for fetching translations that were reviewed after the given timestamp  Find more examples [here](/en/api/strings/usage-examples). 
    # @return [Array<(Response<(Array<Translation>)>, Integer, Hash)>] Response<(Array<Translation>)> data, response status code and response headers
    def translations_list_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translations_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translations_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?

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
      return_type = opts[:return_type] || 'Array<Translation>' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translations_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Review translations selected by query
    # Review translations matching query.
    # @param project_id [String] Project ID
    # @param translations_review_parameters [TranslationsReviewParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [AffectedCount]
    def translations_review_collection(project_id, translations_review_parameters, opts = {})
      data, _status_code, _headers = translations_review_collection_with_http_info(project_id, translations_review_parameters, opts)
      data
    end

    # Review translations selected by query
    # Review translations matching query.
    # @param project_id [String] Project ID
    # @param translations_review_parameters [TranslationsReviewParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(AffectedCount)>, Integer, Hash)>] Response<(AffectedCount)> data, response status code and response headers
    def translations_review_collection_with_http_info(project_id, translations_review_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translations_review_collection ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translations_review_collection"
      end
      # verify the required parameter 'translations_review_parameters' is set
      if @api_client.config.client_side_validation && translations_review_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'translations_review_parameters' when calling TranslationsApi.translations_review_collection"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/review'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(translations_review_parameters) 

      # return_type
      return_type = opts[:return_type] || 'AffectedCount' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translations_review_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Search translations
    # Search translations for the given project. Provides the same search interface as `translations#index` but allows POST requests to avoid limitations imposed by GET requests. If you want to download all translations for one locale we recommend to use the `locales#download` endpoint.
    # @param project_id [String] Project ID
    # @param translations_search_parameters [TranslationsSearchParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @return [Array<Translation>]
    def translations_search(project_id, translations_search_parameters, opts = {})
      data, _status_code, _headers = translations_search_with_http_info(project_id, translations_search_parameters, opts)
      data
    end

    # Search translations
    # Search translations for the given project. Provides the same search interface as &#x60;translations#index&#x60; but allows POST requests to avoid limitations imposed by GET requests. If you want to download all translations for one locale we recommend to use the &#x60;locales#download&#x60; endpoint.
    # @param project_id [String] Project ID
    # @param translations_search_parameters [TranslationsSearchParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @return [Array<(Response<(Array<Translation>)>, Integer, Hash)>] Response<(Array<Translation>)> data, response status code and response headers
    def translations_search_with_http_info(project_id, translations_search_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translations_search ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translations_search"
      end
      # verify the required parameter 'translations_search_parameters' is set
      if @api_client.config.client_side_validation && translations_search_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'translations_search_parameters' when calling TranslationsApi.translations_search"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/search'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(translations_search_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Array<Translation>' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translations_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Unreview translations selected by query
    # Unreview translations matching query.
    # @param project_id [String] Project ID
    # @param translations_unreview_parameters [TranslationsUnreviewParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [AffectedCount]
    def translations_unreview_collection(project_id, translations_unreview_parameters, opts = {})
      data, _status_code, _headers = translations_unreview_collection_with_http_info(project_id, translations_unreview_parameters, opts)
      data
    end

    # Unreview translations selected by query
    # Unreview translations matching query.
    # @param project_id [String] Project ID
    # @param translations_unreview_parameters [TranslationsUnreviewParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(AffectedCount)>, Integer, Hash)>] Response<(AffectedCount)> data, response status code and response headers
    def translations_unreview_collection_with_http_info(project_id, translations_unreview_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translations_unreview_collection ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translations_unreview_collection"
      end
      # verify the required parameter 'translations_unreview_parameters' is set
      if @api_client.config.client_side_validation && translations_unreview_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'translations_unreview_parameters' when calling TranslationsApi.translations_unreview_collection"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/unreview'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(translations_unreview_parameters) 

      # return_type
      return_type = opts[:return_type] || 'AffectedCount' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translations_unreview_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Unverify translations by query
    # Mark translations matching query as unverified.
    # @param project_id [String] Project ID
    # @param translations_unverify_parameters [TranslationsUnverifyParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [AffectedCount]
    def translations_unverify_collection(project_id, translations_unverify_parameters, opts = {})
      data, _status_code, _headers = translations_unverify_collection_with_http_info(project_id, translations_unverify_parameters, opts)
      data
    end

    # Unverify translations by query
    # Mark translations matching query as unverified.
    # @param project_id [String] Project ID
    # @param translations_unverify_parameters [TranslationsUnverifyParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(AffectedCount)>, Integer, Hash)>] Response<(AffectedCount)> data, response status code and response headers
    def translations_unverify_collection_with_http_info(project_id, translations_unverify_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translations_unverify_collection ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translations_unverify_collection"
      end
      # verify the required parameter 'translations_unverify_parameters' is set
      if @api_client.config.client_side_validation && translations_unverify_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'translations_unverify_parameters' when calling TranslationsApi.translations_unverify_collection"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/unverify'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(translations_unverify_parameters) 

      # return_type
      return_type = opts[:return_type] || 'AffectedCount' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translations_unverify_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Verify translations by query
    # Verify translations matching query.
    # @param project_id [String] Project ID
    # @param translations_verify_parameters [TranslationsVerifyParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [AffectedCount]
    def translations_verify_collection(project_id, translations_verify_parameters, opts = {})
      data, _status_code, _headers = translations_verify_collection_with_http_info(project_id, translations_verify_parameters, opts)
      data
    end

    # Verify translations by query
    # Verify translations matching query.
    # @param project_id [String] Project ID
    # @param translations_verify_parameters [TranslationsVerifyParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(AffectedCount)>, Integer, Hash)>] Response<(AffectedCount)> data, response status code and response headers
    def translations_verify_collection_with_http_info(project_id, translations_verify_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TranslationsApi.translations_verify_collection ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling TranslationsApi.translations_verify_collection"
      end
      # verify the required parameter 'translations_verify_parameters' is set
      if @api_client.config.client_side_validation && translations_verify_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'translations_verify_parameters' when calling TranslationsApi.translations_verify_collection"
      end
      # resource path
      local_var_path = '/projects/{project_id}/translations/verify'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(translations_verify_parameters) 

      # return_type
      return_type = opts[:return_type] || 'AffectedCount' 

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
        @api_client.config.logger.debug "API called: TranslationsApi#translations_verify_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
