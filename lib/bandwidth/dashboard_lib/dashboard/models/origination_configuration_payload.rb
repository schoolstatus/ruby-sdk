# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # OriginationConfigurationPayload Model.
  class OriginationConfigurationPayload < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :concurrent_bidirectional_calls

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :concurrent_inbound_calls

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :redirect_enabled

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['concurrent_bidirectional_calls'] =
        'concurrentBidirectionalCalls'
      @_hash['concurrent_inbound_calls'] = 'concurrentInboundCalls'
      @_hash['redirect_enabled'] = 'redirectEnabled'
      @_hash
    end

    def initialize(concurrent_bidirectional_calls = nil,
                   concurrent_inbound_calls = nil,
                   redirect_enabled = nil)
      @concurrent_bidirectional_calls = concurrent_bidirectional_calls
      @concurrent_inbound_calls = concurrent_inbound_calls
      @redirect_enabled = redirect_enabled
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      concurrent_bidirectional_calls = hash['concurrentBidirectionalCalls']
      concurrent_inbound_calls = hash['concurrentInboundCalls']
      redirect_enabled = hash['redirectEnabled']

      # Create object from extracted values.
      OriginationConfigurationPayload.new(concurrent_bidirectional_calls,
                                          concurrent_inbound_calls,
                                          redirect_enabled)
    end

    def self.from_element(root)
      concurrent_bidirectional_calls = XmlUtilities.from_element(
        root, 'ConcurrentBidirectionalCalls', Integer
      )
      concurrent_inbound_calls = XmlUtilities.from_element(
        root, 'ConcurrentInboundCalls', Integer
      )
      redirect_enabled = XmlUtilities.from_element(root, 'RedirectEnabled',
                                                   String)

      new(concurrent_bidirectional_calls,
          concurrent_inbound_calls,
          redirect_enabled)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'ConcurrentBidirectionalCalls',
                                     concurrent_bidirectional_calls)
      XmlUtilities.add_as_subelement(doc, root, 'ConcurrentInboundCalls',
                                     concurrent_inbound_calls)
      XmlUtilities.add_as_subelement(doc, root, 'RedirectEnabled',
                                     redirect_enabled)

      root
    end
  end
end
