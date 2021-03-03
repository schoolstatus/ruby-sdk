# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # LdapUsers Model.
  class LdapUsers < BaseModel
    # TODO: Write general description for this method
    # @return [List of ShortLdapUser]
    attr_accessor :users

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :total_count

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['users'] = 'users'
      @_hash['total_count'] = 'totalCount'
      @_hash
    end

    def initialize(users = nil,
                   total_count = nil)
      @users = users
      @total_count = total_count
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      users = nil
      unless hash['users'].nil?
        users = []
        hash['users'].each do |structure|
          users << (ShortLdapUser.from_hash(structure) if structure)
        end
      end
      total_count = hash['totalCount']

      # Create object from extracted values.
      LdapUsers.new(users,
                    total_count)
    end

    def self.from_element(root)
      users = XmlUtilities.from_element_to_array(root, 'User', ShortLdapUser)
      total_count = XmlUtilities.from_element(root, 'totalCount', Integer)

      new(users,
          total_count)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_array_as_subelement(doc, root, 'User', users)
      XmlUtilities.add_as_subelement(doc, root, 'totalCount', total_count)

      root
    end
  end
end
