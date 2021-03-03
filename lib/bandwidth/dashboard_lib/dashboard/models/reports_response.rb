# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # ReportsResponse Model.
  class ReportsResponse < BaseModel
    # TODO: Write general description for this method
    # @return [Reports]
    attr_accessor :reports

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['reports'] = 'reports'
      @_hash
    end

    def initialize(reports = nil)
      @reports = reports
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      reports = Reports.from_hash(hash['reports']) if hash['reports']

      # Create object from extracted values.
      ReportsResponse.new(reports)
    end

    def self.from_element(root)
      reports = XmlUtilities.from_element(root, 'Reports', Reports)

      new(reports)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'Reports', reports)

      root
    end
  end
end
