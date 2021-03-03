# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # TerminationGateway Model.
  class TerminationGateway < BaseModel
    # TODO: Write general description for this method
    # @return [Long]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Long]
    attr_accessor :account_id

    # TODO: Write general description for this method
    # @return [Long]
    attr_accessor :lcr_id

    # TODO: Write general description for this method
    # @return [Long]
    attr_accessor :core2_id

    # TODO: Write general description for this method
    # @return [Long]
    attr_accessor :core2_profile_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :site_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :host

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :port

    # TODO: Write general description for this method
    # @return [Attributes]
    attr_accessor :attributes

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['account_id'] = 'accountId'
      @_hash['lcr_id'] = 'lcrId'
      @_hash['core2_id'] = 'core2Id'
      @_hash['core2_profile_id'] = 'core2ProfileId'
      @_hash['site_id'] = 'siteId'
      @_hash['host'] = 'host'
      @_hash['port'] = 'port'
      @_hash['attributes'] = 'attributes'
      @_hash
    end

    def initialize(id = nil,
                   account_id = nil,
                   lcr_id = nil,
                   core2_id = nil,
                   core2_profile_id = nil,
                   site_id = nil,
                   host = nil,
                   port = nil,
                   attributes = nil)
      @id = id
      @account_id = account_id
      @lcr_id = lcr_id
      @core2_id = core2_id
      @core2_profile_id = core2_profile_id
      @site_id = site_id
      @host = host
      @port = port
      @attributes = attributes
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      account_id = hash['accountId']
      lcr_id = hash['lcrId']
      core2_id = hash['core2Id']
      core2_profile_id = hash['core2ProfileId']
      site_id = hash['siteId']
      host = hash['host']
      port = hash['port']
      attributes = Attributes.from_hash(hash['attributes']) if
        hash['attributes']

      # Create object from extracted values.
      TerminationGateway.new(id,
                             account_id,
                             lcr_id,
                             core2_id,
                             core2_profile_id,
                             site_id,
                             host,
                             port,
                             attributes)
    end

    def self.from_element(root)
      id = XmlUtilities.from_element(root, 'id', Integer)
      account_id = XmlUtilities.from_element(root, 'accountId', Integer)
      lcr_id = XmlUtilities.from_element(root, 'lcrId', Integer)
      core2_id = XmlUtilities.from_element(root, 'core2Id', Integer)
      core2_profile_id = XmlUtilities.from_element(root, 'core2ProfileId',
                                                   Integer)
      site_id = XmlUtilities.from_element(root, 'siteId', Integer)
      host = XmlUtilities.from_element(root, 'host', String)
      port = XmlUtilities.from_element(root, 'port', Integer)
      attributes = XmlUtilities.from_element(root, 'TerminationAttributes',
                                             Attributes)

      new(id,
          account_id,
          lcr_id,
          core2_id,
          core2_profile_id,
          site_id,
          host,
          port,
          attributes)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'id', id)
      XmlUtilities.add_as_subelement(doc, root, 'accountId', account_id)
      XmlUtilities.add_as_subelement(doc, root, 'lcrId', lcr_id)
      XmlUtilities.add_as_subelement(doc, root, 'core2Id', core2_id)
      XmlUtilities.add_as_subelement(doc, root, 'core2ProfileId',
                                     core2_profile_id)
      XmlUtilities.add_as_subelement(doc, root, 'siteId', site_id)
      XmlUtilities.add_as_subelement(doc, root, 'host', host)
      XmlUtilities.add_as_subelement(doc, root, 'port', port)
      XmlUtilities.add_as_subelement(doc, root, 'TerminationAttributes',
                                     attributes)

      root
    end
  end
end
