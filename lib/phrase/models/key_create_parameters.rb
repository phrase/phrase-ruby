require 'date'

module Phrase
  class KeyCreateParameters
    # specify the branch to use
    attr_accessor :branch

    # Key name
    attr_accessor :name

    # Key description (usually includes contextual information for translators)
    attr_accessor :description

    # Indicates whether key supports pluralization
    attr_accessor :plural

    # Plural name for the key (used in some file formats, e.g. Gettext)
    attr_accessor :name_plural

    # Type of the key. Can be one of the following: string, number, boolean, array, markdown.
    attr_accessor :data_type

    # List of tags separated by comma to be associated with the key.
    attr_accessor :tags

    # Max. number of characters translations for this key can have.
    attr_accessor :max_characters_allowed

    # Screenshot/image for the key. This parameter is deprecated. Please use the Screenshots endpoint instead.
    attr_accessor :screenshot

    # Indicates whether the screenshot will be deleted. This parameter is deprecated. Please use the Screenshots endpoint instead.
    attr_accessor :remove_screenshot

    # Indicates whether the key should be exported as \"unformatted\". Supported by Android XML and other formats.
    attr_accessor :unformatted

    # Indicates whether the key should be exported with \"xml:space=preserve\". Supported by several XML-based formats.
    attr_accessor :xml_space_preserve

    # Original file attribute. Used in some formats, e.g. XLIFF.
    attr_accessor :original_file

    # NSStringLocalizedFormatKey attribute. Used in .stringsdict format.
    attr_accessor :localized_format_string

    # NSStringLocalizedFormatKey attribute. Used in .stringsdict format.
    attr_accessor :localized_format_key

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'branch' => :'branch',
        :'name' => :'name',
        :'description' => :'description',
        :'plural' => :'plural',
        :'name_plural' => :'name_plural',
        :'data_type' => :'data_type',
        :'tags' => :'tags',
        :'max_characters_allowed' => :'max_characters_allowed',
        :'screenshot' => :'screenshot',
        :'remove_screenshot' => :'remove_screenshot',
        :'unformatted' => :'unformatted',
        :'xml_space_preserve' => :'xml_space_preserve',
        :'original_file' => :'original_file',
        :'localized_format_string' => :'localized_format_string',
        :'localized_format_key' => :'localized_format_key'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'branch' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'plural' => :'Boolean',
        :'name_plural' => :'String',
        :'data_type' => :'String',
        :'tags' => :'String',
        :'max_characters_allowed' => :'Integer',
        :'screenshot' => :'File',
        :'remove_screenshot' => :'Boolean',
        :'unformatted' => :'Boolean',
        :'xml_space_preserve' => :'Boolean',
        :'original_file' => :'String',
        :'localized_format_string' => :'String',
        :'localized_format_key' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::KeyCreateParameters` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::KeyCreateParameters`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'branch')
        self.branch = attributes[:'branch']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'plural')
        self.plural = attributes[:'plural']
      end

      if attributes.key?(:'name_plural')
        self.name_plural = attributes[:'name_plural']
      end

      if attributes.key?(:'data_type')
        self.data_type = attributes[:'data_type']
      end

      if attributes.key?(:'tags')
        self.tags = attributes[:'tags']
      end

      if attributes.key?(:'max_characters_allowed')
        self.max_characters_allowed = attributes[:'max_characters_allowed']
      end

      if attributes.key?(:'screenshot')
        self.screenshot = attributes[:'screenshot']
      end

      if attributes.key?(:'remove_screenshot')
        self.remove_screenshot = attributes[:'remove_screenshot']
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

      if attributes.key?(:'localized_format_string')
        self.localized_format_string = attributes[:'localized_format_string']
      end

      if attributes.key?(:'localized_format_key')
        self.localized_format_key = attributes[:'localized_format_key']
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
          branch == o.branch &&
          name == o.name &&
          description == o.description &&
          plural == o.plural &&
          name_plural == o.name_plural &&
          data_type == o.data_type &&
          tags == o.tags &&
          max_characters_allowed == o.max_characters_allowed &&
          screenshot == o.screenshot &&
          remove_screenshot == o.remove_screenshot &&
          unformatted == o.unformatted &&
          xml_space_preserve == o.xml_space_preserve &&
          original_file == o.original_file &&
          localized_format_string == o.localized_format_string &&
          localized_format_key == o.localized_format_key
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [branch, name, description, plural, name_plural, data_type, tags, max_characters_allowed, screenshot, remove_screenshot, unformatted, xml_space_preserve, original_file, localized_format_string, localized_format_key].hash
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
