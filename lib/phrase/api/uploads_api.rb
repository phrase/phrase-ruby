require 'cgi'

module Phrase
  class UploadsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Upload a new file
    # Upload a new language file. Creates necessary resources in your project.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @option opts [File] :file File to be imported
    # @option opts [String] :file_format File format. Auto-detected when possible and not specified.
    # @option opts [String] :locale_id Locale of the file&#39;s content. Can be the name or public id of the locale. Preferred is the public id.
    # @option opts [String] :tags List of tags separated by comma to be associated with the new keys contained in the upload.
    # @option opts [Boolean] :update_translations Indicates whether existing translations should be updated with the file content.
    # @option opts [Boolean] :update_descriptions Existing key descriptions will be updated with the file content. Empty descriptions overwrite existing descriptions.
    # @option opts [Boolean] :convert_emoji This option is obsolete. Providing the option will cause a bad request error.
    # @option opts [Boolean] :skip_upload_tags Indicates whether the upload should not create upload tags.
    # @option opts [Boolean] :skip_unverification Indicates whether the upload should unverify updated translations.
    # @option opts [String] :file_encoding Enforces a specific encoding on the file contents. Valid options are \\\&quot;UTF-8\\\&quot;, \\\&quot;UTF-16\\\&quot; and \\\&quot;ISO-8859-1\\\&quot;.
    # @option opts [Object] :locale_mapping Optional, format specific mapping between locale names and the columns the translations to those locales are contained in.
    # @option opts [Object] :format_options Additional options available for specific formats. See our format guide for complete list.
    # @option opts [Boolean] :autotranslate If set, translations for the uploaded language will be fetched automatically.
    # @option opts [Boolean] :mark_reviewed Indicated whether the imported translations should be marked as reviewed. This setting is available if the review workflow (currently beta) is enabled for the project.
    # @return [Upload]
    def upload_create(project_id, opts = {})
      data, _status_code, _headers = upload_create_with_http_info(project_id, opts)
      data
    end

    # Upload a new file
    # Upload a new language file. Creates necessary resources in your project.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @option opts [File] :file File to be imported
    # @option opts [String] :file_format File format. Auto-detected when possible and not specified.
    # @option opts [String] :locale_id Locale of the file&#39;s content. Can be the name or public id of the locale. Preferred is the public id.
    # @option opts [String] :tags List of tags separated by comma to be associated with the new keys contained in the upload.
    # @option opts [Boolean] :update_translations Indicates whether existing translations should be updated with the file content.
    # @option opts [Boolean] :update_descriptions Existing key descriptions will be updated with the file content. Empty descriptions overwrite existing descriptions.
    # @option opts [Boolean] :convert_emoji This option is obsolete. Providing the option will cause a bad request error.
    # @option opts [Boolean] :skip_upload_tags Indicates whether the upload should not create upload tags.
    # @option opts [Boolean] :skip_unverification Indicates whether the upload should unverify updated translations.
    # @option opts [String] :file_encoding Enforces a specific encoding on the file contents. Valid options are \\\&quot;UTF-8\\\&quot;, \\\&quot;UTF-16\\\&quot; and \\\&quot;ISO-8859-1\\\&quot;.
    # @option opts [Object] :locale_mapping Optional, format specific mapping between locale names and the columns the translations to those locales are contained in.
    # @option opts [Object] :format_options Additional options available for specific formats. See our format guide for complete list.
    # @option opts [Boolean] :autotranslate If set, translations for the uploaded language will be fetched automatically.
    # @option opts [Boolean] :mark_reviewed Indicated whether the imported translations should be marked as reviewed. This setting is available if the review workflow (currently beta) is enabled for the project.
    # @return [Array<(Response<(Upload)>, Integer, Hash)>] Response<(Upload)> data, response status code and response headers
    def upload_create_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UploadsApi.upload_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling UploadsApi.upload_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/uploads'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'X-PhraseApp-OTP'] = opts[:'x_phrase_app_otp'] if !opts[:'x_phrase_app_otp'].nil?

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['branch'] = opts[:'branch'] if !opts[:'branch'].nil?
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?
      form_params['file_format'] = opts[:'file_format'] if !opts[:'file_format'].nil?
      form_params['locale_id'] = opts[:'locale_id'] if !opts[:'locale_id'].nil?
      form_params['tags'] = opts[:'tags'] if !opts[:'tags'].nil?
      form_params['update_translations'] = opts[:'update_translations'] if !opts[:'update_translations'].nil?
      form_params['update_descriptions'] = opts[:'update_descriptions'] if !opts[:'update_descriptions'].nil?
      form_params['convert_emoji'] = opts[:'convert_emoji'] if !opts[:'convert_emoji'].nil?
      form_params['skip_upload_tags'] = opts[:'skip_upload_tags'] if !opts[:'skip_upload_tags'].nil?
      form_params['skip_unverification'] = opts[:'skip_unverification'] if !opts[:'skip_unverification'].nil?
      form_params['file_encoding'] = opts[:'file_encoding'] if !opts[:'file_encoding'].nil?
      form_params['locale_mapping'] = opts[:'locale_mapping'] if !opts[:'locale_mapping'].nil?
      form_params['format_options'] = opts[:'format_options'] if !opts[:'format_options'].nil?
      form_params['autotranslate'] = opts[:'autotranslate'] if !opts[:'autotranslate'].nil?
      form_params['mark_reviewed'] = opts[:'mark_reviewed'] if !opts[:'mark_reviewed'].nil?

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Upload' 

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
        @api_client.config.logger.debug "API called: UploadsApi#upload_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # View upload details
    # View details and summary for a single upload.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Upload]
    def upload_show(project_id, id, opts = {})
      data, _status_code, _headers = upload_show_with_http_info(project_id, id, opts)
      data
    end

    # View upload details
    # View details and summary for a single upload.
    # @param project_id [String] Project ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(Upload)>, Integer, Hash)>] Response<(Upload)> data, response status code and response headers
    def upload_show_with_http_info(project_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UploadsApi.upload_show ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling UploadsApi.upload_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UploadsApi.upload_show"
      end
      # resource path
      local_var_path = '/projects/{project_id}/uploads/{id}'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Upload' 

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
        @api_client.config.logger.debug "API called: UploadsApi#upload_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List uploads
    # List all uploads for the given project.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
    # @option opts [String] :branch specify the branch to use
    # @return [Array<Upload>]
    def uploads_list(project_id, opts = {})
      data, _status_code, _headers = uploads_list_with_http_info(project_id, opts)
      data
    end

    # List uploads
    # List all uploads for the given project.
    # @param project_id [String] Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
    # @option opts [String] :branch specify the branch to use
    # @return [Array<(Response<(Array<Upload>)>, Integer, Hash)>] Response<(Array<Upload>)> data, response status code and response headers
    def uploads_list_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UploadsApi.uploads_list ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling UploadsApi.uploads_list"
      end
      # resource path
      local_var_path = '/projects/{project_id}/uploads'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      return_type = opts[:return_type] || 'Array<Upload>' 

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
        @api_client.config.logger.debug "API called: UploadsApi#uploads_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
