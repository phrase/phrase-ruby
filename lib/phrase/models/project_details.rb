require 'date'

module Phrase
  class ProjectDetails
    attr_accessor :id

    attr_accessor :name

    attr_accessor :slug

    attr_accessor :main_format

    attr_accessor :project_image_url

    attr_accessor :media

    attr_accessor :account

    attr_accessor :space

    attr_accessor :point_of_contact

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :shares_translation_memory

    attr_accessor :machine_translation_enabled

    attr_accessor :zero_plural_form_enabled

    attr_accessor :enable_all_data_type_translation_keys_for_translators

    attr_accessor :enable_icu_message_format

    attr_accessor :enable_branching

    attr_accessor :protect_master_branch

    attr_accessor :autotranslate_enabled

    attr_accessor :autotranslate_check_new_translation_keys

    attr_accessor :autotranslate_check_new_uploads

    attr_accessor :autotranslate_check_new_locales

    attr_accessor :autotranslate_mark_as_unverified

    attr_accessor :autotranslate_use_machine_translation

    attr_accessor :autotranslate_use_translation_memory

    attr_accessor :default_encoding

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'slug' => :'slug',
        :'main_format' => :'main_format',
        :'project_image_url' => :'project_image_url',
        :'media' => :'media',
        :'account' => :'account',
        :'space' => :'space',
        :'point_of_contact' => :'point_of_contact',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'shares_translation_memory' => :'shares_translation_memory',
        :'machine_translation_enabled' => :'machine_translation_enabled',
        :'zero_plural_form_enabled' => :'zero_plural_form_enabled',
        :'enable_all_data_type_translation_keys_for_translators' => :'enable_all_data_type_translation_keys_for_translators',
        :'enable_icu_message_format' => :'enable_icu_message_format',
        :'enable_branching' => :'enable_branching',
        :'protect_master_branch' => :'protect_master_branch',
        :'autotranslate_enabled' => :'autotranslate_enabled',
        :'autotranslate_check_new_translation_keys' => :'autotranslate_check_new_translation_keys',
        :'autotranslate_check_new_uploads' => :'autotranslate_check_new_uploads',
        :'autotranslate_check_new_locales' => :'autotranslate_check_new_locales',
        :'autotranslate_mark_as_unverified' => :'autotranslate_mark_as_unverified',
        :'autotranslate_use_machine_translation' => :'autotranslate_use_machine_translation',
        :'autotranslate_use_translation_memory' => :'autotranslate_use_translation_memory',
        :'default_encoding' => :'default_encoding'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'slug' => :'String',
        :'main_format' => :'String',
        :'project_image_url' => :'String',
        :'media' => :'String',
        :'account' => :'Account',
        :'space' => :'Space1',
        :'point_of_contact' => :'UserPreview',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'shares_translation_memory' => :'Boolean',
        :'machine_translation_enabled' => :'Boolean',
        :'zero_plural_form_enabled' => :'Boolean',
        :'enable_all_data_type_translation_keys_for_translators' => :'Boolean',
        :'enable_icu_message_format' => :'Boolean',
        :'enable_branching' => :'Boolean',
        :'protect_master_branch' => :'Boolean',
        :'autotranslate_enabled' => :'Boolean',
        :'autotranslate_check_new_translation_keys' => :'Boolean',
        :'autotranslate_check_new_uploads' => :'Boolean',
        :'autotranslate_check_new_locales' => :'Boolean',
        :'autotranslate_mark_as_unverified' => :'Boolean',
        :'autotranslate_use_machine_translation' => :'Boolean',
        :'autotranslate_use_translation_memory' => :'Boolean',
        :'default_encoding' => :'String'
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
      :'Project'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::ProjectDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::ProjectDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'slug')
        self.slug = attributes[:'slug']
      end

      if attributes.key?(:'main_format')
        self.main_format = attributes[:'main_format']
      end

      if attributes.key?(:'project_image_url')
        self.project_image_url = attributes[:'project_image_url']
      end

      if attributes.key?(:'media')
        self.media = attributes[:'media']
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'space')
        self.space = attributes[:'space']
      end

      if attributes.key?(:'point_of_contact')
        self.point_of_contact = attributes[:'point_of_contact']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'shares_translation_memory')
        self.shares_translation_memory = attributes[:'shares_translation_memory']
      end

      if attributes.key?(:'machine_translation_enabled')
        self.machine_translation_enabled = attributes[:'machine_translation_enabled']
      end

      if attributes.key?(:'zero_plural_form_enabled')
        self.zero_plural_form_enabled = attributes[:'zero_plural_form_enabled']
      end

      if attributes.key?(:'enable_all_data_type_translation_keys_for_translators')
        self.enable_all_data_type_translation_keys_for_translators = attributes[:'enable_all_data_type_translation_keys_for_translators']
      end

      if attributes.key?(:'enable_icu_message_format')
        self.enable_icu_message_format = attributes[:'enable_icu_message_format']
      end

      if attributes.key?(:'enable_branching')
        self.enable_branching = attributes[:'enable_branching']
      end

      if attributes.key?(:'protect_master_branch')
        self.protect_master_branch = attributes[:'protect_master_branch']
      end

      if attributes.key?(:'autotranslate_enabled')
        self.autotranslate_enabled = attributes[:'autotranslate_enabled']
      end

      if attributes.key?(:'autotranslate_check_new_translation_keys')
        self.autotranslate_check_new_translation_keys = attributes[:'autotranslate_check_new_translation_keys']
      end

      if attributes.key?(:'autotranslate_check_new_uploads')
        self.autotranslate_check_new_uploads = attributes[:'autotranslate_check_new_uploads']
      end

      if attributes.key?(:'autotranslate_check_new_locales')
        self.autotranslate_check_new_locales = attributes[:'autotranslate_check_new_locales']
      end

      if attributes.key?(:'autotranslate_mark_as_unverified')
        self.autotranslate_mark_as_unverified = attributes[:'autotranslate_mark_as_unverified']
      end

      if attributes.key?(:'autotranslate_use_machine_translation')
        self.autotranslate_use_machine_translation = attributes[:'autotranslate_use_machine_translation']
      end

      if attributes.key?(:'autotranslate_use_translation_memory')
        self.autotranslate_use_translation_memory = attributes[:'autotranslate_use_translation_memory']
      end

      if attributes.key?(:'default_encoding')
        self.default_encoding = attributes[:'default_encoding']
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
          slug == o.slug &&
          main_format == o.main_format &&
          project_image_url == o.project_image_url &&
          media == o.media &&
          account == o.account &&
          space == o.space &&
          point_of_contact == o.point_of_contact &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          shares_translation_memory == o.shares_translation_memory &&
          machine_translation_enabled == o.machine_translation_enabled &&
          zero_plural_form_enabled == o.zero_plural_form_enabled &&
          enable_all_data_type_translation_keys_for_translators == o.enable_all_data_type_translation_keys_for_translators &&
          enable_icu_message_format == o.enable_icu_message_format &&
          enable_branching == o.enable_branching &&
          protect_master_branch == o.protect_master_branch &&
          autotranslate_enabled == o.autotranslate_enabled &&
          autotranslate_check_new_translation_keys == o.autotranslate_check_new_translation_keys &&
          autotranslate_check_new_uploads == o.autotranslate_check_new_uploads &&
          autotranslate_check_new_locales == o.autotranslate_check_new_locales &&
          autotranslate_mark_as_unverified == o.autotranslate_mark_as_unverified &&
          autotranslate_use_machine_translation == o.autotranslate_use_machine_translation &&
          autotranslate_use_translation_memory == o.autotranslate_use_translation_memory &&
          default_encoding == o.default_encoding
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, slug, main_format, project_image_url, media, account, space, point_of_contact, created_at, updated_at, shares_translation_memory, machine_translation_enabled, zero_plural_form_enabled, enable_all_data_type_translation_keys_for_translators, enable_icu_message_format, enable_branching, protect_master_branch, autotranslate_enabled, autotranslate_check_new_translation_keys, autotranslate_check_new_uploads, autotranslate_check_new_locales, autotranslate_mark_as_unverified, autotranslate_use_machine_translation, autotranslate_use_translation_memory, default_encoding].hash
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
