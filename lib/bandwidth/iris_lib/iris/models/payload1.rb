# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # Payload1 Model.
  class Payload1 < BaseModel
    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :empty

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['empty'] = 'empty'
      @_hash
    end

    def initialize(empty = nil)
      @empty = empty
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      empty = hash['empty']

      # Create object from extracted values.
      Payload1.new(empty)
    end

    def self.from_element(root)
      empty = XmlUtilities.from_element(root, 'empty', TrueClass)

      new(empty)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'empty', empty)

      root
    end
  end
end
