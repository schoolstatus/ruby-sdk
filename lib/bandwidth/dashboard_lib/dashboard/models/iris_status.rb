# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # IrisStatus Model.
  class IrisStatus < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [IrisStatusType]
    attr_accessor :status_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['description'] = 'description'
      @_hash['code'] = 'code'
      @_hash['status_type'] = 'statusType'
      @_hash
    end

    def initialize(description = nil,
                   code = nil,
                   status_type = nil)
      @description = description
      @code = code
      @status_type = status_type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      description = hash['description']
      code = hash['code']
      status_type = IrisStatusType.from_hash(hash['statusType']) if
        hash['statusType']

      # Create object from extracted values.
      IrisStatus.new(description,
                     code,
                     status_type)
    end

    def self.from_element(root)
      description = XmlUtilities.from_element(root, 'Description', String)
      code = XmlUtilities.from_element(root, 'Code', Integer)
      status_type = XmlUtilities.from_element(root, 'IrisStatusType',
                                              IrisStatusType)

      new(description,
          code,
          status_type)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'Description', description)
      XmlUtilities.add_as_subelement(doc, root, 'Code', code)
      XmlUtilities.add_as_subelement(doc, root, 'IrisStatusType', status_type)

      root
    end
  end
end
