require 'spec_helper'
require 'json'

# Unit tests for Phrase::InvitationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InvitationsApi' do
  before do
    # run before each test
    @api_instance = Phrase::InvitationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InvitationsApi' do
    it 'should create an instance of InvitationsApi' do
      expect(@api_instance).to be_instance_of(Phrase::InvitationsApi)
    end
  end

  # unit tests for invitation_create
  # Create a new invitation
  # Invite a person to an account. Developers and translators need &lt;code&gt;project_ids&lt;/code&gt; and &lt;code&gt;locale_ids&lt;/code&gt; assigned to access them. Access token scope must include &lt;code&gt;team.manage&lt;/code&gt;.
  # @param account_id Account ID
  # @param invitation_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Invitation]
  describe 'invitation_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for invitation_delete
  # Delete an invitation
  # Delete an existing invitation (must not be accepted yet). Access token scope must include &lt;code&gt;team.manage&lt;/code&gt;.
  # @param account_id Account ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'invitation_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for invitation_resend
  # Resend an invitation
  # Resend the invitation email (must not be accepted yet). Access token scope must include &lt;code&gt;team.manage&lt;/code&gt;.
  # @param account_id Account ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Invitation]
  describe 'invitation_resend test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for invitation_show
  # Get a single invitation
  # Get details on a single invitation. Access token scope must include &lt;code&gt;team.manage&lt;/code&gt;.
  # @param account_id Account ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Invitation]
  describe 'invitation_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for invitation_update
  # Update an invitation
  # Update an existing invitation (must not be accepted yet). The &lt;code&gt;email&lt;/code&gt; cannot be updated. Developers and translators need &lt;code&gt;project_ids&lt;/code&gt; and &lt;code&gt;locale_ids&lt;/code&gt; assigned to access them. Access token scope must include &lt;code&gt;team.manage&lt;/code&gt;.
  # @param account_id Account ID
  # @param id ID
  # @param invitation_update_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Invitation]
  describe 'invitation_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for invitation_update_settings
  # Update a member&#39;s invitation access
  # Update member&#39;s settings in the invitations. Access token scope must include &lt;code&gt;team.manage&lt;/code&gt;.
  # @param project_id Project ID
  # @param id ID
  # @param invitation_update_settings_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Invitation]
  describe 'invitation_update_settings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for invitations_list
  # List invitations
  # List invitations for an account. It will also list the accessible resources like projects and locales the invited user has access to. In case nothing is shown the default access from the role is used. Access token scope must include &lt;code&gt;team.manage&lt;/code&gt;.
  # @param account_id Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
  # @return [Array<Invitation>]
  describe 'invitations_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
