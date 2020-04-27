require 'date'

module Phrase
  class LocaleDownload
    # specify the branch to use
    attr_accessor :branch

    # File format name. See the format guide for all supported file formats.
    attr_accessor :file_format

    # Limit results to keys tagged with a list of comma separated tag names.
    attr_accessor :tags

    # Limit download to tagged keys. This parameter is deprecated. Please use the \"tags\" parameter instead
    attr_accessor :tag

    # Indicates whether keys without translations should be included in the output as well.
    attr_accessor :include_empty_translations

    # Include translated keys in the locale file. Use in combination with include_empty_translations to obtain only untranslated keys.
    attr_accessor :include_translated_keys

    # Indicates whether [NOTRANSLATE] tags should be kept.
    attr_accessor :keep_notranslate_tags

    # This option is obsolete. Projects that were created on or after Nov 29th 2019 or that did not contain emoji by then will not require this flag any longer since emoji are now supported natively.
    attr_accessor :convert_emoji

    # Additional formatting and render options. See the <a href=\"https://help.phrase.com/help/supported-platforms-and-formats\">format guide</a> for a list of options available for each format. Specify format options like this: <code>...&format_options[foo]=bar</code>
    attr_accessor :format_options

    # Enforces a specific encoding on the file contents. Valid options are \"UTF-8\", \"UTF-16\" and \"ISO-8859-1\".
    attr_accessor :encoding

    # Indicates whether the locale file should skip all unverified translations. This parameter is deprecated and should be replaced with <code>include_unverified_translations</code>.
    attr_accessor :skip_unverified_translations

    # if set to false unverified translations are excluded
    attr_accessor :include_unverified_translations

    # If set to true the last reviewed version of a translation is used. This is only available if the review workflow (currently in beta) is enabled for the project.
    attr_accessor :use_last_reviewed_version

    # If a key has no translation in the locale being downloaded the translation in the fallback locale will be used. Provide the public ID of the locale that should be used as the fallback. Requires include_empty_translations to be set to <code>true</code>.
    attr_accessor :fallback_locale_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'branch' => :'branch',
        :'file_format' => :'file_format',
        :'tags' => :'tags',
        :'tag' => :'tag',
        :'include_empty_translations' => :'include_empty_translations',
        :'include_translated_keys' => :'include_translated_keys',
        :'keep_notranslate_tags' => :'keep_notranslate_tags',
        :'convert_emoji' => :'convert_emoji',
        :'format_options' => :'format_options',
        :'encoding' => :'encoding',
        :'skip_unverified_translations' => :'skip_unverified_translations',
        :'include_unverified_translations' => :'include_unverified_translations',
        :'use_last_reviewed_version' => :'use_last_reviewed_version',
        :'fallback_locale_id' => :'fallback_locale_id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'branch' => :'String',
        :'file_format' => :'String',
        :'tags' => :'String',
        :'tag' => :'String',
        :'include_empty_translations' => :'String',
        :'include_translated_keys' => :'String',
        :'keep_notranslate_tags' => :'String',
        :'convert_emoji' => :'String',
        :'format_options' => :'String',
        :'encoding' => :'String',
        :'skip_unverified_translations' => :'String',
        :'include_unverified_translations' => :'String',
        :'use_last_reviewed_version' => :'String',
        :'fallback_locale_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::LocaleDownload` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::LocaleDownload`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'branch')
        self.branch = attributes[:'branch']
      end

      if attributes.key?(:'file_format')
        self.file_format = attributes[:'file_format']
      end

      if attributes.key?(:'tags')
        self.tags = attributes[:'tags']
      end

      if attributes.key?(:'tag')
        self.tag = attributes[:'tag']
      end

      if attributes.key?(:'include_empty_translations')
        self.include_empty_translations = attributes[:'include_empty_translations']
      end

      if attributes.key?(:'include_translated_keys')
        self.include_translated_keys = attributes[:'include_translated_keys']
      end

      if attributes.key?(:'keep_notranslate_tags')
        self.keep_notranslate_tags = attributes[:'keep_notranslate_tags']
      end

      if attributes.key?(:'convert_emoji')
        self.convert_emoji = attributes[:'convert_emoji']
      end

      if attributes.key?(:'format_options')
        self.format_options = attributes[:'format_options']
      end

      if attributes.key?(:'encoding')
        self.encoding = attributes[:'encoding']
      end

      if attributes.key?(:'skip_unverified_translations')
        self.skip_unverified_translations = attributes[:'skip_unverified_translations']
      end

      if attributes.key?(:'include_unverified_translations')
        self.include_unverified_translations = attributes[:'include_unverified_translations']
      end

      if attributes.key?(:'use_last_reviewed_version')
        self.use_last_reviewed_version = attributes[:'use_last_reviewed_version']
      end

      if attributes.key?(:'fallback_locale_id')
        self.fallback_locale_id = attributes[:'fallback_locale_id']
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
          file_format == o.file_format &&
          tags == o.tags &&
          tag == o.tag &&
          include_empty_translations == o.include_empty_translations &&
          include_translated_keys == o.include_translated_keys &&
          keep_notranslate_tags == o.keep_notranslate_tags &&
          convert_emoji == o.convert_emoji &&
          format_options == o.format_options &&
          encoding == o.encoding &&
          skip_unverified_translations == o.skip_unverified_translations &&
          include_unverified_translations == o.include_unverified_translations &&
          use_last_reviewed_version == o.use_last_reviewed_version &&
          fallback_locale_id == o.fallback_locale_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [branch, file_format, tags, tag, include_empty_translations, include_translated_keys, keep_notranslate_tags, convert_emoji, format_options, encoding, skip_unverified_translations, include_unverified_translations, use_last_reviewed_version, fallback_locale_id].hash
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
