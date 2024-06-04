require 'date'

module Phrase
  class LocaleReport
    attr_accessor :keys_count

    attr_accessor :translated_translations_percentage

    attr_accessor :unverified_translations_percentage

    attr_accessor :reviewed_translations_percentage

    attr_accessor :untranslated_keys_percentage

    attr_accessor :completed_translations_count

    attr_accessor :untranslated_keys_count

    attr_accessor :unverified_translations_count

    attr_accessor :reviewed_translations_count

    attr_accessor :source_word_count

    attr_accessor :word_count

    attr_accessor :word_count_unverified

    attr_accessor :word_count_missing

    attr_accessor :locale

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'keys_count' => :'keys_count',
        :'translated_translations_percentage' => :'translated_translations_percentage',
        :'unverified_translations_percentage' => :'unverified_translations_percentage',
        :'reviewed_translations_percentage' => :'reviewed_translations_percentage',
        :'untranslated_keys_percentage' => :'untranslated_keys_percentage',
        :'completed_translations_count' => :'completed_translations_count',
        :'untranslated_keys_count' => :'untranslated_keys_count',
        :'unverified_translations_count' => :'unverified_translations_count',
        :'reviewed_translations_count' => :'reviewed_translations_count',
        :'source_word_count' => :'source_word_count',
        :'word_count' => :'word_count',
        :'word_count_unverified' => :'word_count_unverified',
        :'word_count_missing' => :'word_count_missing',
        :'locale' => :'locale'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'keys_count' => :'Integer',
        :'translated_translations_percentage' => :'Float',
        :'unverified_translations_percentage' => :'Float',
        :'reviewed_translations_percentage' => :'Float',
        :'untranslated_keys_percentage' => :'Float',
        :'completed_translations_count' => :'Integer',
        :'untranslated_keys_count' => :'Integer',
        :'unverified_translations_count' => :'Integer',
        :'reviewed_translations_count' => :'Integer',
        :'source_word_count' => :'Integer',
        :'word_count' => :'Integer',
        :'word_count_unverified' => :'Integer',
        :'word_count_missing' => :'Integer',
        :'locale' => :'LocalePreview'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::LocaleReport` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::LocaleReport`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'keys_count')
        self.keys_count = attributes[:'keys_count']
      end

      if attributes.key?(:'translated_translations_percentage')
        self.translated_translations_percentage = attributes[:'translated_translations_percentage']
      end

      if attributes.key?(:'unverified_translations_percentage')
        self.unverified_translations_percentage = attributes[:'unverified_translations_percentage']
      end

      if attributes.key?(:'reviewed_translations_percentage')
        self.reviewed_translations_percentage = attributes[:'reviewed_translations_percentage']
      end

      if attributes.key?(:'untranslated_keys_percentage')
        self.untranslated_keys_percentage = attributes[:'untranslated_keys_percentage']
      end

      if attributes.key?(:'completed_translations_count')
        self.completed_translations_count = attributes[:'completed_translations_count']
      end

      if attributes.key?(:'untranslated_keys_count')
        self.untranslated_keys_count = attributes[:'untranslated_keys_count']
      end

      if attributes.key?(:'unverified_translations_count')
        self.unverified_translations_count = attributes[:'unverified_translations_count']
      end

      if attributes.key?(:'reviewed_translations_count')
        self.reviewed_translations_count = attributes[:'reviewed_translations_count']
      end

      if attributes.key?(:'source_word_count')
        self.source_word_count = attributes[:'source_word_count']
      end

      if attributes.key?(:'word_count')
        self.word_count = attributes[:'word_count']
      end

      if attributes.key?(:'word_count_unverified')
        self.word_count_unverified = attributes[:'word_count_unverified']
      end

      if attributes.key?(:'word_count_missing')
        self.word_count_missing = attributes[:'word_count_missing']
      end

      if attributes.key?(:'locale')
        self.locale = attributes[:'locale']
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
          keys_count == o.keys_count &&
          translated_translations_percentage == o.translated_translations_percentage &&
          unverified_translations_percentage == o.unverified_translations_percentage &&
          reviewed_translations_percentage == o.reviewed_translations_percentage &&
          untranslated_keys_percentage == o.untranslated_keys_percentage &&
          completed_translations_count == o.completed_translations_count &&
          untranslated_keys_count == o.untranslated_keys_count &&
          unverified_translations_count == o.unverified_translations_count &&
          reviewed_translations_count == o.reviewed_translations_count &&
          source_word_count == o.source_word_count &&
          word_count == o.word_count &&
          word_count_unverified == o.word_count_unverified &&
          word_count_missing == o.word_count_missing &&
          locale == o.locale
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [keys_count, translated_translations_percentage, unverified_translations_percentage, reviewed_translations_percentage, untranslated_keys_percentage, completed_translations_count, untranslated_keys_count, unverified_translations_count, reviewed_translations_count, source_word_count, word_count, word_count_unverified, word_count_missing, locale].hash
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
