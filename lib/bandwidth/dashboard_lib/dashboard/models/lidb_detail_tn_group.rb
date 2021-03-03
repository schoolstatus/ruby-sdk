# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # LidbDetailTnGroup Model.
  class LidbDetailTnGroup < BaseModel
    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :full_numbers

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :subscriber_information

    # TODO: Write general description for this method
    # @return [UseTypeEnum]
    attr_accessor :use_type

    # TODO: Write general description for this method
    # @return [VisibilityEnum]
    attr_accessor :visibility

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['full_numbers'] = 'fullNumbers'
      @_hash['subscriber_information'] = 'subscriberInformation'
      @_hash['use_type'] = 'useType'
      @_hash['visibility'] = 'visibility'
      @_hash
    end

    def initialize(full_numbers = nil,
                   subscriber_information = nil,
                   use_type = nil,
                   visibility = nil)
      @full_numbers = full_numbers
      @subscriber_information = subscriber_information
      @use_type = use_type
      @visibility = visibility
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      full_numbers = hash['fullNumbers']
      subscriber_information = hash['subscriberInformation']
      use_type = hash['useType']
      visibility = hash['visibility']

      # Create object from extracted values.
      LidbDetailTnGroup.new(full_numbers,
                            subscriber_information,
                            use_type,
                            visibility)
    end

    def self.from_element(root)
      full_numbers = XmlUtilities.from_element_to_array(
        root, 'TelephoneNumber', String,
        wrapping_element_name: 'TelephoneNumbers'
      )
      subscriber_information = XmlUtilities.from_element(
        root, 'SubscriberInformation', String
      )
      use_type = XmlUtilities.from_element(root, 'UseType', String)
      visibility = XmlUtilities.from_element(root, 'Visibility', String)

      new(full_numbers,
          subscriber_information,
          use_type,
          visibility)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_array_as_subelement(
        doc, root, 'TelephoneNumber', full_numbers,
        wrapping_element_name: 'TelephoneNumbers'
      )
      XmlUtilities.add_as_subelement(doc, root, 'SubscriberInformation',
                                     subscriber_information)
      XmlUtilities.add_as_subelement(doc, root, 'UseType', use_type)
      XmlUtilities.add_as_subelement(doc, root, 'Visibility', visibility)

      root
    end
  end
end
