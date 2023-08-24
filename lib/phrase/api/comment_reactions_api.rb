require 'cgi'

module Phrase
  class CommentReactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a reaction
    # Create a new reaction for a comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :emoji specify the emoji for the reaction
    # @return [CommentReaction]
    def reaction_create(project_id, key_id, comment_id, opts = {})
      data, _status_code, _headers = reaction_create_with_http_info(project_id, key_id, comment_id, opts)
      data
    end

    # Create a reaction
    # Create a new reaction for a comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @option opts [String] :emoji specify the emoji for the reaction
    # @return [Array<(Response<(CommentReaction)>, Integer, Hash)>] Response<(CommentReaction)> data, response status code and response headers
    def reaction_create_with_http_info(project_id, key_id, comment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentReactionsApi.reaction_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentReactionsApi.reaction_create"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentReactionsApi.reaction_create"
      end
      # verify the required parameter 'comment_id' is set
      if @api_client.config.client_side_validation && comment_id.nil?
        fail ArgumentError, "Missing the required parameter 'comment_id' when calling CommentReactionsApi.reaction_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{comment_id}/reactions'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'comment_id' + '}', CGI.escape(comment_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'branch'] = opts[:'branch'] if !opts[:'branch'].nil?
      query_params[:'emoji'] = opts[:'emoji'] if !opts[:'emoji'].nil?

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
      return_type = opts[:return_type] || 'CommentReaction' 

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
        @api_client.config.logger.debug "API called: CommentReactionsApi#reaction_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete a reaction
    # Delete an existing reaction.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [nil]
    def reaction_delete(project_id, key_id, comment_id, id, opts = {})
      data, _status_code, _headers = reaction_delete_with_http_info(project_id, key_id, comment_id, id, opts)
      data
    end

    # Delete a reaction
    # Delete an existing reaction.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def reaction_delete_with_http_info(project_id, key_id, comment_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentReactionsApi.reaction_delete ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentReactionsApi.reaction_delete"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentReactionsApi.reaction_delete"
      end
      # verify the required parameter 'comment_id' is set
      if @api_client.config.client_side_validation && comment_id.nil?
        fail ArgumentError, "Missing the required parameter 'comment_id' when calling CommentReactionsApi.reaction_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CommentReactionsApi.reaction_delete"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{comment_id}/reactions/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'comment_id' + '}', CGI.escape(comment_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: CommentReactionsApi#reaction_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single reaction
    # Get details on a single reaction.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [CommentReaction]
    def reaction_show(project_id, key_id, comment_id, id, opts = {})
      data, _status_code, _headers = reaction_show_with_http_info(project_id, key_id, comment_id, id, opts)
      data
    end

    # Get a single reaction
    # Get details on a single reaction.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(CommentReaction)>, Integer, Hash)>] Response<(CommentReaction)> data, response status code and response headers
    def reaction_show_with_http_info(project_id, key_id, comment_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentReactionsApi.reaction_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentReactionsApi.reaction_show"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentReactionsApi.reaction_show"
      end
      # verify the required parameter 'comment_id' is set
      if @api_client.config.client_side_validation && comment_id.nil?
        fail ArgumentError, "Missing the required parameter 'comment_id' when calling CommentReactionsApi.reaction_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CommentReactionsApi.reaction_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{comment_id}/reactions/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'comment_id' + '}', CGI.escape(comment_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'CommentReaction' 

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
        @api_client.config.logger.debug "API called: CommentReactionsApi#reaction_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List reactions
    # List all reactions for a comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @return [Array<CommentReaction>]
    def reactions_list(project_id, key_id, comment_id, opts = {})
      data, _status_code, _headers = reactions_list_with_http_info(project_id, key_id, comment_id, opts)
      data
    end

    # List reactions
    # List all reactions for a comment.
    # @param project_id [String] Project ID
    # @param key_id [String] Translation Key ID
    # @param comment_id [String] Comment ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(Array<CommentReaction>)>, Integer, Hash)>] Response<(Array<CommentReaction>)> data, response status code and response headers
    def reactions_list_with_http_info(project_id, key_id, comment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommentReactionsApi.reactions_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling CommentReactionsApi.reactions_list"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling CommentReactionsApi.reactions_list"
      end
      # verify the required parameter 'comment_id' is set
      if @api_client.config.client_side_validation && comment_id.nil?
        fail ArgumentError, "Missing the required parameter 'comment_id' when calling CommentReactionsApi.reactions_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/keys/{key_id}/comments/{comment_id}/reactions'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'key_id' + '}', CGI.escape(key_id.to_s)).sub('{' + 'comment_id' + '}', CGI.escape(comment_id.to_s))

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
      return_type = opts[:return_type] || 'Array<CommentReaction>' 

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
        @api_client.config.logger.debug "API called: CommentReactionsApi#reactions_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
