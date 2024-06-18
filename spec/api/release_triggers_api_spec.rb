require 'spec_helper'
require 'json'

# Unit tests for Phrase::ReleaseTriggersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ReleaseTriggersApi' do
  before do
    # run before each test
    @api_instance = Phrase::ReleaseTriggersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReleaseTriggersApi' do
    it 'should create an instance of ReleaseTriggersApi' do
      expect(@api_instance).to be_instance_of(Phrase::ReleaseTriggersApi)
    end
  end

  # unit tests for release_triggers_create
  # Create a release trigger
  # Create a new recurring release. New releases will be published automatically, based on the cron schedule provided. Currently, only one release trigger can exist per distribution.
  # @param account_id Account ID
  # @param distribution_id Distribution ID
  # @param release_create_parameters1 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [ReleaseTrigger]
  describe 'release_triggers_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for release_triggers_destroy
  # Delete a single release trigger
  # Delete a single release trigger.
  # @param account_id Account ID
  # @param distribution_id Distribution ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'release_triggers_destroy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for release_triggers_list
  # List release triggers
  # List all release triggers for the given distribution.&lt;br&gt; Note: Currently only one release trigger can exist per distribution. 
  # @param account_id Account ID
  # @param distribution_id Distribution ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Array<ReleaseTrigger>]
  describe 'release_triggers_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for release_triggers_show
  # Get a single release trigger
  # Get details of a single release trigger.
  # @param account_id Account ID
  # @param distribution_id Distribution ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [ReleaseTrigger]
  describe 'release_triggers_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for release_triggers_update
  # Update a release trigger
  # Update a recurring release.
  # @param account_id Account ID
  # @param distribution_id Distribution ID
  # @param id ID
  # @param release_update_parameters1 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [ReleaseTrigger]
  describe 'release_triggers_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end