# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # AccountMessagingRoutesResponse Model.
  class AccountMessagingRoutesResponse < BaseModel
    # TODO: Write general description for this method
    # @return [MessagingRoutes]
    attr_accessor :payload

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payload'] = 'payload'
      @_hash
    end

    def initialize(payload = nil)
      @payload = payload
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payload = MessagingRoutes.from_hash(hash['payload']) if hash['payload']

      # Create object from extracted values.
      AccountMessagingRoutesResponse.new(payload)
    end

    def self.from_element(root)
      payload = XmlUtilities.from_element(root, 'MessagingRoutes',
                                          MessagingRoutes)

      new(payload)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'MessagingRoutes', payload)

      root
    end
  end
end
