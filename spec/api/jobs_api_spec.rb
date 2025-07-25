require 'spec_helper'
require 'json'

# Unit tests for Phrase::JobsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'JobsApi' do
  before do
    # run before each test
    @api_instance = Phrase::JobsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of JobsApi' do
    it 'should create an instance of JobsApi' do
      expect(@api_instance).to be_instance_of(Phrase::JobsApi)
    end
  end

  # unit tests for job_complete
  # Complete a job
  # Mark a job as completed.
  # @param project_id Project ID
  # @param id ID
  # @param job_complete_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [JobDetails]
  describe 'job_complete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_create
  # Create a job
  # Create a new job.
  # @param project_id Project ID
  # @param job_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [JobDetails]
  describe 'job_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_delete
  # Delete a job
  # Delete an existing job.
  # @param project_id Project ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :branch specify the branch to use
  # @return [nil]
  describe 'job_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_keys_create
  # Add keys to job
  # Add multiple keys to a existing job.
  # @param project_id Project ID
  # @param id ID
  # @param job_keys_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [JobDetails]
  describe 'job_keys_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_keys_delete
  # Remove keys from job
  # Remove multiple keys from existing job.
  # @param project_id Project ID
  # @param id ID
  # @param job_keys_delete_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [nil]
  describe 'job_keys_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_lock
  # Lock a job
  # If you are the job owner, you may lock a job using this API request.
  # @param project_id Project ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :branch specify the branch to use
  # @return [nil]
  describe 'job_lock test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_reopen
  # Reopen a job
  # Mark a job as uncompleted.
  # @param project_id Project ID
  # @param id ID
  # @param job_reopen_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [JobDetails]
  describe 'job_reopen test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_show
  # Get a single job
  # Get details on a single job for a given project.
  # @param project_id Project ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :branch Branch to use
  # @option opts [Boolean] :include_annotations Include job-locale annotations in the response
  # @return [JobDetails]
  describe 'job_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_start
  # Start a job
  # Starts an existing job in state draft.
  # @param project_id Project ID
  # @param id ID
  # @param job_start_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [JobDetails]
  describe 'job_start test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_unlock
  # Unlock a job
  # If you are the job owner, you may unlock a locked job using this API request.
  # @param project_id Project ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :branch specify the branch to use
  # @return [nil]
  describe 'job_unlock test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for job_update
  # Update a job
  # Update an existing job.
  # @param project_id Project ID
  # @param id ID
  # @param job_update_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [JobDetails]
  describe 'job_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for jobs_by_account
  # List account jobs
  # List all jobs for the given account.
  # @param account_id Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
  # @option opts [String] :owned_by filter by user owning job
  # @option opts [String] :assigned_to filter by user assigned to job
  # @option opts [String] :state filter by state of job; valid states are: &#x60;draft&#x60;, &#x60;in_progress&#x60;, &#x60;completed&#x60;
  # @option opts [String] :updated_since filter by jobs updated since given date
  # @return [Array<Job>]
  describe 'jobs_by_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for jobs_list
  # List jobs
  # List all jobs for the given project.
  # @param project_id Project ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
  # @option opts [String] :branch Branch to use
  # @option opts [String] :owned_by filter by user owning job
  # @option opts [String] :assigned_to filter by user assigned to job
  # @option opts [String] :state filter by state of job; valid states are: &#x60;draft&#x60;, &#x60;in_progress&#x60;, &#x60;completed&#x60;
  # @option opts [String] :updated_since filter by jobs updated since given date
  # @return [Array<Job>]
  describe 'jobs_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
