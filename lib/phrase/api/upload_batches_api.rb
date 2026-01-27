require 'cgi'

module Phrase
  class UploadBatchesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create upload batch
    # Groups multiple file uploads into a single batch. Optionally, launches the deletion of unmentioned translation keys after all uploads in the batch are completed. 
    # @param project_id [String] Project ID
    # @param upload_batches_create_parameters [UploadBatchesCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [UploadBatch]
    def upload_batches_create(project_id, upload_batches_create_parameters, opts = {})
      data, _status_code, _headers = upload_batches_create_with_http_info(project_id, upload_batches_create_parameters, opts)
      data
    end

    # Create upload batch
    # Groups multiple file uploads into a single batch. Optionally, launches the deletion of unmentioned translation keys after all uploads in the batch are completed. 
    # @param project_id [String] Project ID
    # @param upload_batches_create_parameters [UploadBatchesCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(UploadBatch)>, Integer, Hash)>] Response<(UploadBatch)> data, response status code and response headers
    def upload_batches_create_with_http_info(project_id, upload_batches_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UploadBatchesApi.upload_batches_create ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling UploadBatchesApi.upload_batches_create"
      end
      # verify the required parameter 'upload_batches_create_parameters' is set
      if @api_client.config.client_side_validation && upload_batches_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'upload_batches_create_parameters' when calling UploadBatchesApi.upload_batches_create"
      end
      # resource path
      local_var_path = '/projects/{project_id}/upload_batches'.sub('{' + 'project_id' + '}', CGI.escape(project_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(upload_batches_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'UploadBatch' 

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
        @api_client.config.logger.debug "API called: UploadBatchesApi#upload_batches_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
