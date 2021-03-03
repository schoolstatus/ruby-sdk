# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # IrisAccountsDto Model.
  class IrisAccountsDto < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :total_count

    # TODO: Write general description for this method
    # @return [List of IrisAccountDto]
    attr_accessor :accounts

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['total_count'] = 'totalCount'
      @_hash['accounts'] = 'accounts'
      @_hash
    end

    def initialize(total_count = nil,
                   accounts = nil)
      @total_count = total_count
      @accounts = accounts
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      total_count = hash['totalCount']
      # Parameter is an array, so we need to iterate through it
      accounts = nil
      unless hash['accounts'].nil?
        accounts = []
        hash['accounts'].each do |structure|
          accounts << (IrisAccountDto.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      IrisAccountsDto.new(total_count,
                          accounts)
    end

    def self.from_element(root)
      total_count = XmlUtilities.from_element(root, 'totalCount', Integer)
      accounts = XmlUtilities.from_element_to_array(root, 'Account',
                                                    IrisAccountDto)

      new(total_count,
          accounts)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'totalCount', total_count)
      XmlUtilities.add_array_as_subelement(doc, root, 'Account', accounts)

      root
    end
  end
end
