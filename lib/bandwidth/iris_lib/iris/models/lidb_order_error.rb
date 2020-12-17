# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # LidbOrderError Model.
  class LidbOrderError < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :telephone_number

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :telephone_numbers

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['telephone_number'] = 'telephoneNumber'
      @_hash['code'] = 'code'
      @_hash['description'] = 'description'
      @_hash['telephone_numbers'] = 'telephoneNumbers'
      @_hash
    end

    def initialize(telephone_number = nil,
                   code = nil,
                   description = nil,
                   telephone_numbers = nil)
      @telephone_number = telephone_number
      @code = code
      @description = description
      @telephone_numbers = telephone_numbers
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      telephone_number = hash['telephoneNumber']
      code = hash['code']
      description = hash['description']
      telephone_numbers = hash['telephoneNumbers']

      # Create object from extracted values.
      LidbOrderError.new(telephone_number,
                         code,
                         description,
                         telephone_numbers)
    end

    def self.from_element(root)
      telephone_number = XmlUtilities.from_element(root, 'TelephoneNumber',
                                                   String)
      code = XmlUtilities.from_element(root, 'Code', Integer)
      description = XmlUtilities.from_element(root, 'Description', String)
      telephone_numbers = XmlUtilities.from_element_to_array(
        root, 'telephoneNumbers', String,
        wrapping_element_name: 'TelephoneNumbers'
      )

      new(telephone_number,
          code,
          description,
          telephone_numbers)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'TelephoneNumber',
                                     telephone_number)
      XmlUtilities.add_as_subelement(doc, root, 'Code', code)
      XmlUtilities.add_as_subelement(doc, root, 'Description', description)
      XmlUtilities.add_array_as_subelement(
        doc, root, 'telephoneNumbers', telephone_numbers,
        wrapping_element_name: 'TelephoneNumbers'
      )

      root
    end
  end
end
