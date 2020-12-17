# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # ProductTnHistoryResponse Model.
  class ProductTnHistoryResponse < BaseModel
    # TODO: Write general description for this method
    # @return [ProductTnReportWrapper]
    attr_accessor :product_tn_report_wrapper

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['product_tn_report_wrapper'] = 'productTnReportWrapper'
      @_hash
    end

    def initialize(product_tn_report_wrapper = nil)
      @product_tn_report_wrapper = product_tn_report_wrapper
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      if hash['productTnReportWrapper']
        product_tn_report_wrapper = ProductTnReportWrapper.from_hash(hash['productTnReportWrapper'])
      end

      # Create object from extracted values.
      ProductTnHistoryResponse.new(product_tn_report_wrapper)
    end

    def self.from_element(root)
      product_tn_report_wrapper = XmlUtilities.from_element(
        root, 'ProductTNDetails', ProductTnReportWrapper
      )

      new(product_tn_report_wrapper)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'ProductTNDetails',
                                     product_tn_report_wrapper)

      root
    end
  end
end
