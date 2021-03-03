# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # HostedTelephoneNumberDetailHistory Model.
  class HostedTelephoneNumberDetailHistory < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :account_id

    # TODO: Write general description for this method
    # @return [Site]
    attr_accessor :site

    # TODO: Write general description for this method
    # @return [SipPeer]
    attr_accessor :sip_peer

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :service_types_owned

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_modified

    # TODO: Write general description for this method
    # @return [MessagingSettings]
    attr_accessor :messaging_settings

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :tn_attributes

    # TODO: Write general description for this method
    # @return [TnOptions]
    attr_accessor :tn_options

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_id'] = 'accountId'
      @_hash['site'] = 'site'
      @_hash['sip_peer'] = 'sipPeer'
      @_hash['service_types_owned'] = 'serviceTypesOwned'
      @_hash['last_modified'] = 'lastModified'
      @_hash['messaging_settings'] = 'messagingSettings'
      @_hash['tn_attributes'] = 'tnAttributes'
      @_hash['tn_options'] = 'tnOptions'
      @_hash
    end

    def initialize(account_id = nil,
                   site = nil,
                   sip_peer = nil,
                   service_types_owned = nil,
                   last_modified = nil,
                   messaging_settings = nil,
                   tn_attributes = nil,
                   tn_options = nil)
      @account_id = account_id
      @site = site
      @sip_peer = sip_peer
      @service_types_owned = service_types_owned
      @last_modified = last_modified
      @messaging_settings = messaging_settings
      @tn_attributes = tn_attributes
      @tn_options = tn_options
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_id = hash['accountId']
      site = Site.from_hash(hash['site']) if hash['site']
      sip_peer = SipPeer.from_hash(hash['sipPeer']) if hash['sipPeer']
      service_types_owned = hash['serviceTypesOwned']
      last_modified = hash['lastModified']
      if hash['messagingSettings']
        messaging_settings = MessagingSettings.from_hash(hash['messagingSettings'])
      end
      tn_attributes = hash['tnAttributes']
      tn_options = TnOptions.from_hash(hash['tnOptions']) if hash['tnOptions']

      # Create object from extracted values.
      HostedTelephoneNumberDetailHistory.new(account_id,
                                             site,
                                             sip_peer,
                                             service_types_owned,
                                             last_modified,
                                             messaging_settings,
                                             tn_attributes,
                                             tn_options)
    end

    def self.from_element(root)
      account_id = XmlUtilities.from_element(root, 'AccountId', Integer)
      site = XmlUtilities.from_element(root, 'Site', Site)
      sip_peer = XmlUtilities.from_element(root, 'SipPeer', SipPeer)
      service_types_owned = XmlUtilities.from_element_to_array(
        root, 'TnAttribute', String,
        wrapping_element_name: 'ServiceTypes'
      )
      last_modified = XmlUtilities.from_element(root, 'LastModified', String)
      messaging_settings = XmlUtilities.from_element(root, 'MessagingSettings',
                                                     MessagingSettings)
      tn_attributes = XmlUtilities.from_element_to_array(
        root, 'TnAttribute', String,
        wrapping_element_name: 'TnAttributes'
      )
      tn_options = XmlUtilities.from_element(root, 'TnOptions', TnOptions)

      new(account_id,
          site,
          sip_peer,
          service_types_owned,
          last_modified,
          messaging_settings,
          tn_attributes,
          tn_options)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'AccountId', account_id)
      XmlUtilities.add_as_subelement(doc, root, 'Site', site)
      XmlUtilities.add_as_subelement(doc, root, 'SipPeer', sip_peer)
      XmlUtilities.add_array_as_subelement(
        doc, root, 'TnAttribute', service_types_owned,
        wrapping_element_name: 'ServiceTypes'
      )
      XmlUtilities.add_as_subelement(doc, root, 'LastModified', last_modified)
      XmlUtilities.add_as_subelement(doc, root, 'MessagingSettings',
                                     messaging_settings)
      XmlUtilities.add_array_as_subelement(
        doc, root, 'TnAttribute', tn_attributes,
        wrapping_element_name: 'TnAttributes'
      )
      XmlUtilities.add_as_subelement(doc, root, 'TnOptions', tn_options)

      root
    end
  end
end
