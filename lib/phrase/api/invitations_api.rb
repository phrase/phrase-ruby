require 'cgi'

module Phrase
  class InvitationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new invitation
    # Invite a person to an account. Developers and translators need <code>project_ids</code> and <code>locale_ids</code> assigned to access them. Access token scope must include <code>team.manage</code>.
    # @param account_id [String] Account ID
    # @param invitation_create_parameters [InvitationCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Invitation]
    def invitation_create(account_id, invitation_create_parameters, opts = {})
      data, _status_code, _headers = invitation_create_with_http_info(account_id, invitation_create_parameters, opts)
      data
    end

    # Create a new invitation
    # Invite a person to an account. Developers and translators need &lt;code&gt;project_ids&lt;/code&gt; and &lt;code&gt;locale_ids&lt;/code&gt; assigned to access them. Access token scope must include &lt;code&gt;team.manage&lt;/code&gt;.
    # @param account_id [String] Account ID
    # @param invitation_create_parameters [InvitationCreateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Invitation)>, Integer, Hash)>] Response<(Invitation)> data, response status code and response headers
    def invitation_create_with_http_info(account_id, invitation_create_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitationsApi.invitation_create ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling InvitationsApi.invitation_create"
      end
      # verify the required parameter 'invitation_create_parameters' is set
      if @api_client.config.client_side_validation && invitation_create_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'invitation_create_parameters' when calling InvitationsApi.invitation_create"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/invitations'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(invitation_create_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Invitation' 

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
        @api_client.config.logger.debug "API called: InvitationsApi#invitation_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Delete an invitation
    # Delete an existing invitation (must not be accepted yet). Access token scope must include <code>team.manage</code>.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [nil]
    def invitation_delete(account_id, id, opts = {})
      data, _status_code, _headers = invitation_delete_with_http_info(account_id, id, opts)
      data
    end

    # Delete an invitation
    # Delete an existing invitation (must not be accepted yet). Access token scope must include &lt;code&gt;team.manage&lt;/code&gt;.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response, Integer, Hash)>] Response<(nil, response status code and response headers
    def invitation_delete_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitationsApi.invitation_delete ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling InvitationsApi.invitation_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvitationsApi.invitation_delete"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/invitations/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: InvitationsApi#invitation_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Resend an invitation
    # Resend the invitation email (must not be accepted yet). Access token scope must include <code>team.manage</code>.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Invitation]
    def invitation_resend(account_id, id, opts = {})
      data, _status_code, _headers = invitation_resend_with_http_info(account_id, id, opts)
      data
    end

    # Resend an invitation
    # Resend the invitation email (must not be accepted yet). Access token scope must include &lt;code&gt;team.manage&lt;/code&gt;.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Invitation)>, Integer, Hash)>] Response<(Invitation)> data, response status code and response headers
    def invitation_resend_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitationsApi.invitation_resend ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling InvitationsApi.invitation_resend"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvitationsApi.invitation_resend"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/invitations/{id}/resend'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Invitation' 

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
        @api_client.config.logger.debug "API called: InvitationsApi#invitation_resend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Get a single invitation
    # Get details on a single invitation. Access token scope must include <code>team.manage</code>.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Invitation]
    def invitation_show(account_id, id, opts = {})
      data, _status_code, _headers = invitation_show_with_http_info(account_id, id, opts)
      data
    end

    # Get a single invitation
    # Get details on a single invitation. Access token scope must include &lt;code&gt;team.manage&lt;/code&gt;.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Invitation)>, Integer, Hash)>] Response<(Invitation)> data, response status code and response headers
    def invitation_show_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitationsApi.invitation_show ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling InvitationsApi.invitation_show"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvitationsApi.invitation_show"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/invitations/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Invitation' 

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
        @api_client.config.logger.debug "API called: InvitationsApi#invitation_show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # Update an invitation
    # Update an existing invitation (must not be accepted yet). The <code>email</code> cannot be updated. Developers and translators need <code>project_ids</code> and <code>locale_ids</code> assigned to access them. Access token scope must include <code>team.manage</code>.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param invitation_update_parameters [InvitationUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Invitation]
    def invitation_update(account_id, id, invitation_update_parameters, opts = {})
      data, _status_code, _headers = invitation_update_with_http_info(account_id, id, invitation_update_parameters, opts)
      data
    end

    # Update an invitation
    # Update an existing invitation (must not be accepted yet). The &lt;code&gt;email&lt;/code&gt; cannot be updated. Developers and translators need &lt;code&gt;project_ids&lt;/code&gt; and &lt;code&gt;locale_ids&lt;/code&gt; assigned to access them. Access token scope must include &lt;code&gt;team.manage&lt;/code&gt;.
    # @param account_id [String] Account ID
    # @param id [String] ID
    # @param invitation_update_parameters [InvitationUpdateParameters] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @return [Array<(Response<(Invitation)>, Integer, Hash)>] Response<(Invitation)> data, response status code and response headers
    def invitation_update_with_http_info(account_id, id, invitation_update_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitationsApi.invitation_update ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling InvitationsApi.invitation_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvitationsApi.invitation_update"
      end
      # verify the required parameter 'invitation_update_parameters' is set
      if @api_client.config.client_side_validation && invitation_update_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'invitation_update_parameters' when calling InvitationsApi.invitation_update"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/invitations/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(invitation_update_parameters) 

      # return_type
      return_type = opts[:return_type] || 'Invitation' 

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
        @api_client.config.logger.debug "API called: InvitationsApi#invitation_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end

    # List invitations
    # List invitations for an account. It will also list the accessible resources like projects and locales the invited user has access to. In case nothing is shown the default access from the role is used. Access token scope must include <code>team.manage</code>.
    # @param account_id [String] Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<Invitation>]
    def invitations_list(account_id, opts = {})
      data, _status_code, _headers = invitations_list_with_http_info(account_id, opts)
      data
    end

    # List invitations
    # List invitations for an account. It will also list the accessible resources like projects and locales the invited user has access to. In case nothing is shown the default access from the role is used. Access token scope must include &lt;code&gt;team.manage&lt;/code&gt;.
    # @param account_id [String] Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 10 by default
    # @return [Array<(Response<(Array<Invitation>)>, Integer, Hash)>] Response<(Array<Invitation>)> data, response status code and response headers
    def invitations_list_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitationsApi.invitations_list ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling InvitationsApi.invitations_list"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/invitations'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:return_type] || 'Array<Invitation>' 

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
        @api_client.config.logger.debug "API called: InvitationsApi#invitations_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      response = ::Phrase::Response.new(data, headers)
      return response, status_code, headers
    end
  end
end
