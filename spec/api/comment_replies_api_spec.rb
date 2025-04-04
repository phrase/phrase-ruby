require 'spec_helper'
require 'json'

# Unit tests for Phrase::CommentRepliesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CommentRepliesApi' do
  before do
    # run before each test
    @api_instance = Phrase::CommentRepliesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CommentRepliesApi' do
    it 'should create an instance of CommentRepliesApi' do
      expect(@api_instance).to be_instance_of(Phrase::CommentRepliesApi)
    end
  end

  # unit tests for replies_list
  # List replies
  # List all replies for a comment.
  # @param project_id Project ID
  # @param key_id Translation Key ID
  # @param comment_id Comment ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
  # @option opts [String] :branch specify the branch to use
  # @option opts [String] :query Search query for comment messages
  # @option opts [Array<String>] :filters Specify the filter for the comments
  # @option opts [String] :order Order direction. Can be one of: asc, desc.
  # @return [Array<Comment>]
  describe 'replies_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reply_create
  # Create a reply
  # Create a new reply for a comment.
  # @param project_id Project ID
  # @param key_id Translation Key ID
  # @param comment_id Comment ID
  # @param comment_create_parameters1 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [Comment]
  describe 'reply_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reply_delete
  # Delete a reply
  # Delete an existing reply.
  # @param project_id Project ID
  # @param key_id Translation Key ID
  # @param comment_id Comment ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :branch specify the branch to use
  # @return [nil]
  describe 'reply_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reply_mark_as_read
  # Mark a reply as read
  # Mark a reply as read.
  # @param project_id Project ID
  # @param key_id Translation Key ID
  # @param comment_id Comment ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :branch specify the branch to use
  # @return [nil]
  describe 'reply_mark_as_read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reply_mark_as_unread
  # Mark a reply as unread
  # Mark a reply as unread.
  # @param project_id Project ID
  # @param key_id Translation Key ID
  # @param comment_id Comment ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :branch specify the branch to use
  # @return [nil]
  describe 'reply_mark_as_unread test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reply_show
  # Get a single reply
  # Get details on a single reply.
  # @param project_id Project ID
  # @param key_id Translation Key ID
  # @param comment_id Comment ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :branch specify the branch to use
  # @return [Comment]
  describe 'reply_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
