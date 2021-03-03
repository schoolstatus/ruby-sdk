# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # TerminationProductWrapper Model.
  class TerminationProductWrapper < BaseModel
    # TODO: Write general description for this method
    # @return [TerminationProduct]
    attr_accessor :termination_product

    # TODO: Write general description for this method
    # @return [TerminationProductAssignment]
    attr_accessor :termination_product_assignment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['termination_product'] = 'terminationProduct'
      @_hash['termination_product_assignment'] =
        'terminationProductAssignment'
      @_hash
    end

    def initialize(termination_product = nil,
                   termination_product_assignment = nil)
      @termination_product = termination_product
      @termination_product_assignment = termination_product_assignment
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      if hash['terminationProduct']
        termination_product = TerminationProduct.from_hash(hash['terminationProduct'])
      end
      if hash['terminationProductAssignment']
        termination_product_assignment = TerminationProductAssignment.from_hash(hash['terminationProductAssignment'])
      end

      # Create object from extracted values.
      TerminationProductWrapper.new(termination_product,
                                    termination_product_assignment)
    end

    def self.from_element(root)
      termination_product = XmlUtilities.from_element(root,
                                                      'TerminationProduct',
                                                      TerminationProduct)
      termination_product_assignment = XmlUtilities.from_element(
        root, 'TerminationProductAssignment',
        TerminationProductAssignment
      )

      new(termination_product,
          termination_product_assignment)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'TerminationProduct',
                                     termination_product)
      XmlUtilities.add_as_subelement(doc, root, 'TerminationProductAssignment',
                                     termination_product_assignment)

      root
    end
  end
end
