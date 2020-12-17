# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # ImportTnOrdersPayload Model.
  class ImportTnOrdersPayload < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :account_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_modified_date_in_utc

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_modified_by

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :created_by_user

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :customer_order_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :site_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :peer_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :order_create_date

    # TODO: Write general description for this method
    # @return [Subscriber]
    attr_accessor :subscriber

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :loa_authorizing_person

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :telephone_numbers

    # TODO: Write general description for this method
    # @return [Status2Enum]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [List of TelephoneNumberGroupError]
    attr_accessor :errors

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :loa_type

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :sip_peer_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['account_id'] = 'accountId'
      @_hash['name'] = 'name'
      @_hash['last_modified_date_in_utc'] = 'lastModifiedDateInUtc'
      @_hash['last_modified_by'] = 'lastModifiedBy'
      @_hash['created_by_user'] = 'createdByUser'
      @_hash['customer_order_id'] = 'customerOrderId'
      @_hash['site_id'] = 'siteId'
      @_hash['peer_id'] = 'peerId'
      @_hash['order_create_date'] = 'orderCreateDate'
      @_hash['subscriber'] = 'subscriber'
      @_hash['loa_authorizing_person'] = 'loaAuthorizingPerson'
      @_hash['telephone_numbers'] = 'telephoneNumbers'
      @_hash['status'] = 'status'
      @_hash['errors'] = 'errors'
      @_hash['loa_type'] = 'loaType'
      @_hash['sip_peer_id'] = 'sipPeerId'
      @_hash
    end

    def initialize(id = nil,
                   account_id = nil,
                   name = nil,
                   last_modified_date_in_utc = nil,
                   last_modified_by = nil,
                   created_by_user = nil,
                   customer_order_id = nil,
                   site_id = nil,
                   peer_id = nil,
                   order_create_date = nil,
                   subscriber = nil,
                   loa_authorizing_person = nil,
                   telephone_numbers = nil,
                   status = nil,
                   errors = nil,
                   loa_type = nil,
                   sip_peer_id = nil)
      @id = id
      @account_id = account_id
      @name = name
      @last_modified_date_in_utc = last_modified_date_in_utc
      @last_modified_by = last_modified_by
      @created_by_user = created_by_user
      @customer_order_id = customer_order_id
      @site_id = site_id
      @peer_id = peer_id
      @order_create_date = order_create_date
      @subscriber = subscriber
      @loa_authorizing_person = loa_authorizing_person
      @telephone_numbers = telephone_numbers
      @status = status
      @errors = errors
      @loa_type = loa_type
      @sip_peer_id = sip_peer_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      account_id = hash['accountId']
      name = hash['name']
      last_modified_date_in_utc = hash['lastModifiedDateInUtc']
      last_modified_by = hash['lastModifiedBy']
      created_by_user = hash['createdByUser']
      customer_order_id = hash['customerOrderId']
      site_id = hash['siteId']
      peer_id = hash['peerId']
      order_create_date = hash['orderCreateDate']
      subscriber = Subscriber.from_hash(hash['subscriber']) if
        hash['subscriber']
      loa_authorizing_person = hash['loaAuthorizingPerson']
      telephone_numbers = hash['telephoneNumbers']
      status = hash['status']
      # Parameter is an array, so we need to iterate through it
      errors = nil
      unless hash['errors'].nil?
        errors = []
        hash['errors'].each do |structure|
          errors << (TelephoneNumberGroupError.from_hash(structure) if structure)
        end
      end
      loa_type = hash['loaType']
      sip_peer_id = hash['sipPeerId']

      # Create object from extracted values.
      ImportTnOrdersPayload.new(id,
                                account_id,
                                name,
                                last_modified_date_in_utc,
                                last_modified_by,
                                created_by_user,
                                customer_order_id,
                                site_id,
                                peer_id,
                                order_create_date,
                                subscriber,
                                loa_authorizing_person,
                                telephone_numbers,
                                status,
                                errors,
                                loa_type,
                                sip_peer_id)
    end

    def self.from_element(root)
      id = XmlUtilities.from_element(root, 'OrderId', String)
      account_id = XmlUtilities.from_element(root, 'AccountId', Integer)
      name = XmlUtilities.from_element(root, 'Name', String)
      last_modified_date_in_utc = XmlUtilities.from_element(root,
                                                            'LastModifiedDate',
                                                            String)
      last_modified_by = XmlUtilities.from_element(root, 'LastModifiedBy',
                                                   String)
      created_by_user = XmlUtilities.from_element(root, 'CreatedByUser', String)
      customer_order_id = XmlUtilities.from_element(root, 'CustomerOrderId',
                                                    String)
      site_id = XmlUtilities.from_element(root, 'SiteId', Integer)
      peer_id = XmlUtilities.from_element(root, 'PeerId', Integer)
      order_create_date = XmlUtilities.from_element(root, 'OrderCreateDate',
                                                    String)
      subscriber = XmlUtilities.from_element(root, 'Subscriber', Subscriber)
      loa_authorizing_person = XmlUtilities.from_element(root,
                                                         'LoaAuthorizingPerson',
                                                         String)
      telephone_numbers = XmlUtilities.from_element_to_array(
        root, 'TelephoneNumber', String,
        wrapping_element_name: 'TelephoneNumbers'
      )
      status = XmlUtilities.from_element(root, 'ProcessingStatus', String)
      errors = XmlUtilities.from_element_to_array(
        root, 'Error', TelephoneNumberGroupError,
        wrapping_element_name: 'Errors'
      )
      loa_type = XmlUtilities.from_element(root, 'LoaType', String)
      sip_peer_id = XmlUtilities.from_element(root, 'SipPeerId', Integer)

      new(id,
          account_id,
          name,
          last_modified_date_in_utc,
          last_modified_by,
          created_by_user,
          customer_order_id,
          site_id,
          peer_id,
          order_create_date,
          subscriber,
          loa_authorizing_person,
          telephone_numbers,
          status,
          errors,
          loa_type,
          sip_peer_id)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'OrderId', id)
      XmlUtilities.add_as_subelement(doc, root, 'AccountId', account_id)
      XmlUtilities.add_as_subelement(doc, root, 'Name', name)
      XmlUtilities.add_as_subelement(doc, root, 'LastModifiedDate',
                                     last_modified_date_in_utc)
      XmlUtilities.add_as_subelement(doc, root, 'LastModifiedBy',
                                     last_modified_by)
      XmlUtilities.add_as_subelement(doc, root, 'CreatedByUser',
                                     created_by_user)
      XmlUtilities.add_as_subelement(doc, root, 'CustomerOrderId',
                                     customer_order_id)
      XmlUtilities.add_as_subelement(doc, root, 'SiteId', site_id)
      XmlUtilities.add_as_subelement(doc, root, 'PeerId', peer_id)
      XmlUtilities.add_as_subelement(doc, root, 'OrderCreateDate',
                                     order_create_date)
      XmlUtilities.add_as_subelement(doc, root, 'Subscriber', subscriber)
      XmlUtilities.add_as_subelement(doc, root, 'LoaAuthorizingPerson',
                                     loa_authorizing_person)
      XmlUtilities.add_array_as_subelement(
        doc, root, 'TelephoneNumber', telephone_numbers,
        wrapping_element_name: 'TelephoneNumbers'
      )
      XmlUtilities.add_as_subelement(doc, root, 'ProcessingStatus', status)
      XmlUtilities.add_array_as_subelement(doc, root, 'Error', errors,
                                           wrapping_element_name: 'Errors')
      XmlUtilities.add_as_subelement(doc, root, 'LoaType', loa_type)
      XmlUtilities.add_as_subelement(doc, root, 'SipPeerId', sip_peer_id)

      root
    end
  end
end
