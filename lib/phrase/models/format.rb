require 'date'

module Phrase
  class Format
    # Human-readable display name of the format.
    attr_accessor :name

    # Identifier used to reference this format in API requests, such as the file_format parameter on the uploads and downloads endpoints.
    attr_accessor :api_name

    # Human-readable summary of the format and its typical use case.
    attr_accessor :description

    # Default file extension associated with this format.
    attr_accessor :extension

    # Default character encoding used when reading or writing files in this format.
    attr_accessor :default_encoding

    # Whether locale files can be imported using this format.
    attr_accessor :importable

    # Whether locale files can be exported using this format.
    attr_accessor :exportable

    # Conventional file path pattern for this format. Contains locale_name as a placeholder for the locale identifier.
    attr_accessor :default_file

    # When true, exported files contain the default locale's content for any key that has no translation in the target locale.
    attr_accessor :renders_default_locale

    # When true, files in this format embed locale information so Phrase can detect the locale automatically on import.
    attr_accessor :includes_locale_information

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'api_name' => :'api_name',
        :'description' => :'description',
        :'extension' => :'extension',
        :'default_encoding' => :'default_encoding',
        :'importable' => :'importable',
        :'exportable' => :'exportable',
        :'default_file' => :'default_file',
        :'renders_default_locale' => :'renders_default_locale',
        :'includes_locale_information' => :'includes_locale_information'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'api_name' => :'String',
        :'description' => :'String',
        :'extension' => :'String',
        :'default_encoding' => :'String',
        :'importable' => :'Boolean',
        :'exportable' => :'Boolean',
        :'default_file' => :'String',
        :'renders_default_locale' => :'Boolean',
        :'includes_locale_information' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::Format` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::Format`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'api_name')
        self.api_name = attributes[:'api_name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'extension')
        self.extension = attributes[:'extension']
      end

      if attributes.key?(:'default_encoding')
        self.default_encoding = attributes[:'default_encoding']
      end

      if attributes.key?(:'importable')
        self.importable = attributes[:'importable']
      end

      if attributes.key?(:'exportable')
        self.exportable = attributes[:'exportable']
      end

      if attributes.key?(:'default_file')
        self.default_file = attributes[:'default_file']
      end

      if attributes.key?(:'renders_default_locale')
        self.renders_default_locale = attributes[:'renders_default_locale']
      end

      if attributes.key?(:'includes_locale_information')
        self.includes_locale_information = attributes[:'includes_locale_information']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @api_name.nil?
        invalid_properties.push('invalid value for "api_name", api_name cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @extension.nil?
        invalid_properties.push('invalid value for "extension", extension cannot be nil.')
      end

      if @default_encoding.nil?
        invalid_properties.push('invalid value for "default_encoding", default_encoding cannot be nil.')
      end

      if @importable.nil?
        invalid_properties.push('invalid value for "importable", importable cannot be nil.')
      end

      if @exportable.nil?
        invalid_properties.push('invalid value for "exportable", exportable cannot be nil.')
      end

      if @default_file.nil?
        invalid_properties.push('invalid value for "default_file", default_file cannot be nil.')
      end

      if @renders_default_locale.nil?
        invalid_properties.push('invalid value for "renders_default_locale", renders_default_locale cannot be nil.')
      end

      if @includes_locale_information.nil?
        invalid_properties.push('invalid value for "includes_locale_information", includes_locale_information cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @api_name.nil?
      return false if @description.nil?
      return false if @extension.nil?
      return false if @default_encoding.nil?
      return false if @importable.nil?
      return false if @exportable.nil?
      return false if @default_file.nil?
      return false if @renders_default_locale.nil?
      return false if @includes_locale_information.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          api_name == o.api_name &&
          description == o.description &&
          extension == o.extension &&
          default_encoding == o.default_encoding &&
          importable == o.importable &&
          exportable == o.exportable &&
          default_file == o.default_file &&
          renders_default_locale == o.renders_default_locale &&
          includes_locale_information == o.includes_locale_information
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, api_name, description, extension, default_encoding, importable, exportable, default_file, renders_default_locale, includes_locale_information].hash
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
