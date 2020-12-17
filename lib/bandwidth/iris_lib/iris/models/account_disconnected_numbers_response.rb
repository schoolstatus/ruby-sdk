# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # AccountDisconnectedNumbersResponse Model.
  class AccountDisconnectedNumbersResponse < BaseModel
    # TODO: Write general description for this method
    # @return [TelephoneNumbers]
    attr_accessor :payload

    # TODO: Write general description for this method
    # @return [PaginationLinks]
    attr_accessor :pagination_links

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :total_count

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payload'] = 'payload'
      @_hash['pagination_links'] = 'paginationLinks'
      @_hash['total_count'] = 'totalCount'
      @_hash
    end

    def initialize(payload = nil,
                   pagination_links = nil,
                   total_count = nil)
      @payload = payload
      @pagination_links = pagination_links
      @total_count = total_count
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payload = TelephoneNumbers.from_hash(hash['payload']) if hash['payload']
      pagination_links = PaginationLinks.from_hash(hash['paginationLinks']) if
        hash['paginationLinks']
      total_count = hash['totalCount']

      # Create object from extracted values.
      AccountDisconnectedNumbersResponse.new(payload,
                                             pagination_links,
                                             total_count)
    end

    def self.from_element(root)
      payload = XmlUtilities.from_element(root, 'TelephoneNumbers',
                                          TelephoneNumbers)
      pagination_links = XmlUtilities.from_element(root, 'Links',
                                                   PaginationLinks)
      total_count = XmlUtilities.from_element(root, 'TotalCount', Integer)

      new(payload,
          pagination_links,
          total_count)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'TelephoneNumbers', payload)
      XmlUtilities.add_as_subelement(doc, root, 'Links', pagination_links)
      XmlUtilities.add_as_subelement(doc, root, 'TotalCount', total_count)

      root
    end
  end
end
