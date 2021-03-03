# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # LdapUserResponse Model.
  class LdapUserResponse < BaseModel
    # TODO: Write general description for this method
    # @return [LdapUser]
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
      payload = LdapUser.from_hash(hash['payload']) if hash['payload']

      # Create object from extracted values.
      LdapUserResponse.new(payload)
    end

    def self.from_element(root)
      payload = XmlUtilities.from_element(root, 'User', LdapUser)

      new(payload)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'User', payload)

      root
    end
  end
end
