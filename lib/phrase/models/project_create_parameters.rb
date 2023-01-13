require 'date'

module Phrase
  class ProjectCreateParameters
    # Name of the project
    attr_accessor :name

    # Main file format specified by its API Extension name. Used for locale downloads if no format is specified. For API Extension names of available file formats see <a href=\"https://support.phrase.com/hc/en-us/sections/6111343326364\">Format Guide</a> or our <a href=\"#formats\">Formats API Endpoint</a>.
    attr_accessor :main_format

    # (Optional) Main technology stack used in the project. It affects for example the suggested placeholder style. Predefined values include: `Ruby`, `JavaScript`, `AngularJS`, `React`, `iOS`, `Android`, `Python`, `PHP`, `Java`, `Go`, `Windows Phone`, `Rails`, `Node.js`, `.NET`, `Django`, `Symfony`, `Yii Framework`, `Zend Framework`, `Apple App Store Description`, `Google Play Description`, but it can also take any other value.
    attr_accessor :media

    # Indicates whether the project should share the account's translation memory
    attr_accessor :shares_translation_memory

    # Image to identify the project
    attr_accessor :project_image

    # Indicates whether the project image should be deleted.
    attr_accessor :remove_project_image

    # Account ID to specify the actual account the project should be created in. Required if the requesting user is a member of multiple accounts.
    attr_accessor :account_id

    # (Optional) User ID of the point of contact for the project.
    attr_accessor :point_of_contact

    # When a source project ID is given, a clone of that project will be created, including all locales, keys and translations as well as the main project settings if they are not defined otherwise through the params.
    attr_accessor :source_project_id

    # (Optional) Review Workflow. \"simple\" / \"review\". <a href=\"https://support.phrase.com/hc/en-us/articles/5784094755484\">Read more</a>
    attr_accessor :workflow

    # (Optional) Enable machine translation support in the project. Required for Autopilot and Smart Suggest
    attr_accessor :machine_translation_enabled

    # (Optional) Enable branching in the project
    attr_accessor :enable_branching

    # (Optional) Protect the master branch in project where branching is enabled
    attr_accessor :protect_master_branch

    # (Optional) Otherwise, translators are not allowed to edit translations other than strings
    attr_accessor :enable_all_data_type_translation_keys_for_translators

    # (Optional) We can validate and highlight your ICU messages. <a href=\"https://support.phrase.com/hc/en-us/articles/5822319545116\">Read more</a>
    attr_accessor :enable_icu_message_format

    # (Optional) Displays the input fields for the 'ZERO' plural form for every key as well although only some languages require the 'ZERO' explicitly.
    attr_accessor :zero_plural_form_enabled

    # (Optional) Autopilot, requires machine_translation_enabled. <a href=\"https://support.phrase.com/hc/en-us/articles/5822187934364\">Read more</a>
    attr_accessor :autotranslate_enabled

    # (Optional) Requires autotranslate_enabled to be true
    attr_accessor :autotranslate_check_new_translation_keys

    # (Optional) Requires autotranslate_enabled to be true
    attr_accessor :autotranslate_check_new_uploads

    # (Optional) Requires autotranslate_enabled to be true
    attr_accessor :autotranslate_check_new_locales

    # (Optional) Requires autotranslate_enabled to be true
    attr_accessor :autotranslate_mark_as_unverified

    # (Optional) Requires autotranslate_enabled to be true
    attr_accessor :autotranslate_use_machine_translation

    # (Optional) Requires autotranslate_enabled to be true
    attr_accessor :autotranslate_use_translation_memory

    # (Optional) Smart Suggest, requires machine_translation_enabled
    attr_accessor :smart_suggest_enabled

    # (Optional) Requires smart_suggest_enabled to be true
    attr_accessor :smart_suggest_use_glossary

    # (Optional) Requires smart_suggest_enabled to be true
    attr_accessor :smart_suggest_use_machine_translation

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'main_format' => :'main_format',
        :'media' => :'media',
        :'shares_translation_memory' => :'shares_translation_memory',
        :'project_image' => :'project_image',
        :'remove_project_image' => :'remove_project_image',
        :'account_id' => :'account_id',
        :'point_of_contact' => :'point_of_contact',
        :'source_project_id' => :'source_project_id',
        :'workflow' => :'workflow',
        :'machine_translation_enabled' => :'machine_translation_enabled',
        :'enable_branching' => :'enable_branching',
        :'protect_master_branch' => :'protect_master_branch',
        :'enable_all_data_type_translation_keys_for_translators' => :'enable_all_data_type_translation_keys_for_translators',
        :'enable_icu_message_format' => :'enable_icu_message_format',
        :'zero_plural_form_enabled' => :'zero_plural_form_enabled',
        :'autotranslate_enabled' => :'autotranslate_enabled',
        :'autotranslate_check_new_translation_keys' => :'autotranslate_check_new_translation_keys',
        :'autotranslate_check_new_uploads' => :'autotranslate_check_new_uploads',
        :'autotranslate_check_new_locales' => :'autotranslate_check_new_locales',
        :'autotranslate_mark_as_unverified' => :'autotranslate_mark_as_unverified',
        :'autotranslate_use_machine_translation' => :'autotranslate_use_machine_translation',
        :'autotranslate_use_translation_memory' => :'autotranslate_use_translation_memory',
        :'smart_suggest_enabled' => :'smart_suggest_enabled',
        :'smart_suggest_use_glossary' => :'smart_suggest_use_glossary',
        :'smart_suggest_use_machine_translation' => :'smart_suggest_use_machine_translation'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'main_format' => :'String',
        :'media' => :'String',
        :'shares_translation_memory' => :'Boolean',
        :'project_image' => :'File',
        :'remove_project_image' => :'Boolean',
        :'account_id' => :'String',
        :'point_of_contact' => :'String',
        :'source_project_id' => :'String',
        :'workflow' => :'String',
        :'machine_translation_enabled' => :'Boolean',
        :'enable_branching' => :'Boolean',
        :'protect_master_branch' => :'Boolean',
        :'enable_all_data_type_translation_keys_for_translators' => :'Boolean',
        :'enable_icu_message_format' => :'Boolean',
        :'zero_plural_form_enabled' => :'Boolean',
        :'autotranslate_enabled' => :'Boolean',
        :'autotranslate_check_new_translation_keys' => :'Boolean',
        :'autotranslate_check_new_uploads' => :'Boolean',
        :'autotranslate_check_new_locales' => :'Boolean',
        :'autotranslate_mark_as_unverified' => :'Boolean',
        :'autotranslate_use_machine_translation' => :'Boolean',
        :'autotranslate_use_translation_memory' => :'Boolean',
        :'smart_suggest_enabled' => :'Boolean',
        :'smart_suggest_use_glossary' => :'Boolean',
        :'smart_suggest_use_machine_translation' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::ProjectCreateParameters` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::ProjectCreateParameters`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'main_format')
        self.main_format = attributes[:'main_format']
      end

      if attributes.key?(:'media')
        self.media = attributes[:'media']
      end

      if attributes.key?(:'shares_translation_memory')
        self.shares_translation_memory = attributes[:'shares_translation_memory']
      end

      if attributes.key?(:'project_image')
        self.project_image = attributes[:'project_image']
      end

      if attributes.key?(:'remove_project_image')
        self.remove_project_image = attributes[:'remove_project_image']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'point_of_contact')
        self.point_of_contact = attributes[:'point_of_contact']
      end

      if attributes.key?(:'source_project_id')
        self.source_project_id = attributes[:'source_project_id']
      end

      if attributes.key?(:'workflow')
        self.workflow = attributes[:'workflow']
      end

      if attributes.key?(:'machine_translation_enabled')
        self.machine_translation_enabled = attributes[:'machine_translation_enabled']
      end

      if attributes.key?(:'enable_branching')
        self.enable_branching = attributes[:'enable_branching']
      end

      if attributes.key?(:'protect_master_branch')
        self.protect_master_branch = attributes[:'protect_master_branch']
      end

      if attributes.key?(:'enable_all_data_type_translation_keys_for_translators')
        self.enable_all_data_type_translation_keys_for_translators = attributes[:'enable_all_data_type_translation_keys_for_translators']
      end

      if attributes.key?(:'enable_icu_message_format')
        self.enable_icu_message_format = attributes[:'enable_icu_message_format']
      end

      if attributes.key?(:'zero_plural_form_enabled')
        self.zero_plural_form_enabled = attributes[:'zero_plural_form_enabled']
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

      if attributes.key?(:'smart_suggest_enabled')
        self.smart_suggest_enabled = attributes[:'smart_suggest_enabled']
      end

      if attributes.key?(:'smart_suggest_use_glossary')
        self.smart_suggest_use_glossary = attributes[:'smart_suggest_use_glossary']
      end

      if attributes.key?(:'smart_suggest_use_machine_translation')
        self.smart_suggest_use_machine_translation = attributes[:'smart_suggest_use_machine_translation']
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
          name == o.name &&
          main_format == o.main_format &&
          media == o.media &&
          shares_translation_memory == o.shares_translation_memory &&
          project_image == o.project_image &&
          remove_project_image == o.remove_project_image &&
          account_id == o.account_id &&
          point_of_contact == o.point_of_contact &&
          source_project_id == o.source_project_id &&
          workflow == o.workflow &&
          machine_translation_enabled == o.machine_translation_enabled &&
          enable_branching == o.enable_branching &&
          protect_master_branch == o.protect_master_branch &&
          enable_all_data_type_translation_keys_for_translators == o.enable_all_data_type_translation_keys_for_translators &&
          enable_icu_message_format == o.enable_icu_message_format &&
          zero_plural_form_enabled == o.zero_plural_form_enabled &&
          autotranslate_enabled == o.autotranslate_enabled &&
          autotranslate_check_new_translation_keys == o.autotranslate_check_new_translation_keys &&
          autotranslate_check_new_uploads == o.autotranslate_check_new_uploads &&
          autotranslate_check_new_locales == o.autotranslate_check_new_locales &&
          autotranslate_mark_as_unverified == o.autotranslate_mark_as_unverified &&
          autotranslate_use_machine_translation == o.autotranslate_use_machine_translation &&
          autotranslate_use_translation_memory == o.autotranslate_use_translation_memory &&
          smart_suggest_enabled == o.smart_suggest_enabled &&
          smart_suggest_use_glossary == o.smart_suggest_use_glossary &&
          smart_suggest_use_machine_translation == o.smart_suggest_use_machine_translation
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, main_format, media, shares_translation_memory, project_image, remove_project_image, account_id, point_of_contact, source_project_id, workflow, machine_translation_enabled, enable_branching, protect_master_branch, enable_all_data_type_translation_keys_for_translators, enable_icu_message_format, zero_plural_form_enabled, autotranslate_enabled, autotranslate_check_new_translation_keys, autotranslate_check_new_uploads, autotranslate_check_new_locales, autotranslate_mark_as_unverified, autotranslate_use_machine_translation, autotranslate_use_translation_memory, smart_suggest_enabled, smart_suggest_use_glossary, smart_suggest_use_machine_translation].hash
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
