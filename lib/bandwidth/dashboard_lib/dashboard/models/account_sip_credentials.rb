# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # AccountSipCredentials Model.
  class AccountSipCredentials < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :account_id

    # TODO: Write general description for this method
    # @return [List of SipCredential]
    attr_accessor :sip_credentials

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_id'] = 'accountId'
      @_hash['sip_credentials'] = 'sipCredentials'
      @_hash
    end

    def initialize(account_id = nil,
                   sip_credentials = nil)
      @account_id = account_id
      @sip_credentials = sip_credentials
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_id = hash['accountId']
      # Parameter is an array, so we need to iterate through it
      sip_credentials = nil
      unless hash['sipCredentials'].nil?
        sip_credentials = []
        hash['sipCredentials'].each do |structure|
          sip_credentials << (SipCredential.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      AccountSipCredentials.new(account_id,
                                sip_credentials)
    end

    def self.from_element(root)
      account_id = XmlUtilities.from_element(root, 'Account', Integer)
      sip_credentials = XmlUtilities.from_element_to_array(root,
                                                           'SipCredential',
                                                           SipCredential)

      new(account_id,
          sip_credentials)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'Account', account_id)
      XmlUtilities.add_array_as_subelement(doc, root, 'SipCredential',
                                           sip_credentials)

      root
    end
  end
end
