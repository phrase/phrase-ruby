require 'spec_helper'
require 'json'

# Unit tests for Phrase::KeysApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'KeysApi' do
  before do
    # run before each test
    @api_instance = Phrase::KeysApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of KeysApi' do
    it 'should create an instance of KeysApi' do
      expect(@api_instance).to be_instance_of(Phrase::KeysApi)
    end
  end

  # unit tests for key_create
  # Create a key
  # Create a new key.
  # @param project_id Project ID
  # @param key_create_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [TranslationKeyDetails]
  describe 'key_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for key_delete
  # Delete a key
  # Delete an existing key.
  # @param project_id Project ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :branch specify the branch to use
  # @return [nil]
  describe 'key_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for key_show
  # Get a single key
  # Get details on a single key for a given project.
  # @param project_id Project ID
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :branch specify the branch to use
  # @return [TranslationKeyDetails]
  describe 'key_show test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for key_update
  # Update a key
  # Update an existing key.
  # @param project_id Project ID
  # @param id ID
  # @param key_update_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [TranslationKeyDetails]
  describe 'key_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for keys_delete_collection
  # Delete collection of keys
  # Delete all keys matching query. Same constraints as list. Please limit the number of affected keys to about 1,000 as you might experience timeouts otherwise.
  # @param project_id Project ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [String] :branch specify the branch to use
  # @option opts [String] :q Specify a query to do broad search for keys by name (including wildcards).&lt;br&gt;&lt;br&gt; The following qualifiers are also supported in the search term:&lt;br&gt; &lt;ul&gt;   &lt;li&gt;&lt;code&gt;ids:key_id,...&lt;/code&gt; for queries on a comma-separated list of ids&lt;/li&gt;   &lt;li&gt;&lt;code&gt;name:key_name&lt;/code&gt; for text queries on exact key names - spaces, commas, and colons  need to be escaped with double backslashes&lt;/li&gt;   &lt;li&gt;&lt;code&gt;tags:tag_name&lt;/code&gt; to filter for keys with certain tags&lt;/li&gt;   &lt;li&gt;&lt;code&gt;translated:{true|false}&lt;/code&gt; for translation status (also requires &lt;code&gt;locale_id&lt;/code&gt; to be specified)&lt;/li&gt;   &lt;li&gt;&lt;code&gt;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&lt;/code&gt; for date range queries&lt;/li&gt;   &lt;li&gt;&lt;code&gt;unmentioned_in_upload:upload_id,...&lt;/code&gt; to filter keys unmentioned within upload. When multiple upload IDs provided, matches only keys not mentioned in &lt;strong&gt;all&lt;/strong&gt; uploads&lt;/li&gt; &lt;/ul&gt; &lt;br/&gt; &lt;p&gt;&lt;strong&gt;Caution:&lt;/strong&gt; Query parameters with empty values will be treated as though they are not included in the request and will be ignored.&lt;/p&gt; &lt;br/&gt; Find more examples &lt;a href&#x3D;\&quot;#overview--usage-examples\&quot;&gt;here&lt;/a&gt;. 
  # @option opts [String] :locale_id Locale used to determine the translation state of a key when filtering for untranslated or translated keys.
  # @return [AffectedResources]
  describe 'keys_delete_collection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for keys_exclude
  # Exclude a locale on a collection of keys
  # Exclude a locale on keys matching query. Same constraints as list.
  # @param project_id Project ID
  # @param keys_exclude_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [AffectedResources]
  describe 'keys_exclude test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for keys_include
  # Include a locale on a collection of keys
  # Include a locale on keys matching query. Same constraints as list.
  # @param project_id Project ID
  # @param keys_include_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [AffectedResources]
  describe 'keys_include test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for keys_list
  # List keys
  # List all keys for the given project. Alternatively you can POST requests to /search.
  # @param project_id Project ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
  # @option opts [String] :branch specify the branch to use
  # @option opts [String] :sort Sort by field. Can be one of: name, created_at, updated_at.
  # @option opts [String] :order Order direction. Can be one of: asc, desc.
  # @option opts [String] :q Specify a query to do broad search for keys by name (including wildcards).&lt;br&gt;&lt;br&gt; The following qualifiers are also supported in the search term:&lt;br&gt; &lt;ul&gt;   &lt;li&gt;&lt;code&gt;ids:key_id,...&lt;/code&gt; for queries on a comma-separated list of ids&lt;/li&gt;   &lt;li&gt;&lt;code&gt;name:key_name&lt;/code&gt; for text queries on exact key names - spaces, commas, and colons  need to be escaped with double backslashes&lt;/li&gt;   &lt;li&gt;&lt;code&gt;tags:tag_name&lt;/code&gt; to filter for keys with certain tags&lt;/li&gt;   &lt;li&gt;&lt;code&gt;translated:{true|false}&lt;/code&gt; for translation status (also requires &lt;code&gt;locale_id&lt;/code&gt; to be specified)&lt;/li&gt;   &lt;li&gt;&lt;code&gt;updated_at:{&gt;&#x3D;|&lt;&#x3D;}2013-02-21T00:00:00Z&lt;/code&gt; for date range queries&lt;/li&gt;   &lt;li&gt;&lt;code&gt;unmentioned_in_upload:upload_id,...&lt;/code&gt; to filter keys unmentioned within upload. When multiple upload IDs provided, matches only keys not mentioned in &lt;strong&gt;all&lt;/strong&gt; uploads&lt;/li&gt; &lt;/ul&gt; &lt;br/&gt; &lt;p&gt;&lt;strong&gt;Caution:&lt;/strong&gt; Query parameters with empty values will be treated as though they are not included in the request and will be ignored.&lt;/p&gt; &lt;br/&gt; Find more examples &lt;a href&#x3D;\&quot;#overview--usage-examples\&quot;&gt;here&lt;/a&gt;. 
  # @option opts [String] :locale_id Locale used to determine the translation state of a key when filtering for untranslated or translated keys.
  # @return [Array<TranslationKey>]
  describe 'keys_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for keys_search
  # Search keys
  # Search keys for the given project matching query.
  # @param project_id Project ID
  # @param keys_search_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @option opts [Integer] :page Page number
  # @option opts [Integer] :per_page Limit on the number of objects to be returned, between 1 and 100. 25 by default
  # @return [Array<TranslationKey>]
  describe 'keys_search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for keys_tag
  # Add tags to collection of keys
  # Tags all keys matching query. Same constraints as list.
  # @param project_id Project ID
  # @param keys_tag_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [AffectedResources]
  describe 'keys_tag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for keys_untag
  # Remove tags from collection of keys
  # Removes specified tags from keys matching query.
  # @param project_id Project ID
  # @param keys_untag_parameters 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_phrase_app_otp Two-Factor-Authentication token (optional)
  # @return [AffectedResources]
  describe 'keys_untag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
