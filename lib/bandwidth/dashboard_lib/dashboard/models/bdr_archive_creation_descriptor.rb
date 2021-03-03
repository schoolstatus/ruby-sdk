# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # BdrArchiveCreationDescriptor Model.
  class BdrArchiveCreationDescriptor < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :start_date

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :end_date

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['start_date'] = 'startDate'
      @_hash['end_date'] = 'endDate'
      @_hash
    end

    def initialize(start_date = nil,
                   end_date = nil)
      @start_date = start_date
      @end_date = end_date
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      start_date = hash['startDate']
      end_date = hash['endDate']

      # Create object from extracted values.
      BdrArchiveCreationDescriptor.new(start_date,
                                       end_date)
    end

    def self.from_element(root)
      start_date = XmlUtilities.from_element(root, 'StartDate', String)
      end_date = XmlUtilities.from_element(root, 'EndDate', String)

      new(start_date,
          end_date)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'StartDate', start_date)
      XmlUtilities.add_as_subelement(doc, root, 'EndDate', end_date)

      root
    end
  end
end
