# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # OrderHistoryWrapper Model.
  class OrderHistoryWrapper < BaseModel
    # TODO: Write general description for this method
    # @return [List of OrderHistory]
    attr_accessor :order_histories

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['order_histories'] = 'orderHistories'
      @_hash
    end

    def initialize(order_histories = nil)
      @order_histories = order_histories
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      order_histories = nil
      unless hash['orderHistories'].nil?
        order_histories = []
        hash['orderHistories'].each do |structure|
          order_histories << (OrderHistory.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      OrderHistoryWrapper.new(order_histories)
    end

    def self.from_element(root)
      order_histories = XmlUtilities.from_element_to_array(root, 'OrderHistory',
                                                           OrderHistory)

      new(order_histories)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_array_as_subelement(doc, root, 'OrderHistory',
                                           order_histories)

      root
    end
  end
end
