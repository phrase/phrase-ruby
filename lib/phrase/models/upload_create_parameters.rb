require 'date'

module Phrase
  class UploadCreateParameters
    # specify the branch to use
    attr_accessor :branch

    # File to be imported
    attr_accessor :file

    # File format. Auto-detected when possible and not specified. See the [format guide](https://help.phrase.com/help/supported-platforms-and-formats) for all supported file formats.
    attr_accessor :file_format

    # Locale of the file's content. Can be the name or public id of the locale. Preferred is the public id.
    attr_accessor :locale_id

    # List of tags separated by comma to be associated with the new keys contained in the upload.
    attr_accessor :tags

    # Indicates whether existing translations should be updated with the file content.
    attr_accessor :update_translations

    # Existing key descriptions will be updated with the file content. Empty descriptions overwrite existing descriptions.
    attr_accessor :update_descriptions

    # This option is obsolete. Providing the option will cause a bad request error.
    attr_accessor :convert_emoji

    # Indicates whether the upload should not create upload tags.
    attr_accessor :skip_upload_tags

    # Indicates whether the upload should unverify updated translations.
    attr_accessor :skip_unverification

    # Enforces a specific encoding on the file contents. Valid options are \"UTF-8\", \"UTF-16\" and \"ISO-8859-1\".
    attr_accessor :file_encoding

    # Optional, format specific mapping between locale names and the columns the translations to those locales are contained in.
    attr_accessor :locale_mapping

    # Additional options available for specific formats. See our format guide for complete list.
    attr_accessor :format_options

    # If set, translations for the uploaded language will be fetched automatically.
    attr_accessor :autotranslate

    # Indicated whether the imported translations should be marked as reviewed. This setting is available if the review workflow (currently beta) is enabled for the project.
    attr_accessor :mark_reviewed

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'branch' => :'branch',
        :'file' => :'file',
        :'file_format' => :'file_format',
        :'locale_id' => :'locale_id',
        :'tags' => :'tags',
        :'update_translations' => :'update_translations',
        :'update_descriptions' => :'update_descriptions',
        :'convert_emoji' => :'convert_emoji',
        :'skip_upload_tags' => :'skip_upload_tags',
        :'skip_unverification' => :'skip_unverification',
        :'file_encoding' => :'file_encoding',
        :'locale_mapping' => :'locale_mapping',
        :'format_options' => :'format_options',
        :'autotranslate' => :'autotranslate',
        :'mark_reviewed' => :'mark_reviewed'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'branch' => :'String',
        :'file' => :'File',
        :'file_format' => :'String',
        :'locale_id' => :'String',
        :'tags' => :'String',
        :'update_translations' => :'Boolean',
        :'update_descriptions' => :'Boolean',
        :'convert_emoji' => :'Boolean',
        :'skip_upload_tags' => :'Boolean',
        :'skip_unverification' => :'Boolean',
        :'file_encoding' => :'String',
        :'locale_mapping' => :'Object',
        :'format_options' => :'Object',
        :'autotranslate' => :'Boolean',
        :'mark_reviewed' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::UploadCreateParameters` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::UploadCreateParameters`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'branch')
        self.branch = attributes[:'branch']
      end

      if attributes.key?(:'file')
        self.file = attributes[:'file']
      end

      if attributes.key?(:'file_format')
        self.file_format = attributes[:'file_format']
      end

      if attributes.key?(:'locale_id')
        self.locale_id = attributes[:'locale_id']
      end

      if attributes.key?(:'tags')
        self.tags = attributes[:'tags']
      end

      if attributes.key?(:'update_translations')
        self.update_translations = attributes[:'update_translations']
      end

      if attributes.key?(:'update_descriptions')
        self.update_descriptions = attributes[:'update_descriptions']
      end

      if attributes.key?(:'convert_emoji')
        self.convert_emoji = attributes[:'convert_emoji']
      end

      if attributes.key?(:'skip_upload_tags')
        self.skip_upload_tags = attributes[:'skip_upload_tags']
      end

      if attributes.key?(:'skip_unverification')
        self.skip_unverification = attributes[:'skip_unverification']
      end

      if attributes.key?(:'file_encoding')
        self.file_encoding = attributes[:'file_encoding']
      end

      if attributes.key?(:'locale_mapping')
        self.locale_mapping = attributes[:'locale_mapping']
      end

      if attributes.key?(:'format_options')
        self.format_options = attributes[:'format_options']
      end

      if attributes.key?(:'autotranslate')
        self.autotranslate = attributes[:'autotranslate']
      end

      if attributes.key?(:'mark_reviewed')
        self.mark_reviewed = attributes[:'mark_reviewed']
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
          file == o.file &&
          file_format == o.file_format &&
          locale_id == o.locale_id &&
          tags == o.tags &&
          update_translations == o.update_translations &&
          update_descriptions == o.update_descriptions &&
          convert_emoji == o.convert_emoji &&
          skip_upload_tags == o.skip_upload_tags &&
          skip_unverification == o.skip_unverification &&
          file_encoding == o.file_encoding &&
          locale_mapping == o.locale_mapping &&
          format_options == o.format_options &&
          autotranslate == o.autotranslate &&
          mark_reviewed == o.mark_reviewed
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [branch, file, file_format, locale_id, tags, update_translations, update_descriptions, convert_emoji, skip_upload_tags, skip_unverification, file_encoding, locale_mapping, format_options, autotranslate, mark_reviewed].hash
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
