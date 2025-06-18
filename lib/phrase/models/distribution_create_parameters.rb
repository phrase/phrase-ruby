require 'date'

module Phrase
  class DistributionCreateParameters
    # Name of the distribution
    attr_accessor :name

    # Project id the distribution should be assigned to.
    attr_accessor :project_id

    # List of platforms the distribution should support. Valid values are: * `android` * `ios` * `flutter` * `i18next` * `rails`
    attr_accessor :platforms

    # List of locale ids that will be part of distribution releases
    attr_accessor :locale_ids

    # Additional formatting and render options. Only `enclose_in_cdata` is available for platform `android`. 
    attr_accessor :format_options

    # Use fallback locale if there is no translation in the current locale.
    attr_accessor :fallback_locales_enabled

    # Indicates whether to fallback to non regional locale when locale can not be found
    attr_accessor :fallback_to_non_regional_locale

    # Indicates whether to fallback to projects default locale when locale can not be found
    attr_accessor :fallback_to_default_locale

    # Use last reviewed instead of latest translation in a project
    attr_accessor :use_last_reviewed_version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'project_id' => :'project_id',
        :'platforms' => :'platforms',
        :'locale_ids' => :'locale_ids',
        :'format_options' => :'format_options',
        :'fallback_locales_enabled' => :'fallback_locales_enabled',
        :'fallback_to_non_regional_locale' => :'fallback_to_non_regional_locale',
        :'fallback_to_default_locale' => :'fallback_to_default_locale',
        :'use_last_reviewed_version' => :'use_last_reviewed_version'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'project_id' => :'String',
        :'platforms' => :'Array<String>',
        :'locale_ids' => :'Array<String>',
        :'format_options' => :'Hash<String, String>',
        :'fallback_locales_enabled' => :'Boolean',
        :'fallback_to_non_regional_locale' => :'Boolean',
        :'fallback_to_default_locale' => :'Boolean',
        :'use_last_reviewed_version' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::DistributionCreateParameters` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::DistributionCreateParameters`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'project_id')
        self.project_id = attributes[:'project_id']
      end

      if attributes.key?(:'platforms')
        if (value = attributes[:'platforms']).is_a?(Array)
          self.platforms = value
        end
      end

      if attributes.key?(:'locale_ids')
        if (value = attributes[:'locale_ids']).is_a?(Array)
          self.locale_ids = value
        end
      end

      if attributes.key?(:'format_options')
        if (value = attributes[:'format_options']).is_a?(Hash)
          self.format_options = value
        end
      end

      if attributes.key?(:'fallback_locales_enabled')
        self.fallback_locales_enabled = attributes[:'fallback_locales_enabled']
      end

      if attributes.key?(:'fallback_to_non_regional_locale')
        self.fallback_to_non_regional_locale = attributes[:'fallback_to_non_regional_locale']
      end

      if attributes.key?(:'fallback_to_default_locale')
        self.fallback_to_default_locale = attributes[:'fallback_to_default_locale']
      end

      if attributes.key?(:'use_last_reviewed_version')
        self.use_last_reviewed_version = attributes[:'use_last_reviewed_version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @project_id.nil?
        invalid_properties.push('invalid value for "project_id", project_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @project_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          project_id == o.project_id &&
          platforms == o.platforms &&
          locale_ids == o.locale_ids &&
          format_options == o.format_options &&
          fallback_locales_enabled == o.fallback_locales_enabled &&
          fallback_to_non_regional_locale == o.fallback_to_non_regional_locale &&
          fallback_to_default_locale == o.fallback_to_default_locale &&
          use_last_reviewed_version == o.use_last_reviewed_version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, project_id, platforms, locale_ids, format_options, fallback_locales_enabled, fallback_to_non_regional_locale, fallback_to_default_locale, use_last_reviewed_version].hash
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
