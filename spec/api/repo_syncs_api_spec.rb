require 'spec_helper'
require 'json'

# Unit tests for Phrase::RepoSyncsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RepoSyncsApi' do
  before do
    # run before each test
    @api_instance = Phrase::RepoSyncsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RepoSyncsApi' do
    it 'should create an instance of RepoSyncsApi' do
      expect(@api_instance).to be_instance_of(Phrase::RepoSyncsApi)
    end
  end

  # unit tests for repo_sync_activate
  # Activate a Repo Sync
  # Activate a deactivated Repo Sync. Active syncs can be used to import and export translations, and imports to Phrase are automatically triggered by pushes to the repository, if configured.
  # @param account_id Account ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [RepoSync]
  describe 'repo_sync_activate test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for repo_sync_deactivate
  # Deactivate a Repo Sync
  # Deactivate an active Repo Sync. Import and export can&#39;t be performed on deactivated syncs and the pushes to the repository won&#39;t trigger the import to Phrase.
  # @param account_id Account ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [RepoSync]
  describe 'repo_sync_deactivate test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for repo_sync_event_show
  # Get a single Repo Sync Event
  # Shows a single Repo Sync event.
  # @param account_id Account ID
  # @param repo_sync_id Repo Sync ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [RepoSyncEvent]
  describe 'repo_sync_event_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for repo_sync_events
  # Repository Syncs History
  # Get the history of a single Repo Sync. The history includes all imports and exports performed by the Repo Sync.
  # @param account_id Account ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Array<RepoSyncEvent>]
  describe 'repo_sync_events test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for repo_sync_export
  # Export to code repository
  # Export translations from Phrase Strings to repository provider according to the .phrase.yml file within the code repository.  *Export is done asynchronously and may take several seconds depending on the project size.*
  # @param account_id Account ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [RepoSyncEvent]
  describe 'repo_sync_export test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for repo_sync_import
  # Import from code repository
  # Import translations from repository provider to Phrase Strings according to the .phrase.yml file within the code repository.  _Import is done asynchronously and may take several seconds depending on the project size._
  # @param account_id Account ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [RepoSyncEvent]
  describe 'repo_sync_import test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for repo_sync_list
  # Get Repo Syncs
  # Lists all Repo Syncs from an account
  # @param account_id Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Array<RepoSync>]
  describe 'repo_sync_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for repo_sync_show
  # Get a single Repo Sync
  # Shows a single Repo Sync setting.
  # @param account_id Account ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [RepoSync]
  describe 'repo_sync_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
