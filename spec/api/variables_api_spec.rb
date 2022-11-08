require 'spec_helper'
require 'json'

# Unit tests for Phrase::VariablesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VariablesApi' do
  before do
    # run before each test
    @api_instance = Phrase::VariablesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VariablesApi' do
    it 'should create an instance of VariablesApi' do
      expect(@api_instance).to be_instance_of(Phrase::VariablesApi)
    end
  end

  # unit tests for variable_create
  # Create a variable
  # Create a new variable.
  # @param project_id Project ID
  # @param variable_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Variable]
  describe 'variable_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for variable_delete
  # Delete a variable
  # Delete an existing variable.
  # @param project_id Project ID
  # @param name name
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'variable_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for variable_show
  # Get a single variable
  # Get details on a single variable for a given project.
  # @param project_id Project ID
  # @param name name
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Variable]
  describe 'variable_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for variable_update
  # Update a variable
  # Update an existing variable.
  # @param project_id Project ID
  # @param name name
  # @param variable_update_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Variable]
  describe 'variable_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for variables_list
  # List variables
  # List all variables for the current project.
  # @param project_id Project ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
  # @return [Array<Variable>]
  describe 'variables_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
