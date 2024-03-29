require 'spec_helper'
require 'json'

# Unit tests for Phrase::DistributionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DistributionsApi' do
  before do
    # run before each test
    @api_instance = Phrase::DistributionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DistributionsApi' do
    it 'should create an instance of DistributionsApi' do
      expect(@api_instance).to be_instance_of(Phrase::DistributionsApi)
    end
  end

  # unit tests for distribution_create
  # Create a distribution
  # Create a new distribution.
  # @param account_id Account ID
  # @param distribution_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Distribution]
  describe 'distribution_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for distribution_delete
  # Delete a distribution
  # Delete an existing distribution.
  # @param account_id Account ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'distribution_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for distribution_show
  # Get a single distribution
  # Get details on a single distribution.
  # @param account_id Account ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Distribution]
  describe 'distribution_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for distribution_update
  # Update a distribution
  # Update an existing distribution.
  # @param account_id Account ID
  # @param id ID
  # @param distribution_update_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Distribution]
  describe 'distribution_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for distributions_list
  # List distributions
  # List all distributions for the given account.
  # @param account_id Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
  # @return [Array<DistributionPreview>]
  describe 'distributions_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
