# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # TollFreeWildCharSearchAndOrderType Model.
  class TollFreeWildCharSearchAndOrderType < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :toll_free_wild_card_pattern

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :quantity

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['toll_free_wild_card_pattern'] = 'tollFreeWildCardPattern'
      @_hash['quantity'] = 'quantity'
      @_hash
    end

    def initialize(toll_free_wild_card_pattern = nil,
                   quantity = nil)
      @toll_free_wild_card_pattern = toll_free_wild_card_pattern
      @quantity = quantity
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      toll_free_wild_card_pattern = hash['tollFreeWildCardPattern']
      quantity = hash['quantity']

      # Create object from extracted values.
      TollFreeWildCharSearchAndOrderType.new(toll_free_wild_card_pattern,
                                             quantity)
    end

    def self.from_element(root)
      toll_free_wild_card_pattern = XmlUtilities.from_element(
        root, 'TollFreeWildCardPattern', String
      )
      quantity = XmlUtilities.from_element(root, 'Quantity', Integer)

      new(toll_free_wild_card_pattern,
          quantity)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'TollFreeWildCardPattern',
                                     toll_free_wild_card_pattern)
      XmlUtilities.add_as_subelement(doc, root, 'Quantity', quantity)

      root
    end
  end
end
