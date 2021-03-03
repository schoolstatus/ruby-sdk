# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # E911Host Model.
  class E911Host < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :host_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :port

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['host_name'] = 'hostName'
      @_hash['port'] = 'port'
      @_hash
    end

    def initialize(host_name = nil,
                   port = nil)
      @host_name = host_name
      @port = port
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      host_name = hash['hostName']
      port = hash['port']

      # Create object from extracted values.
      E911Host.new(host_name,
                   port)
    end

    def self.from_element(root)
      host_name = XmlUtilities.from_element(root, 'HostName', String)
      port = XmlUtilities.from_element(root, 'Port', String)

      new(host_name,
          port)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'HostName', host_name)
      XmlUtilities.add_as_subelement(doc, root, 'Port', port)

      root
    end
  end
end
