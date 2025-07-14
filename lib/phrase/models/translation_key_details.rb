require 'date'

module Phrase
  class TranslationKeyDetails
    attr_accessor :id

    attr_accessor :name

    attr_accessor :description

    attr_accessor :name_hash

    attr_accessor :plural

    attr_accessor :use_ordinal_rules

    attr_accessor :tags

    attr_accessor :data_type

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :name_plural

    attr_accessor :comments_count

    attr_accessor :max_characters_allowed

    attr_accessor :screenshot_url

    attr_accessor :unformatted

    attr_accessor :xml_space_preserve

    attr_accessor :original_file

    attr_accessor :format_value_type

    attr_accessor :creator

    attr_accessor :custom_metadata

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'description' => :'description',
        :'name_hash' => :'name_hash',
        :'plural' => :'plural',
        :'use_ordinal_rules' => :'use_ordinal_rules',
        :'tags' => :'tags',
        :'data_type' => :'data_type',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'name_plural' => :'name_plural',
        :'comments_count' => :'comments_count',
        :'max_characters_allowed' => :'max_characters_allowed',
        :'screenshot_url' => :'screenshot_url',
        :'unformatted' => :'unformatted',
        :'xml_space_preserve' => :'xml_space_preserve',
        :'original_file' => :'original_file',
        :'format_value_type' => :'format_value_type',
        :'creator' => :'creator',
        :'custom_metadata' => :'custom_metadata'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'name_hash' => :'String',
        :'plural' => :'Boolean',
        :'use_ordinal_rules' => :'Boolean',
        :'tags' => :'Array<String>',
        :'data_type' => :'String',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'name_plural' => :'String',
        :'comments_count' => :'Integer',
        :'max_characters_allowed' => :'Integer',
        :'screenshot_url' => :'String',
        :'unformatted' => :'Boolean',
        :'xml_space_preserve' => :'Boolean',
        :'original_file' => :'String',
        :'format_value_type' => :'String',
        :'creator' => :'UserPreview',
        :'custom_metadata' => :'Hash<String, String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'TranslationKey'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::TranslationKeyDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::TranslationKeyDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'name_hash')
        self.name_hash = attributes[:'name_hash']
      end

      if attributes.key?(:'plural')
        self.plural = attributes[:'plural']
      end

      if attributes.key?(:'use_ordinal_rules')
        self.use_ordinal_rules = attributes[:'use_ordinal_rules']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'data_type')
        self.data_type = attributes[:'data_type']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'name_plural')
        self.name_plural = attributes[:'name_plural']
      end

      if attributes.key?(:'comments_count')
        self.comments_count = attributes[:'comments_count']
      end

      if attributes.key?(:'max_characters_allowed')
        self.max_characters_allowed = attributes[:'max_characters_allowed']
      end

      if attributes.key?(:'screenshot_url')
        self.screenshot_url = attributes[:'screenshot_url']
      end

      if attributes.key?(:'unformatted')
        self.unformatted = attributes[:'unformatted']
      end

      if attributes.key?(:'xml_space_preserve')
        self.xml_space_preserve = attributes[:'xml_space_preserve']
      end

      if attributes.key?(:'original_file')
        self.original_file = attributes[:'original_file']
      end

      if attributes.key?(:'format_value_type')
        self.format_value_type = attributes[:'format_value_type']
      end

      if attributes.key?(:'creator')
        self.creator = attributes[:'creator']
      end

      if attributes.key?(:'custom_metadata')
        if (value = attributes[:'custom_metadata']).is_a?(Hash)
          self.custom_metadata = value
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
          name == o.name &&
          description == o.description &&
          name_hash == o.name_hash &&
          plural == o.plural &&
          use_ordinal_rules == o.use_ordinal_rules &&
          tags == o.tags &&
          data_type == o.data_type &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          name_plural == o.name_plural &&
          comments_count == o.comments_count &&
          max_characters_allowed == o.max_characters_allowed &&
          screenshot_url == o.screenshot_url &&
          unformatted == o.unformatted &&
          xml_space_preserve == o.xml_space_preserve &&
          original_file == o.original_file &&
          format_value_type == o.format_value_type &&
          creator == o.creator &&
          custom_metadata == o.custom_metadata
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, description, name_hash, plural, use_ordinal_rules, tags, data_type, created_at, updated_at, name_plural, comments_count, max_characters_allowed, screenshot_url, unformatted, xml_space_preserve, original_file, format_value_type, creator, custom_metadata].hash
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
