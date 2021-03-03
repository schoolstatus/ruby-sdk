# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # ManualPortOutResponse Model.
  class ManualPortOutResponse < BaseModel
    # TODO: Write general description for this method
    # @return [IrisStatus]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :order_id

    # TODO: Write general description for this method
    # @return [PortOutStatus1Enum]
    attr_accessor :port_out_status

    # TODO: Write general description for this method
    # @return [ManualPortOutRequest]
    attr_accessor :manual_port_out_request

    # TODO: Write general description for this method
    # @return [List of LnpError]
    attr_accessor :errors

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['status'] = 'status'
      @_hash['order_id'] = 'orderId'
      @_hash['port_out_status'] = 'portOutStatus'
      @_hash['manual_port_out_request'] = 'manualPortOutRequest'
      @_hash['errors'] = 'errors'
      @_hash
    end

    def initialize(status = nil,
                   order_id = nil,
                   port_out_status = nil,
                   manual_port_out_request = nil,
                   errors = nil)
      @status = status
      @order_id = order_id
      @port_out_status = port_out_status
      @manual_port_out_request = manual_port_out_request
      @errors = errors
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      status = IrisStatus.from_hash(hash['status']) if hash['status']
      order_id = hash['orderId']
      port_out_status = hash['portOutStatus']
      if hash['manualPortOutRequest']
        manual_port_out_request = ManualPortOutRequest.from_hash(hash['manualPortOutRequest'])
      end
      # Parameter is an array, so we need to iterate through it
      errors = nil
      unless hash['errors'].nil?
        errors = []
        hash['errors'].each do |structure|
          errors << (LnpError.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      ManualPortOutResponse.new(status,
                                order_id,
                                port_out_status,
                                manual_port_out_request,
                                errors)
    end

    def self.from_element(root)
      status = XmlUtilities.from_element(root, 'Status', IrisStatus)
      order_id = XmlUtilities.from_element(root, 'OrderId', String)
      port_out_status = XmlUtilities.from_element(root, 'ProcessingStatus',
                                                  String)
      manual_port_out_request = XmlUtilities.from_element(root,
                                                          'PortOutRequest',
                                                          ManualPortOutRequest)
      errors = XmlUtilities.from_element_to_array(root, 'Errors', LnpError)

      new(status,
          order_id,
          port_out_status,
          manual_port_out_request,
          errors)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'Status', status)
      XmlUtilities.add_as_subelement(doc, root, 'OrderId', order_id)
      XmlUtilities.add_as_subelement(doc, root, 'ProcessingStatus',
                                     port_out_status)
      XmlUtilities.add_as_subelement(doc, root, 'PortOutRequest',
                                     manual_port_out_request)
      XmlUtilities.add_array_as_subelement(doc, root, 'Errors', errors)

      root
    end
  end
end
