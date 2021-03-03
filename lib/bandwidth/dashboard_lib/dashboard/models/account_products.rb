# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # AccountProducts Model.
  class AccountProducts < BaseModel
    # TODO: Write general description for this method
    # @return [List of AccountProduct]
    attr_accessor :account_products

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_products'] = 'accountProducts'
      @_hash
    end

    def initialize(account_products = nil)
      @account_products = account_products
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      account_products = nil
      unless hash['accountProducts'].nil?
        account_products = []
        hash['accountProducts'].each do |structure|
          account_products << (AccountProduct.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      AccountProducts.new(account_products)
    end

    def self.from_element(root)
      account_products = XmlUtilities.from_element_to_array(root, 'Product',
                                                            AccountProduct)

      new(account_products)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_array_as_subelement(doc, root, 'Product',
                                           account_products)

      root
    end
  end
end
