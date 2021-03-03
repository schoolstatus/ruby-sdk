# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # BocAccount Model.
  class BocAccount < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :account_id

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :update_all_locations

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :error_status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_id'] = 'accountId'
      @_hash['update_all_locations'] = 'updateAllLocations'
      @_hash['error_status'] = 'errorStatus'
      @_hash
    end

    def initialize(account_id = nil,
                   update_all_locations = nil,
                   error_status = nil)
      @account_id = account_id
      @update_all_locations = update_all_locations
      @error_status = error_status
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_id = hash['accountId']
      update_all_locations = hash['updateAllLocations']
      error_status = hash['errorStatus']

      # Create object from extracted values.
      BocAccount.new(account_id,
                     update_all_locations,
                     error_status)
    end

    def self.from_element(root)
      account_id = XmlUtilities.from_element(root, 'AccountId', Integer)
      update_all_locations = XmlUtilities.from_element(root, 'AllLocations',
                                                       TrueClass)
      error_status = XmlUtilities.from_element(root, 'Status', String)

      new(account_id,
          update_all_locations,
          error_status)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'AccountId', account_id)
      XmlUtilities.add_as_subelement(doc, root, 'AllLocations',
                                     update_all_locations)
      XmlUtilities.add_as_subelement(doc, root, 'Status', error_status)

      root
    end
  end
end
