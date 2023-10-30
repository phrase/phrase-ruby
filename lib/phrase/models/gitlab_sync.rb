require 'date'

module Phrase
  class GitlabSync
    attr_accessor :id

    attr_accessor :project_id

    attr_accessor :gitlab_project_id

    attr_accessor :gitlab_branch_name

    attr_accessor :auto_import

    attr_accessor :auto_import_secret

    attr_accessor :auto_import_url

    attr_accessor :self_hosted_api_url

    attr_accessor :last_exported_at

    attr_accessor :last_imported_at

    attr_accessor :last_status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'project_id' => :'project_id',
        :'gitlab_project_id' => :'gitlab_project_id',
        :'gitlab_branch_name' => :'gitlab_branch_name',
        :'auto_import' => :'auto_import',
        :'auto_import_secret' => :'auto_import_secret',
        :'auto_import_url' => :'auto_import_url',
        :'self_hosted_api_url' => :'self_hosted_api_url',
        :'last_exported_at' => :'last_exported_at',
        :'last_imported_at' => :'last_imported_at',
        :'last_status' => :'last_status'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'project_id' => :'String',
        :'gitlab_project_id' => :'Integer',
        :'gitlab_branch_name' => :'String',
        :'auto_import' => :'Boolean',
        :'auto_import_secret' => :'String',
        :'auto_import_url' => :'String',
        :'self_hosted_api_url' => :'String',
        :'last_exported_at' => :'DateTime',
        :'last_imported_at' => :'DateTime',
        :'last_status' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::GitlabSync` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::GitlabSync`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'project_id')
        self.project_id = attributes[:'project_id']
      end

      if attributes.key?(:'gitlab_project_id')
        self.gitlab_project_id = attributes[:'gitlab_project_id']
      end

      if attributes.key?(:'gitlab_branch_name')
        self.gitlab_branch_name = attributes[:'gitlab_branch_name']
      end

      if attributes.key?(:'auto_import')
        self.auto_import = attributes[:'auto_import']
      end

      if attributes.key?(:'auto_import_secret')
        self.auto_import_secret = attributes[:'auto_import_secret']
      end

      if attributes.key?(:'auto_import_url')
        self.auto_import_url = attributes[:'auto_import_url']
      end

      if attributes.key?(:'self_hosted_api_url')
        self.self_hosted_api_url = attributes[:'self_hosted_api_url']
      end

      if attributes.key?(:'last_exported_at')
        self.last_exported_at = attributes[:'last_exported_at']
      end

      if attributes.key?(:'last_imported_at')
        self.last_imported_at = attributes[:'last_imported_at']
      end

      if attributes.key?(:'last_status')
        self.last_status = attributes[:'last_status']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          project_id == o.project_id &&
          gitlab_project_id == o.gitlab_project_id &&
          gitlab_branch_name == o.gitlab_branch_name &&
          auto_import == o.auto_import &&
          auto_import_secret == o.auto_import_secret &&
          auto_import_url == o.auto_import_url &&
          self_hosted_api_url == o.self_hosted_api_url &&
          last_exported_at == o.last_exported_at &&
          last_imported_at == o.last_imported_at &&
          last_status == o.last_status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, project_id, gitlab_project_id, gitlab_branch_name, auto_import, auto_import_secret, auto_import_url, self_hosted_api_url, last_exported_at, last_imported_at, last_status].hash
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
