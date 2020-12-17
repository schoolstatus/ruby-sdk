# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # FileData Model.
  class FileData < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :file_name

    # TODO: Write general description for this method
    # @return [FileMetaDataPayload]
    attr_accessor :file_meta_data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['file_name'] = 'fileName'
      @_hash['file_meta_data'] = 'fileMetaData'
      @_hash
    end

    def initialize(file_name = nil,
                   file_meta_data = nil)
      @file_name = file_name
      @file_meta_data = file_meta_data
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      file_name = hash['fileName']
      file_meta_data = FileMetaDataPayload.from_hash(hash['fileMetaData']) if
        hash['fileMetaData']

      # Create object from extracted values.
      FileData.new(file_name,
                   file_meta_data)
    end

    def self.from_element(root)
      file_name = XmlUtilities.from_element(root, 'FileName', String)
      file_meta_data = XmlUtilities.from_element(root, 'FileMetaData',
                                                 FileMetaDataPayload)

      new(file_name,
          file_meta_data)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'FileName', file_name)
      XmlUtilities.add_as_subelement(doc, root, 'FileMetaData', file_meta_data)

      root
    end
  end
end
