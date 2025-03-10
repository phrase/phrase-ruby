require 'spec_helper'
require 'json'

# Unit tests for Phrase::QualityPerformanceScoreApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'QualityPerformanceScoreApi' do
  before do
    # run before each test
    @api_instance = Phrase::QualityPerformanceScoreApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of QualityPerformanceScoreApi' do
    it 'should create an instance of QualityPerformanceScoreApi' do
      expect(@api_instance).to be_instance_of(Phrase::QualityPerformanceScoreApi)
    end
  end

  # unit tests for quality_performance_score_list
  # Get Translation Quality
  # Retrieves the quality scores for your Strings translations. Returns a score, measured by Phrase QPS
  # @param project_id Project ID
  # @param quality_performance_score_list_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [QualityPerformanceScoreList200Response]
  describe 'quality_performance_score_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
