require 'date'

module Phrase
  class OrderCreateParameters
    # specify the branch to use
    attr_accessor :branch

    # the name of the order, default name is: Translation order from 'current datetime'
    attr_accessor :name

    # Name of the LSP that should process this order. Can be one of gengo, textmaster.
    attr_accessor :lsp

    # Source locale for the order. Can be the name or public id of the source locale. Preferred is the public id.
    attr_accessor :source_locale_id

    # List of target locales you want the source content translate to. Can be the name or public id of the target locales. Preferred is the public id.
    attr_accessor :target_locale_ids

    # Name of the quality level, availability depends on the LSP. Can be one of:  standard, pro (for orders processed by Gengo) and one of regular, premium, enterprise (for orders processed by TextMaster)
    attr_accessor :translation_type

    # Tag you want to order translations for.
    attr_accessor :tag

    # Message that is displayed to the translators for description.
    attr_accessor :message

    # Style guide for translators to be sent with the order.
    attr_accessor :styleguide_id

    # Unverify translations upon delivery.
    attr_accessor :unverify_translations_upon_delivery

    # Order translations for keys with untranslated content in the selected target locales.
    attr_accessor :include_untranslated_keys

    # Order translations for keys with unverified content in the selected target locales.
    attr_accessor :include_unverified_translations

    # Category to use (required for orders processed by TextMaster).
    attr_accessor :category

    # Extra proofreading option to ensure consistency in vocabulary and style. Only available for orders processed by TextMaster.
    attr_accessor :quality

    # Indicates whether the priority option should be ordered which decreases turnaround time by 30%. Available only for orders processed by TextMaster.
    attr_accessor :priority

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'branch' => :'branch',
        :'name' => :'name',
        :'lsp' => :'lsp',
        :'source_locale_id' => :'source_locale_id',
        :'target_locale_ids' => :'target_locale_ids',
        :'translation_type' => :'translation_type',
        :'tag' => :'tag',
        :'message' => :'message',
        :'styleguide_id' => :'styleguide_id',
        :'unverify_translations_upon_delivery' => :'unverify_translations_upon_delivery',
        :'include_untranslated_keys' => :'include_untranslated_keys',
        :'include_unverified_translations' => :'include_unverified_translations',
        :'category' => :'category',
        :'quality' => :'quality',
        :'priority' => :'priority'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'branch' => :'String',
        :'name' => :'String',
        :'lsp' => :'String',
        :'source_locale_id' => :'String',
        :'target_locale_ids' => :'Array<String>',
        :'translation_type' => :'String',
        :'tag' => :'String',
        :'message' => :'String',
        :'styleguide_id' => :'String',
        :'unverify_translations_upon_delivery' => :'Boolean',
        :'include_untranslated_keys' => :'Boolean',
        :'include_unverified_translations' => :'Boolean',
        :'category' => :'String',
        :'quality' => :'Boolean',
        :'priority' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::OrderCreateParameters` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::OrderCreateParameters`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'branch')
        self.branch = attributes[:'branch']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'lsp')
        self.lsp = attributes[:'lsp']
      end

      if attributes.key?(:'source_locale_id')
        self.source_locale_id = attributes[:'source_locale_id']
      end

      if attributes.key?(:'target_locale_ids')
        if (value = attributes[:'target_locale_ids']).is_a?(Array)
          self.target_locale_ids = value
        end
      end

      if attributes.key?(:'translation_type')
        self.translation_type = attributes[:'translation_type']
      end

      if attributes.key?(:'tag')
        self.tag = attributes[:'tag']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'styleguide_id')
        self.styleguide_id = attributes[:'styleguide_id']
      end

      if attributes.key?(:'unverify_translations_upon_delivery')
        self.unverify_translations_upon_delivery = attributes[:'unverify_translations_upon_delivery']
      end

      if attributes.key?(:'include_untranslated_keys')
        self.include_untranslated_keys = attributes[:'include_untranslated_keys']
      end

      if attributes.key?(:'include_unverified_translations')
        self.include_unverified_translations = attributes[:'include_unverified_translations']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'quality')
        self.quality = attributes[:'quality']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
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
          lsp == o.lsp &&
          source_locale_id == o.source_locale_id &&
          target_locale_ids == o.target_locale_ids &&
          translation_type == o.translation_type &&
          tag == o.tag &&
          message == o.message &&
          styleguide_id == o.styleguide_id &&
          unverify_translations_upon_delivery == o.unverify_translations_upon_delivery &&
          include_untranslated_keys == o.include_untranslated_keys &&
          include_unverified_translations == o.include_unverified_translations &&
          category == o.category &&
          quality == o.quality &&
          priority == o.priority
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [branch, name, lsp, source_locale_id, target_locale_ids, translation_type, tag, message, styleguide_id, unverify_translations_upon_delivery, include_untranslated_keys, include_unverified_translations, category, quality, priority].hash
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
