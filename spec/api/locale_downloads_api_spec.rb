require 'spec_helper'
require 'json'

# Unit tests for Phrase::LocaleDownloadsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LocaleDownloadsApi' do
  before do
    # run before each test
    @api_instance = Phrase::LocaleDownloadsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LocaleDownloadsApi' do
    it 'should create an instance of LocaleDownloadsApi' do
      expect(@api_instance).to be_instance_of(Phrase::LocaleDownloadsApi)
    end
  end

  # unit tests for locale_download_create
  # Initiate async download of a locale
  # Prepare a locale for download in a specific file format.
  # @param project_id Project ID
  # @param locale_id Locale ID
  # @param locale_download_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :if_modified_since Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
  # @option opts [String] :if_none_match ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
  # @return [LocaleDownload]
  describe 'locale_download_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for locale_download_show
  # Show status of an async locale download
  # Show status of already started async locale download. If the download is finished, the download link will be returned.
  # @param project_id Project ID
  # @param locale_id Locale ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :if_modified_since Last modified condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
  # @option opts [String] :if_none_match ETag condition, see [Conditional GET requests / HTTP Caching](/en/api/strings/pagination#conditional-get-requests-%2F-http-caching) (optional)
  # @return [LocaleDownload]
  describe 'locale_download_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
