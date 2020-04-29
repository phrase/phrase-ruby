require 'date'

module Phrase
  class StyleguideDetails
    attr_accessor :id

    attr_accessor :title

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :public_url

    attr_accessor :audience

    attr_accessor :target_audience

    attr_accessor :grammatical_person

    attr_accessor :vocabulary_type

    attr_accessor :business

    attr_accessor :company_branding

    attr_accessor :formatting

    attr_accessor :glossary_terms

    attr_accessor :grammar_consistency

    attr_accessor :literal_translation

    attr_accessor :overall_tone

    attr_accessor :samples

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'title' => :'title',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'public_url' => :'public_url',
        :'audience' => :'audience',
        :'target_audience' => :'target_audience',
        :'grammatical_person' => :'grammatical_person',
        :'vocabulary_type' => :'vocabulary_type',
        :'business' => :'business',
        :'company_branding' => :'company_branding',
        :'formatting' => :'formatting',
        :'glossary_terms' => :'glossary_terms',
        :'grammar_consistency' => :'grammar_consistency',
        :'literal_translation' => :'literal_translation',
        :'overall_tone' => :'overall_tone',
        :'samples' => :'samples'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'title' => :'String',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'public_url' => :'String',
        :'audience' => :'String',
        :'target_audience' => :'String',
        :'grammatical_person' => :'String',
        :'vocabulary_type' => :'String',
        :'business' => :'String',
        :'company_branding' => :'String',
        :'formatting' => :'String',
        :'glossary_terms' => :'String',
        :'grammar_consistency' => :'String',
        :'literal_translation' => :'String',
        :'overall_tone' => :'String',
        :'samples' => :'String'
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
      :'Styleguide',
      :'StyleguideDetails1'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phrase::StyleguideDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phrase::StyleguideDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'public_url')
        self.public_url = attributes[:'public_url']
      end

      if attributes.key?(:'audience')
        self.audience = attributes[:'audience']
      end

      if attributes.key?(:'target_audience')
        self.target_audience = attributes[:'target_audience']
      end

      if attributes.key?(:'grammatical_person')
        self.grammatical_person = attributes[:'grammatical_person']
      end

      if attributes.key?(:'vocabulary_type')
        self.vocabulary_type = attributes[:'vocabulary_type']
      end

      if attributes.key?(:'business')
        self.business = attributes[:'business']
      end

      if attributes.key?(:'company_branding')
        self.company_branding = attributes[:'company_branding']
      end

      if attributes.key?(:'formatting')
        self.formatting = attributes[:'formatting']
      end

      if attributes.key?(:'glossary_terms')
        self.glossary_terms = attributes[:'glossary_terms']
      end

      if attributes.key?(:'grammar_consistency')
        self.grammar_consistency = attributes[:'grammar_consistency']
      end

      if attributes.key?(:'literal_translation')
        self.literal_translation = attributes[:'literal_translation']
      end

      if attributes.key?(:'overall_tone')
        self.overall_tone = attributes[:'overall_tone']
      end

      if attributes.key?(:'samples')
        self.samples = attributes[:'samples']
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
          title == o.title &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          public_url == o.public_url &&
          audience == o.audience &&
          target_audience == o.target_audience &&
          grammatical_person == o.grammatical_person &&
          vocabulary_type == o.vocabulary_type &&
          business == o.business &&
          company_branding == o.company_branding &&
          formatting == o.formatting &&
          glossary_terms == o.glossary_terms &&
          grammar_consistency == o.grammar_consistency &&
          literal_translation == o.literal_translation &&
          overall_tone == o.overall_tone &&
          samples == o.samples
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, title, created_at, updated_at, public_url, audience, target_audience, grammatical_person, vocabulary_type, business, company_branding, formatting, glossary_terms, grammar_consistency, literal_translation, overall_tone, samples].hash
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
