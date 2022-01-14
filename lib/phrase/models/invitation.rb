require 'date'

module Phrase
  class Invitation
    attr_accessor :id

    attr_accessor :email

    attr_accessor :role

    attr_accessor :state

    attr_accessor :projects

    attr_accessor :locales

    attr_accessor :default_locale_codes

    attr_accessor :permissions

    attr_accessor :locale_ids

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :accepted_at

    attr_accessor :spaces

    attr_accessor :teams

    attr_accessor :project_role

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'email' => :'email',
        :'role' => :'role',
        :'state' => :'state',
        :'projects' => :'projects',
        :'locales' => :'locales',
        :'default_locale_codes' => :'default_locale_codes',
        :'permissions' => :'permissions',
        :'locale_ids' => :'locale_ids',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'accepted_at' => :'accepted_at',
        :'spaces' => :'spaces',
        :'teams' => :'teams',
        :'project_role' => :'project_role'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'email' => :'String',
        :'role' => :'String',
        :'state' => :'String',
        :'projects' => :'Array<ProjectShort>',
        :'locales' => :'Array<LocalePreview>',
        :'default_locale_codes' => :'Array<String>',
        :'permissions' => :'Object',
        :'locale_ids' => :'Array<String>',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'accepted_at' => :'DateTime',
        :'spaces' => :'Array<MemberSpaces>',
        :'teams' => :'Array<Items>',
        :'project_role' => :'Array<MemberProjectDetailProjectRoles>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::Invitation` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::Invitation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'role')
        self.role = attributes[:'role']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'projects')
        if (value = attributes[:'projects']).is_a?(Array)
          self.projects = value
        end
      end

      if attributes.key?(:'locales')
        if (value = attributes[:'locales']).is_a?(Array)
          self.locales = value
        end
      end

      if attributes.key?(:'default_locale_codes')
        if (value = attributes[:'default_locale_codes']).is_a?(Array)
          self.default_locale_codes = value
        end
      end

      if attributes.key?(:'permissions')
        self.permissions = attributes[:'permissions']
      end

      if attributes.key?(:'locale_ids')
        if (value = attributes[:'locale_ids']).is_a?(Array)
          self.locale_ids = value
        end
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'accepted_at')
        self.accepted_at = attributes[:'accepted_at']
      end

      if attributes.key?(:'spaces')
        if (value = attributes[:'spaces']).is_a?(Array)
          self.spaces = value
        end
      end

      if attributes.key?(:'teams')
        if (value = attributes[:'teams']).is_a?(Array)
          self.teams = value
        end
      end

      if attributes.key?(:'project_role')
        if (value = attributes[:'project_role']).is_a?(Array)
          self.project_role = value
        end
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
          email == o.email &&
          role == o.role &&
          state == o.state &&
          projects == o.projects &&
          locales == o.locales &&
          default_locale_codes == o.default_locale_codes &&
          permissions == o.permissions &&
          locale_ids == o.locale_ids &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          accepted_at == o.accepted_at &&
          spaces == o.spaces &&
          teams == o.teams &&
          project_role == o.project_role
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, email, role, state, projects, locales, default_locale_codes, permissions, locale_ids, created_at, updated_at, accepted_at, spaces, teams, project_role].hash
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
