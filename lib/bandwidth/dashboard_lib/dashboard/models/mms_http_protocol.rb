# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # MmsHttpProtocol Model.
  class MmsHttpProtocol < BaseModel
    # TODO: Write general description for this method
    # @return [MmsHttpSettings]
    attr_accessor :http_settings

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['http_settings'] = 'httpSettings'
      @_hash
    end

    def initialize(http_settings = nil)
      @http_settings = http_settings
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      http_settings = MmsHttpSettings.from_hash(hash['httpSettings']) if
        hash['httpSettings']

      # Create object from extracted values.
      MmsHttpProtocol.new(http_settings)
    end

    def self.from_element(root)
      http_settings = XmlUtilities.from_element(root, 'HttpSettings',
                                                MmsHttpSettings)

      new(http_settings)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'HttpSettings', http_settings)

      root
    end
  end
end
