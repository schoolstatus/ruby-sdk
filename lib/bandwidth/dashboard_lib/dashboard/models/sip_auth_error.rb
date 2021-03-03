# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # SipAuthError Model.
  class SipAuthError < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'code'
      @_hash['description'] = 'description'
      @_hash
    end

    def initialize(code = nil,
                   description = nil)
      @code = code
      @description = description
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash['code']
      description = hash['description']

      # Create object from extracted values.
      SipAuthError.new(code,
                       description)
    end

    def self.from_element(root)
      code = XmlUtilities.from_element(root, 'Code', Integer)
      description = XmlUtilities.from_element(root, 'Description', String)

      new(code,
          description)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'Code', code)
      XmlUtilities.add_as_subelement(doc, root, 'Description', description)

      root
    end
  end
end
