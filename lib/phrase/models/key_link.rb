require 'date'

module Phrase
  class KeyLink
    # The timestamp when the link was created.
    attr_accessor :created_at

    # The timestamp when the link was last updated.
    attr_accessor :updated_at

    attr_accessor :created_by

    attr_accessor :updated_by

    attr_accessor :account

    attr_accessor :parent

    # The child translation keys linked to the parent.
    attr_accessor :children

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'created_by' => :'created_by',
        :'updated_by' => :'updated_by',
        :'account' => :'account',
        :'parent' => :'parent',
        :'children' => :'children'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'created_by' => :'UserPreview',
        :'updated_by' => :'UserPreview',
        :'account' => :'Account',
        :'parent' => :'KeyPreview',
        :'children' => :'Array<KeyPreview>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::KeyLink` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::KeyLink`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'updated_by')
        self.updated_by = attributes[:'updated_by']
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'parent')
        self.parent = attributes[:'parent']
      end

      if attributes.key?(:'children')
        if (value = attributes[:'children']).is_a?(Array)
          self.children = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @created_by.nil?
        invalid_properties.push('invalid value for "created_by", created_by cannot be nil.')
      end

      if @updated_by.nil?
        invalid_properties.push('invalid value for "updated_by", updated_by cannot be nil.')
      end

      if @account.nil?
        invalid_properties.push('invalid value for "account", account cannot be nil.')
      end

      if @parent.nil?
        invalid_properties.push('invalid value for "parent", parent cannot be nil.')
      end

      if @children.nil?
        invalid_properties.push('invalid value for "children", children cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @created_by.nil?
      return false if @updated_by.nil?
      return false if @account.nil?
      return false if @parent.nil?
      return false if @children.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          created_by == o.created_by &&
          updated_by == o.updated_by &&
          account == o.account &&
          parent == o.parent &&
          children == o.children
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [created_at, updated_at, created_by, updated_by, account, parent, children].hash
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