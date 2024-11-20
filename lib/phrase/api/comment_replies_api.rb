require 'cgi'

module Phrase
  class CommentRepliesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List replies
    # List all replies for a comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param replies_list_parameters [RepliesListParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :query Search query for comment messages
    # @option opts [Array<String>] :filters Specify the filter for the comments
    # @option opts [String] :order Order direction. Can be one of: asc, desc.
    # @return [Array<Comment>]
    def replies_list(project_id, key_id, comment_id, replies_list_parameters, opts = {})
      data, _status_code, _headers = replies_list_with_http_info(project_id, key_id, comment_id, replies_list_parameters, opts)
      data
    end

    # List replies
    # List all replies for a comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param replies_list_parameters [RepliesListParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :query Search query for comment messages
    # @option opts [Array<String>] :filters Specify the filter for the comments
    # @option opts [String] :order Order direction. Can be one of: asc, desc.
    # @return [Array<(Response<(Array<Comment>)>, Integer, Hash)>] Response<(Array<Comment>)> data, response status code and response headers
    def replies_list_with_http_info(project_id, key_id, comment_id, replies_list_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentRepliesApi.replies_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentRepliesApi.replies_list"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentRepliesApi.replies_list"
      end
      # verify the required parameter 'comment_id' is set
      if @api_client.config.client_side_validation && comment_id.nil?
        fail ArgumentError, "Missing the required parameter 'comment_id' when calling CommentRepliesApi.replies_list"
      end
      # verify the required parameter 'replies_list_parameters' is set
      if @api_client.config.client_side_validation && replies_list_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'replies_list_parameters' when calling CommentRepliesApi.replies_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{comment_id}/replies'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'comment_id' + '}', CGI.escape(comment_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'filters'] = @api_client.build_collection_param(opts[:'filters'], :multi) if !opts[:'filters'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

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
      post_body = opts[:body] || @api_client.object_to_http_body(replies_list_parameters) 

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
        @api_client.config.logger.debug "API called: CommentRepliesApi#replies_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Create a reply
    # Create a new reply for a comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param comment_create_parameters1 [CommentCreateParameters1] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Comment]
    def reply_create(project_id, key_id, comment_id, comment_create_parameters1, opts = {})
      data, _status_code, _headers = reply_create_with_http_info(project_id, key_id, comment_id, comment_create_parameters1, opts)
      data
    end

    # Create a reply
    # Create a new reply for a comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param comment_create_parameters1 [CommentCreateParameters1] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Comment)>, Integer, Hash)>] Response<(Comment)> data, response status code and response headers
    def reply_create_with_http_info(project_id, key_id, comment_id, comment_create_parameters1, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentRepliesApi.reply_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentRepliesApi.reply_create"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentRepliesApi.reply_create"
      end
      # verify the required parameter 'comment_id' is set
      if @api_client.config.client_side_validation && comment_id.nil?
        fail ArgumentError, "Missing the required parameter 'comment_id' when calling CommentRepliesApi.reply_create"
      end
      # verify the required parameter 'comment_create_parameters1' is set
      if @api_client.config.client_side_validation && comment_create_parameters1.nil?
        fail ArgumentError, "Missing the required parameter 'comment_create_parameters1' when calling CommentRepliesApi.reply_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{comment_id}/replies'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'comment_id' + '}', CGI.escape(comment_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(comment_create_parameters1) 

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
        @api_client.config.logger.debug "API called: CommentRepliesApi#reply_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a reply
    # Delete an existing reply.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [nil]
    def reply_delete(project_id, key_id, comment_id, id, opts = {})
      data, _status_code, _headers = reply_delete_with_http_info(project_id, key_id, comment_id, id, opts)
      data
    end

    # Delete a reply
    # Delete an existing reply.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def reply_delete_with_http_info(project_id, key_id, comment_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentRepliesApi.reply_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentRepliesApi.reply_delete"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentRepliesApi.reply_delete"
      end
      # verify the required parameter 'comment_id' is set
      if @api_client.config.client_side_validation && comment_id.nil?
        fail ArgumentError, "Missing the required parameter 'comment_id' when calling CommentRepliesApi.reply_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CommentRepliesApi.reply_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{comment_id}/replies/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'comment_id' + '}', CGI.escape(comment_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: CommentRepliesApi#reply_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Mark a reply as read
    # Mark a reply as read.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [nil]
    def reply_mark_as_read(project_id, key_id, comment_id, id, opts = {})
      data, _status_code, _headers = reply_mark_as_read_with_http_info(project_id, key_id, comment_id, id, opts)
      data
    end

    # Mark a reply as read
    # Mark a reply as read.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def reply_mark_as_read_with_http_info(project_id, key_id, comment_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentRepliesApi.reply_mark_as_read ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentRepliesApi.reply_mark_as_read"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentRepliesApi.reply_mark_as_read"
      end
      # verify the required parameter 'comment_id' is set
      if @api_client.config.client_side_validation && comment_id.nil?
        fail ArgumentError, "Missing the required parameter 'comment_id' when calling CommentRepliesApi.reply_mark_as_read"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CommentRepliesApi.reply_mark_as_read"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{comment_id}/replies/{id}/mark_as_read'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'comment_id' + '}', CGI.escape(comment_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommentRepliesApi#reply_mark_as_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Mark a reply as unread
    # Mark a reply as unread.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [nil]
    def reply_mark_as_unread(project_id, key_id, comment_id, id, opts = {})
      data, _status_code, _headers = reply_mark_as_unread_with_http_info(project_id, key_id, comment_id, id, opts)
      data
    end

    # Mark a reply as unread
    # Mark a reply as unread.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def reply_mark_as_unread_with_http_info(project_id, key_id, comment_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentRepliesApi.reply_mark_as_unread ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentRepliesApi.reply_mark_as_unread"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentRepliesApi.reply_mark_as_unread"
      end
      # verify the required parameter 'comment_id' is set
      if @api_client.config.client_side_validation && comment_id.nil?
        fail ArgumentError, "Missing the required parameter 'comment_id' when calling CommentRepliesApi.reply_mark_as_unread"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CommentRepliesApi.reply_mark_as_unread"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{comment_id}/replies/{id}/mark_as_unread'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'comment_id' + '}', CGI.escape(comment_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommentRepliesApi#reply_mark_as_unread\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single reply
    # Get details on a single reply.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Comment]
    def reply_show(project_id, key_id, comment_id, id, opts = {})
      data, _status_code, _headers = reply_show_with_http_info(project_id, key_id, comment_id, id, opts)
      data
    end

    # Get a single reply
    # Get details on a single reply.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(Comment)>, Integer, Hash)>] Response<(Comment)> data, response status code and response headers
    def reply_show_with_http_info(project_id, key_id, comment_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentRepliesApi.reply_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentRepliesApi.reply_show"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentRepliesApi.reply_show"
      end
      # verify the required parameter 'comment_id' is set
      if @api_client.config.client_side_validation && comment_id.nil?
        fail ArgumentError, "Missing the required parameter 'comment_id' when calling CommentRepliesApi.reply_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CommentRepliesApi.reply_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{comment_id}/replies/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'comment_id' + '}', CGI.escape(comment_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: CommentRepliesApi#reply_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
