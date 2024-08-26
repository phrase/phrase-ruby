require 'date'

module Phrase
  class LocaleDownloadCreateParameters
    # File format name. See the <a href=\"https://support.phrase.com/hc/en-us/sections/6111343326364\">format guide</a> for all supported file formats.
    attr_accessor :file_format

    # specify the branch to use
    attr_accessor :branch

    # Limit results to keys tagged with a list of comma separated tag names.
    attr_accessor :tags

    # Indicates whether keys without translations should be included in the output as well.
    attr_accessor :include_empty_translations

    # Indicates whether zero forms should be included when empty in pluralized keys.
    attr_accessor :exclude_empty_zero_forms

    # Include translated keys in the locale file. Use in combination with include_empty_translations to obtain only untranslated keys.
    attr_accessor :include_translated_keys

    # Indicates whether [NOTRANSLATE] tags should be kept.
    attr_accessor :keep_notranslate_tags

    # Additional formatting and render options. See the <a href=\"https://support.phrase.com/hc/en-us/sections/6111343326364\">format guide</a> for a list of options available for each format. Specify format options like this: <code>...&format_options[foo]=bar</code>
    attr_accessor :format_options

    # Enforces a specific encoding on the file contents. Valid options are \"UTF-8\", \"UTF-16\" and \"ISO-8859-1\".
    attr_accessor :encoding

    # if set to false unverified translations are excluded
    attr_accessor :include_unverified_translations

    # If set to true the last reviewed version of a translation is used. This is only available if the review workflow is enabled for the project.
    attr_accessor :use_last_reviewed_version

    # Locale IDs or locale names
    attr_accessor :locale_ids

    # If a key has no translation in the locale being downloaded the translation in the fallback locale will be used. Provide the ID of the locale that should be used as the fallback. Requires include_empty_translations to be set to <code>true</code>.
    attr_accessor :fallback_locale_id

    # Provides the source language of a corresponding job as the source language of the generated locale file. This parameter will be ignored unless used in combination with a <code>tag</code> parameter indicating a specific job.
    attr_accessor :source_locale_id

    # Custom metadata filters. Provide the name of the metadata field and the value to filter by. Only keys with matching metadata will be included in the download. 
    attr_accessor :custom_metadata_filters

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file_format' => :'file_format',
        :'branch' => :'branch',
        :'tags' => :'tags',
        :'include_empty_translations' => :'include_empty_translations',
        :'exclude_empty_zero_forms' => :'exclude_empty_zero_forms',
        :'include_translated_keys' => :'include_translated_keys',
        :'keep_notranslate_tags' => :'keep_notranslate_tags',
        :'format_options' => :'format_options',
        :'encoding' => :'encoding',
        :'include_unverified_translations' => :'include_unverified_translations',
        :'use_last_reviewed_version' => :'use_last_reviewed_version',
        :'locale_ids' => :'locale_ids',
        :'fallback_locale_id' => :'fallback_locale_id',
        :'source_locale_id' => :'source_locale_id',
        :'custom_metadata_filters' => :'custom_metadata_filters'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'file_format' => :'String',
        :'branch' => :'String',
        :'tags' => :'String',
        :'include_empty_translations' => :'Boolean',
        :'exclude_empty_zero_forms' => :'Boolean',
        :'include_translated_keys' => :'Boolean',
        :'keep_notranslate_tags' => :'Boolean',
        :'format_options' => :'Object',
        :'encoding' => :'String',
        :'include_unverified_translations' => :'Boolean',
        :'use_last_reviewed_version' => :'Boolean',
        :'locale_ids' => :'Array<String>',
        :'fallback_locale_id' => :'String',
        :'source_locale_id' => :'String',
        :'custom_metadata_filters' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::LocaleDownloadCreateParameters` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::LocaleDownloadCreateParameters`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'file_format')
        self.file_format = attributes[:'file_format']
      end

      if attributes.key?(:'branch')
        self.branch = attributes[:'branch']
      end

      if attributes.key?(:'tags')
        self.tags = attributes[:'tags']
      end

      if attributes.key?(:'include_empty_translations')
        self.include_empty_translations = attributes[:'include_empty_translations']
      end

      if attributes.key?(:'exclude_empty_zero_forms')
        self.exclude_empty_zero_forms = attributes[:'exclude_empty_zero_forms']
      end

      if attributes.key?(:'include_translated_keys')
        self.include_translated_keys = attributes[:'include_translated_keys']
      end

      if attributes.key?(:'keep_notranslate_tags')
        self.keep_notranslate_tags = attributes[:'keep_notranslate_tags']
      end

      if attributes.key?(:'format_options')
        self.format_options = attributes[:'format_options']
      end

      if attributes.key?(:'encoding')
        self.encoding = attributes[:'encoding']
      end

      if attributes.key?(:'include_unverified_translations')
        self.include_unverified_translations = attributes[:'include_unverified_translations']
      end

      if attributes.key?(:'use_last_reviewed_version')
        self.use_last_reviewed_version = attributes[:'use_last_reviewed_version']
      end

      if attributes.key?(:'locale_ids')
        if (value = attributes[:'locale_ids']).is_a?(Array)
          self.locale_ids = value
        end
      end

      if attributes.key?(:'fallback_locale_id')
        self.fallback_locale_id = attributes[:'fallback_locale_id']
      end

      if attributes.key?(:'source_locale_id')
        self.source_locale_id = attributes[:'source_locale_id']
      end

      if attributes.key?(:'custom_metadata_filters')
        self.custom_metadata_filters = attributes[:'custom_metadata_filters']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @file_format.nil?
        invalid_properties.push('invalid value for "file_format", file_format cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @file_format.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          file_format == o.file_format &&
          branch == o.branch &&
          tags == o.tags &&
          include_empty_translations == o.include_empty_translations &&
          exclude_empty_zero_forms == o.exclude_empty_zero_forms &&
          include_translated_keys == o.include_translated_keys &&
          keep_notranslate_tags == o.keep_notranslate_tags &&
          format_options == o.format_options &&
          encoding == o.encoding &&
          include_unverified_translations == o.include_unverified_translations &&
          use_last_reviewed_version == o.use_last_reviewed_version &&
          locale_ids == o.locale_ids &&
          fallback_locale_id == o.fallback_locale_id &&
          source_locale_id == o.source_locale_id &&
          custom_metadata_filters == o.custom_metadata_filters
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [file_format, branch, tags, include_empty_translations, exclude_empty_zero_forms, include_translated_keys, keep_notranslate_tags, format_options, encoding, include_unverified_translations, use_last_reviewed_version, locale_ids, fallback_locale_id, source_locale_id, custom_metadata_filters].hash
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
