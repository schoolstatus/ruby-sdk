# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # SubscriberTypePatch Model.
  class SubscriberTypePatch < BaseModel
    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :delete

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['delete'] = 'delete'
      @_hash
    end

    def initialize(delete = nil)
      @delete = delete
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      delete = hash['delete']

      # Create object from extracted values.
      SubscriberTypePatch.new(delete)
    end

    def self.from_element(root)
      delete = XmlUtilities.from_attribute(root, 'delete', TrueClass)

      new(delete)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_attribute(root, 'delete', delete)

      root
    end
  end
end
