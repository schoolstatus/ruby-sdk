# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # TnOptionOrderPayload Model.
  class TnOptionOrderPayload < BaseModel
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
    # @return [ProcessingStatus5Enum]
    attr_accessor :processing_status

    # TODO: Write general description for this method
    # @return [List of TnOptionGroup]
    attr_accessor :tn_option_groups

    # TODO: Write general description for this method
    # @return [List of TnOptionOrderError]
    attr_accessor :errors

    # TODO: Write general description for this method
    # @return [List of TnOptionOrderWarningPayload]
    attr_accessor :warnings

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
      @_hash['processing_status'] = 'processingStatus'
      @_hash['tn_option_groups'] = 'tnOptionGroups'
      @_hash['errors'] = 'errors'
      @_hash['warnings'] = 'warnings'
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
                   processing_status = nil,
                   tn_option_groups = nil,
                   errors = nil,
                   warnings = nil)
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
      @processing_status = processing_status
      @tn_option_groups = tn_option_groups
      @errors = errors
      @warnings = warnings
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
      processing_status = hash['processingStatus']
      # Parameter is an array, so we need to iterate through it
      tn_option_groups = nil
      unless hash['tnOptionGroups'].nil?
        tn_option_groups = []
        hash['tnOptionGroups'].each do |structure|
          tn_option_groups << (TnOptionGroup.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      errors = nil
      unless hash['errors'].nil?
        errors = []
        hash['errors'].each do |structure|
          errors << (TnOptionOrderError.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      warnings = nil
      unless hash['warnings'].nil?
        warnings = []
        hash['warnings'].each do |structure|
          warnings << (TnOptionOrderWarningPayload.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      TnOptionOrderPayload.new(id,
                               account_id,
                               name,
                               last_modified_date_in_utc,
                               last_modified_by,
                               created_by_user,
                               customer_order_id,
                               site_id,
                               peer_id,
                               order_create_date,
                               processing_status,
                               tn_option_groups,
                               errors,
                               warnings)
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
      processing_status = XmlUtilities.from_element(root, 'ProcessingStatus',
                                                    String)
      tn_option_groups = XmlUtilities.from_element_to_array(
        root, 'TnOptionGroup', TnOptionGroup,
        wrapping_element_name: 'TnOptionGroups'
      )
      errors = XmlUtilities.from_element_to_array(
        root, 'Error', TnOptionOrderError,
        wrapping_element_name: 'ErrorList'
      )
      warnings = XmlUtilities.from_element_to_array(
        root, 'Warning', TnOptionOrderWarningPayload,
        wrapping_element_name: 'Warnings'
      )

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
          processing_status,
          tn_option_groups,
          errors,
          warnings)
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
      XmlUtilities.add_as_subelement(doc, root, 'ProcessingStatus',
                                     processing_status)
      XmlUtilities.add_array_as_subelement(
        doc, root, 'TnOptionGroup', tn_option_groups,
        wrapping_element_name: 'TnOptionGroups'
      )
      XmlUtilities.add_array_as_subelement(doc, root, 'Error', errors,
                                           wrapping_element_name: 'ErrorList')
      XmlUtilities.add_array_as_subelement(doc, root, 'Warning', warnings,
                                           wrapping_element_name: 'Warnings')

      root
    end
  end
end
