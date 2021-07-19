require 'spec_helper'
require 'json'

# Unit tests for Phrase::JobTemplateLocalesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'JobTemplateLocalesApi' do
  before do
    # run before each test
    @api_instance = Phrase::JobTemplateLocalesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of JobTemplateLocalesApi' do
    it 'should create an instance of JobTemplateLocalesApi' do
      expect(@api_instance).to be_instance_of(Phrase::JobTemplateLocalesApi)
    end
  end

  # unit tests for job_template_locale_delete
  # Delete a job template locale
  # Delete an existing job template locale.
  # @param project_id Project ID
  # @param job_template_id Job Template ID
  # @param job_template_locale_id Job Template Locale ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :branch specify the branch to use
  # @return [nil]
  describe 'job_template_locale_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_template_locale_show
  # Get a single job template locale
  # Get a single job template locale for a given job template.
  # @param project_id Project ID
  # @param job_template_id Job Template ID
  # @param job_template_locale_id Job Template Locale ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :branch specify the branch to use
  # @return [Object]
  describe 'job_template_locale_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_template_locale_update
  # Update a job template locale
  # Update an existing job template locale.
  # @param project_id Project ID
  # @param job_template_id Job Template ID
  # @param job_template_locale_id Job Template Locale ID
  # @param job_template_locale_update_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Object]
  describe 'job_template_locale_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_template_locales_create
  # Create a job template locale
  # Create a new job template locale.
  # @param project_id Project ID
  # @param job_template_id Job Template ID
  # @param job_template_locales_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [JobTemplateLocale]
  describe 'job_template_locales_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_template_locales_list
  # List job template locales
  # List all job template locales for a given job template.
  # @param project_id Project ID
  # @param job_template_id Job Template ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page allows you to specify a page size up to 100 items, 25 by default
  # @option opts [String] :branch specify the branch to use
  # @return [Array<Object>]
  describe 'job_template_locales_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
