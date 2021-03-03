# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # AnalyticsResponse Model.
  class AnalyticsResponse < BaseModel
    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :payload

    # TODO: Write general description for this method
    # @return [List of ValidationError]
    attr_accessor :errors

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payload'] = 'payload'
      @_hash['errors'] = 'errors'
      @_hash
    end

    def initialize(payload = nil,
                   errors = nil)
      @payload = payload
      @errors = errors
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payload = hash['payload']
      # Parameter is an array, so we need to iterate through it
      errors = nil
      unless hash['errors'].nil?
        errors = []
        hash['errors'].each do |structure|
          errors << (ValidationError.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      AnalyticsResponse.new(payload,
                            errors)
    end

    def self.from_element(root)
      payload = XmlUtilities.from_element(root, 'payload', String)
      errors = XmlUtilities.from_element_to_array(
        root, 'ValidationError', ValidationError,
        wrapping_element_name: 'ErrorList'
      )

      new(payload,
          errors)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'payload', payload)
      XmlUtilities.add_array_as_subelement(doc, root, 'ValidationError', errors,
                                           wrapping_element_name: 'ErrorList')

      root
    end
  end
end
