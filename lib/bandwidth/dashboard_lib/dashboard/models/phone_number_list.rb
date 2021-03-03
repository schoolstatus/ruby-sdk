# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # PhoneNumberList Model.
  class PhoneNumberList < BaseModel
    # TODO: Write general description for this method
    # @return [List of PhoneNumber]
    attr_accessor :phone_numbers

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :numbers_as_strings

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['phone_numbers'] = 'phoneNumbers'
      @_hash['numbers_as_strings'] = 'numbersAsStrings'
      @_hash
    end

    def initialize(phone_numbers = nil,
                   numbers_as_strings = nil)
      @phone_numbers = phone_numbers
      @numbers_as_strings = numbers_as_strings
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      phone_numbers = nil
      unless hash['phoneNumbers'].nil?
        phone_numbers = []
        hash['phoneNumbers'].each do |structure|
          phone_numbers << (PhoneNumber.from_hash(structure) if structure)
        end
      end
      numbers_as_strings = hash['numbersAsStrings']

      # Create object from extracted values.
      PhoneNumberList.new(phone_numbers,
                          numbers_as_strings)
    end

    def self.from_element(root)
      phone_numbers = XmlUtilities.from_element_to_array(root, 'PhoneNumber',
                                                         PhoneNumber)
      numbers_as_strings = XmlUtilities.from_element_to_array(root,
                                                              'TnAttribute',
                                                              String)

      new(phone_numbers,
          numbers_as_strings)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_array_as_subelement(doc, root, 'PhoneNumber',
                                           phone_numbers)
      XmlUtilities.add_array_as_subelement(doc, root, 'TnAttribute',
                                           numbers_as_strings)

      root
    end
  end
end
