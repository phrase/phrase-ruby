require 'spec_helper'
require 'json'

# Unit tests for Phrase::TeamsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TeamsApi' do
  before do
    # run before each test
    @api_instance = Phrase::TeamsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TeamsApi' do
    it 'should create an instance of TeamsApi' do
      expect(@api_instance).to be_instance_of(Phrase::TeamsApi)
    end
  end

  # unit tests for team_create
  # Create a Team
  # Create a new Team.
  # @param account_id Account ID
  # @param team_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [TeamDetail]
  describe 'team_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for team_delete
  # Delete Team
  # Delete the specified Team.
  # @param account_id Account ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'team_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for team_show
  # Get Team
  # Show the specified Team.
  # @param account_id Account ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [TeamDetail]
  describe 'team_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for team_update
  # Update Team
  # Update the specified Team.
  # @param account_id Account ID
  # @param id ID
  # @param team_update_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [TeamDetail]
  describe 'team_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for teams_list
  # List Teams
  # List all Teams for the given account.
  # @param account_id Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
  # @return [Array<Team>]
  describe 'teams_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for teams_projects_create
  # Add Project
  # Adds an existing project to the team.
  # @param account_id Account ID
  # @param team_id Team ID
  # @param teams_projects_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'teams_projects_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for teams_projects_delete
  # Remove Project
  # Removes a specified project from the specified team.
  # @param account_id Account ID
  # @param team_id Team ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'teams_projects_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for teams_spaces_create
  # Add Space
  # Adds an existing space to the team.
  # @param account_id Account ID
  # @param team_id Team ID
  # @param teams_spaces_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'teams_spaces_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for teams_spaces_delete
  # Remove Space
  # Removes a specified space from the specified team.
  # @param account_id Account ID
  # @param team_id Team ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'teams_spaces_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for teams_users_create
  # Add User
  # Adds an existing user to the team.
  # @param account_id Account ID
  # @param team_id Team ID
  # @param teams_users_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'teams_users_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for teams_users_delete
  # Remove User
  # Removes a specified user from the specified team.
  # @param account_id Account ID
  # @param team_id Team ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'teams_users_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
