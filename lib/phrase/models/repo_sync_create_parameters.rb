require 'date'

module Phrase
  class RepoSyncCreateParameters
    # ID of the project to connect the Repo Sync to.
    attr_accessor :project_id

    # The Git provider to use.
    attr_accessor :git_provider

    # The authentication method used to connect to the Git provider. Defaults to `token` if not specified.  Valid values: - `token` — Personal access token stored on the Repo Sync. Supported by all providers. - `github_app` — Authenticate via the Phrase GitHub App installation on your account. GitHub only. The account must already have the GitHub App installed; if not, the response will include a `github_app_installation_url`. - `self_hosted` — Token-based auth for self-hosted Git instances. Requires `custom_api_endpoint`.
    attr_accessor :connection_type

    # Full repository name including the owner, e.g. `my-org/my-repo`.
    attr_accessor :repo_name

    # The default branch to use for imports and exports.
    attr_accessor :base_branch

    # Branch that translations are exported to before opening a pull request. If omitted, exports go directly to `base_branch`.
    attr_accessor :pr_branch

    # Enable automatic import of translations triggered by pushes to the repository.
    attr_accessor :auto_import

    # Personal access token for the Git provider. Required when `connection_type` is `token` or `self_hosted`. Not used for `github_app`.
    attr_accessor :access_token

    # Custom API endpoint URL for self-hosted Git instances. Required when `connection_type` is `self_hosted`.
    attr_accessor :custom_api_endpoint

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'project_id' => :'project_id',
        :'git_provider' => :'git_provider',
        :'connection_type' => :'connection_type',
        :'repo_name' => :'repo_name',
        :'base_branch' => :'base_branch',
        :'pr_branch' => :'pr_branch',
        :'auto_import' => :'auto_import',
        :'access_token' => :'access_token',
        :'custom_api_endpoint' => :'custom_api_endpoint'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'project_id' => :'String',
        :'git_provider' => :'String',
        :'connection_type' => :'String',
        :'repo_name' => :'String',
        :'base_branch' => :'String',
        :'pr_branch' => :'String',
        :'auto_import' => :'Boolean',
        :'access_token' => :'String',
        :'custom_api_endpoint' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::RepoSyncCreateParameters` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::RepoSyncCreateParameters`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'project_id')
        self.project_id = attributes[:'project_id']
      end

      if attributes.key?(:'git_provider')
        self.git_provider = attributes[:'git_provider']
      else
        self.git_provider = 'github'
      end

      if attributes.key?(:'connection_type')
        self.connection_type = attributes[:'connection_type']
      end

      if attributes.key?(:'repo_name')
        self.repo_name = attributes[:'repo_name']
      end

      if attributes.key?(:'base_branch')
        self.base_branch = attributes[:'base_branch']
      end

      if attributes.key?(:'pr_branch')
        self.pr_branch = attributes[:'pr_branch']
      end

      if attributes.key?(:'auto_import')
        self.auto_import = attributes[:'auto_import']
      end

      if attributes.key?(:'access_token')
        self.access_token = attributes[:'access_token']
      end

      if attributes.key?(:'custom_api_endpoint')
        self.custom_api_endpoint = attributes[:'custom_api_endpoint']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @project_id.nil?
        invalid_properties.push('invalid value for "project_id", project_id cannot be nil.')
      end

      if @connection_type.nil?
        invalid_properties.push('invalid value for "connection_type", connection_type cannot be nil.')
      end

      if @repo_name.nil?
        invalid_properties.push('invalid value for "repo_name", repo_name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @project_id.nil?
      git_provider_validator = EnumAttributeValidator.new('String', ["github", "gitlab", "bitbucket"])
      return false unless git_provider_validator.valid?(@git_provider)
      return false if @connection_type.nil?
      connection_type_validator = EnumAttributeValidator.new('String', ["token", "github_app", "self_hosted"])
      return false unless connection_type_validator.valid?(@connection_type)
      return false if @repo_name.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] git_provider Object to be assigned
    def git_provider=(git_provider)
      validator = EnumAttributeValidator.new('String', ["github", "gitlab", "bitbucket"])
      unless validator.valid?(git_provider)
        fail ArgumentError, "invalid value for \"git_provider\", must be one of #{validator.allowable_values}."
      end
      @git_provider = git_provider
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] connection_type Object to be assigned
    def connection_type=(connection_type)
      validator = EnumAttributeValidator.new('String', ["token", "github_app", "self_hosted"])
      unless validator.valid?(connection_type)
        fail ArgumentError, "invalid value for \"connection_type\", must be one of #{validator.allowable_values}."
      end
      @connection_type = connection_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          project_id == o.project_id &&
          git_provider == o.git_provider &&
          connection_type == o.connection_type &&
          repo_name == o.repo_name &&
          base_branch == o.base_branch &&
          pr_branch == o.pr_branch &&
          auto_import == o.auto_import &&
          access_token == o.access_token &&
          custom_api_endpoint == o.custom_api_endpoint
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [project_id, git_provider, connection_type, repo_name, base_branch, pr_branch, auto_import, access_token, custom_api_endpoint].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :Time
        Time.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        Phrase.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
