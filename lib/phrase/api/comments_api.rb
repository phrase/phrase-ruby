require 'cgi'

module Phrase
  class CommentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a comment
    # Create a new comment for a key.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_create_parameters [CommentCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :message specify the message for the comment
    # @option opts [Array<String>] :locale_ids specify the locales for the comment
    # @return [Comment]
    def comment_create(project_id, key_id, comment_create_parameters, opts = {})
      data, _status_code, _headers = comment_create_with_http_info(project_id, key_id, comment_create_parameters, opts)
      data
    end

    # Create a comment
    # Create a new comment for a key.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_create_parameters [CommentCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :message specify the message for the comment
    # @option opts [Array<String>] :locale_ids specify the locales for the comment
    # @return [Array<(Response<(Comment)>, Integer, Hash)>] Response<(Comment)> data, response status code and response headers
    def comment_create_with_http_info(project_id, key_id, comment_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentsApi.comment_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentsApi.comment_create"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentsApi.comment_create"
      end
      # verify the required parameter 'comment_create_parameters' is set
      if @api_client.config.client_side_validation && comment_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'comment_create_parameters' when calling CommentsApi.comment_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'message'] = opts[:'message'] if !opts[:'message'].nil?
      query_params[:'locale_ids'] = @api_client.build_collection_param(opts[:'locale_ids'], :multi) if !opts[:'locale_ids'].nil?

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
      post_body = opts[:body] || @api_client.object_to_http_body(comment_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Comment' 

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
        @api_client.config.logger.debug "API called: CommentsApi#comment_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a comment
    # Delete an existing comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [nil]
    def comment_delete(project_id, key_id, id, opts = {})
      data, _status_code, _headers = comment_delete_with_http_info(project_id, key_id, id, opts)
      data
    end

    # Delete a comment
    # Delete an existing comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def comment_delete_with_http_info(project_id, key_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentsApi.comment_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentsApi.comment_delete"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentsApi.comment_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CommentsApi.comment_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: CommentsApi#comment_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Check if comment is read
    # Check if comment was marked as read. Returns 204 if read, 404 if unread.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [nil]
    def comment_mark_check(project_id, key_id, id, opts = {})
      data, _status_code, _headers = comment_mark_check_with_http_info(project_id, key_id, id, opts)
      data
    end

    # Check if comment is read
    # Check if comment was marked as read. Returns 204 if read, 404 if unread.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def comment_mark_check_with_http_info(project_id, key_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentsApi.comment_mark_check ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentsApi.comment_mark_check"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentsApi.comment_mark_check"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CommentsApi.comment_mark_check"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{id}/read'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommentsApi#comment_mark_check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Mark a comment as read
    # Mark a comment as read.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param id [String] ID
    # @param comment_mark_read_parameters [CommentMarkReadParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def comment_mark_read(project_id, key_id, id, comment_mark_read_parameters, opts = {})
      data, _status_code, _headers = comment_mark_read_with_http_info(project_id, key_id, id, comment_mark_read_parameters, opts)
      data
    end

    # Mark a comment as read
    # Mark a comment as read.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param id [String] ID
    # @param comment_mark_read_parameters [CommentMarkReadParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def comment_mark_read_with_http_info(project_id, key_id, id, comment_mark_read_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentsApi.comment_mark_read ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentsApi.comment_mark_read"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentsApi.comment_mark_read"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CommentsApi.comment_mark_read"
      end
      # verify the required parameter 'comment_mark_read_parameters' is set
      if @api_client.config.client_side_validation && comment_mark_read_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'comment_mark_read_parameters' when calling CommentsApi.comment_mark_read"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{id}/read'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(comment_mark_read_parameters) 

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

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommentsApi#comment_mark_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Mark a comment as unread
    # Mark a comment as unread.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [nil]
    def comment_mark_unread(project_id, key_id, id, opts = {})
      data, _status_code, _headers = comment_mark_unread_with_http_info(project_id, key_id, id, opts)
      data
    end

    # Mark a comment as unread
    # Mark a comment as unread.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def comment_mark_unread_with_http_info(project_id, key_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentsApi.comment_mark_unread ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentsApi.comment_mark_unread"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentsApi.comment_mark_unread"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CommentsApi.comment_mark_unread"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{id}/read'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: CommentsApi#comment_mark_unread\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single comment
    # Get details on a single comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Comment]
    def comment_show(project_id, key_id, id, opts = {})
      data, _status_code, _headers = comment_show_with_http_info(project_id, key_id, id, opts)
      data
    end

    # Get a single comment
    # Get details on a single comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(Comment)>, Integer, Hash)>] Response<(Comment)> data, response status code and response headers
    def comment_show_with_http_info(project_id, key_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentsApi.comment_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentsApi.comment_show"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentsApi.comment_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CommentsApi.comment_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Comment' 

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
        @api_client.config.logger.debug "API called: CommentsApi#comment_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a comment
    # Update an existing comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param id [String] ID
    # @param comment_update_parameters [CommentUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Comment]
    def comment_update(project_id, key_id, id, comment_update_parameters, opts = {})
      data, _status_code, _headers = comment_update_with_http_info(project_id, key_id, id, comment_update_parameters, opts)
      data
    end

    # Update a comment
    # Update an existing comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param id [String] ID
    # @param comment_update_parameters [CommentUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Comment)>, Integer, Hash)>] Response<(Comment)> data, response status code and response headers
    def comment_update_with_http_info(project_id, key_id, id, comment_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentsApi.comment_update ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentsApi.comment_update"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentsApi.comment_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CommentsApi.comment_update"
      end
      # verify the required parameter 'comment_update_parameters' is set
      if @api_client.config.client_side_validation && comment_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'comment_update_parameters' when calling CommentsApi.comment_update"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(comment_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Comment' 

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
        @api_client.config.logger.debug "API called: CommentsApi#comment_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List comments
    # List all comments for a key.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @return [Array<Comment>]
    def comments_list(project_id, key_id, opts = {})
      data, _status_code, _headers = comments_list_with_http_info(project_id, key_id, opts)
      data
    end

    # List comments
    # List all comments for a key.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(Array<Comment>)>, Integer, Hash)>] Response<(Array<Comment>)> data, response status code and response headers
    def comments_list_with_http_info(project_id, key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentsApi.comments_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentsApi.comments_list"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentsApi.comments_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
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
      return_type = opts[:return_type] || 'Array<Comment>' 

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
        @api_client.config.logger.debug "API called: CommentsApi#comments_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
