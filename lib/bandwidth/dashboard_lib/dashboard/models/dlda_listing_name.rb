# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # DldaListingName Model.
  class DldaListingName < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :first_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :first_name2

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :designation

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :title_of_lineage

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :title_of_address

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :title_of_address2

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :title_of_lineage_name2

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :title_of_address_name2

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :title_of_address2_name2

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :place_listing_as

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['first_name'] = 'firstName'
      @_hash['first_name2'] = 'firstName2'
      @_hash['last_name'] = 'lastName'
      @_hash['designation'] = 'designation'
      @_hash['title_of_lineage'] = 'titleOfLineage'
      @_hash['title_of_address'] = 'titleOfAddress'
      @_hash['title_of_address2'] = 'titleOfAddress2'
      @_hash['title_of_lineage_name2'] = 'titleOfLineageName2'
      @_hash['title_of_address_name2'] = 'titleOfAddressName2'
      @_hash['title_of_address2_name2'] = 'titleOfAddress2Name2'
      @_hash['place_listing_as'] = 'placeListingAs'
      @_hash
    end

    def initialize(first_name = nil,
                   first_name2 = nil,
                   last_name = nil,
                   designation = nil,
                   title_of_lineage = nil,
                   title_of_address = nil,
                   title_of_address2 = nil,
                   title_of_lineage_name2 = nil,
                   title_of_address_name2 = nil,
                   title_of_address2_name2 = nil,
                   place_listing_as = nil)
      @first_name = first_name
      @first_name2 = first_name2
      @last_name = last_name
      @designation = designation
      @title_of_lineage = title_of_lineage
      @title_of_address = title_of_address
      @title_of_address2 = title_of_address2
      @title_of_lineage_name2 = title_of_lineage_name2
      @title_of_address_name2 = title_of_address_name2
      @title_of_address2_name2 = title_of_address2_name2
      @place_listing_as = place_listing_as
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      first_name = hash['firstName']
      first_name2 = hash['firstName2']
      last_name = hash['lastName']
      designation = hash['designation']
      title_of_lineage = hash['titleOfLineage']
      title_of_address = hash['titleOfAddress']
      title_of_address2 = hash['titleOfAddress2']
      title_of_lineage_name2 = hash['titleOfLineageName2']
      title_of_address_name2 = hash['titleOfAddressName2']
      title_of_address2_name2 = hash['titleOfAddress2Name2']
      place_listing_as = hash['placeListingAs']

      # Create object from extracted values.
      DldaListingName.new(first_name,
                          first_name2,
                          last_name,
                          designation,
                          title_of_lineage,
                          title_of_address,
                          title_of_address2,
                          title_of_lineage_name2,
                          title_of_address_name2,
                          title_of_address2_name2,
                          place_listing_as)
    end

    def self.from_element(root)
      first_name = XmlUtilities.from_element(root, 'FirstName', String)
      first_name2 = XmlUtilities.from_element(root, 'FirstName2', String)
      last_name = XmlUtilities.from_element(root, 'LastName', String)
      designation = XmlUtilities.from_element(root, 'Designation', String)
      title_of_lineage = XmlUtilities.from_element(root, 'TitleOfLineage',
                                                   String)
      title_of_address = XmlUtilities.from_element(root, 'TitleOfAddress',
                                                   String)
      title_of_address2 = XmlUtilities.from_element(root, 'TitleOfAddress2',
                                                    String)
      title_of_lineage_name2 = XmlUtilities.from_element(root,
                                                         'TitleOfLineageName2',
                                                         String)
      title_of_address_name2 = XmlUtilities.from_element(root,
                                                         'TitleOfAddressName2',
                                                         String)
      title_of_address2_name2 = XmlUtilities.from_element(
        root, 'TitleOfAddress2Name2', String
      )
      place_listing_as = XmlUtilities.from_element(root, 'PlaceListingAs',
                                                   String)

      new(first_name,
          first_name2,
          last_name,
          designation,
          title_of_lineage,
          title_of_address,
          title_of_address2,
          title_of_lineage_name2,
          title_of_address_name2,
          title_of_address2_name2,
          place_listing_as)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'FirstName', first_name)
      XmlUtilities.add_as_subelement(doc, root, 'FirstName2', first_name2)
      XmlUtilities.add_as_subelement(doc, root, 'LastName', last_name)
      XmlUtilities.add_as_subelement(doc, root, 'Designation', designation)
      XmlUtilities.add_as_subelement(doc, root, 'TitleOfLineage',
                                     title_of_lineage)
      XmlUtilities.add_as_subelement(doc, root, 'TitleOfAddress',
                                     title_of_address)
      XmlUtilities.add_as_subelement(doc, root, 'TitleOfAddress2',
                                     title_of_address2)
      XmlUtilities.add_as_subelement(doc, root, 'TitleOfLineageName2',
                                     title_of_lineage_name2)
      XmlUtilities.add_as_subelement(doc, root, 'TitleOfAddressName2',
                                     title_of_address_name2)
      XmlUtilities.add_as_subelement(doc, root, 'TitleOfAddress2Name2',
                                     title_of_address2_name2)
      XmlUtilities.add_as_subelement(doc, root, 'PlaceListingAs',
                                     place_listing_as)

      root
    end
  end
end
