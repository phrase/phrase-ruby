require 'date'

module Phrase
  class CustomMetadataDataType
    BOOLEAN = "boolean".freeze
    DATE = "date".freeze
    LINK = "link".freeze
    MULTI_SELECT = "multi_select".freeze
    NUMBER = "number".freeze
    SINGLE_SELECT = "single_select".freeze
    STRING = "string".freeze
    TEXT = "text".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = CustomMetadataDataType.constants.select { |c| CustomMetadataDataType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #CustomMetadataDataType" if constantValues.empty?
      value
    end
  end
end
