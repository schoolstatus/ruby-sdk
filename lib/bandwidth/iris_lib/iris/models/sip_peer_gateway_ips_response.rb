# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # SipPeerGatewayIpsResponse Model.
  class SipPeerGatewayIpsResponse < BaseModel
    # TODO: Write general description for this method
    # @return [Payload4]
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
      payload = Payload4.from_hash(hash['payload']) if hash['payload']

      # Create object from extracted values.
      SipPeerGatewayIpsResponse.new(payload)
    end

    def self.from_element(root)
      payload = XmlUtilities.from_element(root, 'TerminationHost', Payload4)

      new(payload)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'TerminationHost', payload)

      root
    end
  end
end
