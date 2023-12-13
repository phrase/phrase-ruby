require 'cgi'

module Phrase
  class CustomMetadataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Destroy property
    # Destroy a custom metadata property of an account.  This endpoint is only available to accounts with advanced plans or above. 
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def custom_metadata_properties_delete(account_id, id, opts = {})
      data, _status_code, _headers = custom_metadata_properties_delete_with_http_info(account_id, id, opts)
      data
    end

    # Destroy property
    # Destroy a custom metadata property of an account.  This endpoint is only available to accounts with advanced plans or above. 
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def custom_metadata_properties_delete_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomMetadataApi.custom_metadata_properties_delete ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CustomMetadataApi.custom_metadata_properties_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomMetadataApi.custom_metadata_properties_delete"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/custom_metadata/properties/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
        @api_client.config.logger.debug "API called: CustomMetadataApi#custom_metadata_properties_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List properties
    # List all custom metadata properties for an account.  This endpoint is only available to accounts with advanced plans or above. 
    # @param account_id [String] Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [CustomMetadataDataType] :data_type Data Type of Custom Metadata Property
    # @option opts [String] :project_id id of project that the properties belong to
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :sort Sort criteria. Can be one of: name, data_type, created_at.
    # @option opts [String] :order Order direction. Can be one of: asc, desc.
    # @return [Array<CustomMetadataProperty>]
    def custom_metadata_properties_list(account_id, opts = {})
      data, _status_code, _headers = custom_metadata_properties_list_with_http_info(account_id, opts)
      data
    end

    # List properties
    # List all custom metadata properties for an account.  This endpoint is only available to accounts with advanced plans or above. 
    # @param account_id [String] Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [CustomMetadataDataType] :data_type Data Type of Custom Metadata Property
    # @option opts [String] :project_id id of project that the properties belong to
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
    # @option opts [String] :sort Sort criteria. Can be one of: name, data_type, created_at.
    # @option opts [String] :order Order direction. Can be one of: asc, desc.
    # @return [Array<(Response<(Array<CustomMetadataProperty>)>, Integer, Hash)>] Response<(Array<CustomMetadataProperty>)> data, response status code and response headers
    def custom_metadata_properties_list_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomMetadataApi.custom_metadata_properties_list ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CustomMetadataApi.custom_metadata_properties_list"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/custom_metadata/properties'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'data_type'] = opts[:'data_type'] if !opts[:'data_type'].nil?
      query_params[:'project_id'] = opts[:'project_id'] if !opts[:'project_id'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

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
      return_type = opts[:return_type] || 'Array<CustomMetadataProperty>' 

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
        @api_client.config.logger.debug "API called: CustomMetadataApi#custom_metadata_properties_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Create a property
    # Create a new custom metadata property.
    # @param account_id [String] Account ID
    # @param name [String] name of the property
    # @param data_type [CustomMetadataDataType] Data Type of Custom Metadata Property
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :description description of property
    # @option opts [Array<String>] :project_ids ids of projects that the property belongs to
    # @option opts [Array<String>] :value_options value options of property (only applies to single or multi select properties)
    # @return [CustomMetadataProperty]
    def custom_metadata_property_create(account_id, name, data_type, opts = {})
      data, _status_code, _headers = custom_metadata_property_create_with_http_info(account_id, name, data_type, opts)
      data
    end

    # Create a property
    # Create a new custom metadata property.
    # @param account_id [String] Account ID
    # @param name [String] name of the property
    # @param data_type [CustomMetadataDataType] Data Type of Custom Metadata Property
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :description description of property
    # @option opts [Array<String>] :project_ids ids of projects that the property belongs to
    # @option opts [Array<String>] :value_options value options of property (only applies to single or multi select properties)
    # @return [Array<(Response<(CustomMetadataProperty)>, Integer, Hash)>] Response<(CustomMetadataProperty)> data, response status code and response headers
    def custom_metadata_property_create_with_http_info(account_id, name, data_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomMetadataApi.custom_metadata_property_create ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CustomMetadataApi.custom_metadata_property_create"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CustomMetadataApi.custom_metadata_property_create"
      end
      # verify the required parameter 'data_type' is set
      if @api_client.config.client_side_validation && data_type.nil?
        fail ArgumentError, "Missing the required parameter 'data_type' when calling CustomMetadataApi.custom_metadata_property_create"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/custom_metadata/properties'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = name
      query_params[:'data_type'] = data_type
      query_params[:'description'] = opts[:'description'] if !opts[:'description'].nil?
      query_params[:'project_ids'] = @api_client.build_collection_param(opts[:'project_ids'], :multi) if !opts[:'project_ids'].nil?
      query_params[:'value_options'] = @api_client.build_collection_param(opts[:'value_options'], :multi) if !opts[:'value_options'].nil?

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
      return_type = opts[:return_type] || 'CustomMetadataProperty' 

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
        @api_client.config.logger.debug "API called: CustomMetadataApi#custom_metadata_property_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single property
    # Get details of a single custom property.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [CustomMetadataProperty]
    def custom_metadata_property_show(account_id, id, opts = {})
      data, _status_code, _headers = custom_metadata_property_show_with_http_info(account_id, id, opts)
      data
    end

    # Get a single property
    # Get details of a single custom property.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(CustomMetadataProperty)>, Integer, Hash)>] Response<(CustomMetadataProperty)> data, response status code and response headers
    def custom_metadata_property_show_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomMetadataApi.custom_metadata_property_show ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CustomMetadataApi.custom_metadata_property_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomMetadataApi.custom_metadata_property_show"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/custom_metadata/properties/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      return_type = opts[:return_type] || 'CustomMetadataProperty' 

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
        @api_client.config.logger.debug "API called: CustomMetadataApi#custom_metadata_property_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update a property
    # Update an existing custom metadata property.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :name name of the property
    # @option opts [String] :description description of property
    # @option opts [Array<String>] :project_ids ids of projects that the property belongs to
    # @option opts [Array<String>] :value_options value options of property (only applies to single or multi select properties)
    # @return [CustomMetadataProperty]
    def custom_metadata_property_update(account_id, id, opts = {})
      data, _status_code, _headers = custom_metadata_property_update_with_http_info(account_id, id, opts)
      data
    end

    # Update a property
    # Update an existing custom metadata property.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [String] :name name of the property
    # @option opts [String] :description description of property
    # @option opts [Array<String>] :project_ids ids of projects that the property belongs to
    # @option opts [Array<String>] :value_options value options of property (only applies to single or multi select properties)
    # @return [Array<(Response<(CustomMetadataProperty)>, Integer, Hash)>] Response<(CustomMetadataProperty)> data, response status code and response headers
    def custom_metadata_property_update_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomMetadataApi.custom_metadata_property_update ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CustomMetadataApi.custom_metadata_property_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomMetadataApi.custom_metadata_property_update"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/custom_metadata/properties/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'description'] = opts[:'description'] if !opts[:'description'].nil?
      query_params[:'project_ids'] = @api_client.build_collection_param(opts[:'project_ids'], :multi) if !opts[:'project_ids'].nil?
      query_params[:'value_options'] = @api_client.build_collection_param(opts[:'value_options'], :multi) if !opts[:'value_options'].nil?

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
      return_type = opts[:return_type] || 'CustomMetadataProperty' 

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
        @api_client.config.logger.debug "API called: CustomMetadataApi#custom_metadata_property_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
