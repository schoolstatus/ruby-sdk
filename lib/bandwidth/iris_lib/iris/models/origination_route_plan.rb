# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # OriginationRoutePlan Model.
  class OriginationRoutePlan < BaseModel
    # TODO: Write general description for this method
    # @return [UUID | String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [List of OriginationRoutePayload]
    attr_accessor :origination_routes

    # TODO: Write general description for this method
    # @return [ActionEnum]
    attr_accessor :action

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['origination_routes'] = 'originationRoutes'
      @_hash['action'] = 'action'
      @_hash
    end

    def initialize(id = nil,
                   origination_routes = nil,
                   action = nil)
      @id = id
      @origination_routes = origination_routes
      @action = action
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      # Parameter is an array, so we need to iterate through it
      origination_routes = nil
      unless hash['originationRoutes'].nil?
        origination_routes = []
        hash['originationRoutes'].each do |structure|
          origination_routes << (OriginationRoutePayload.from_hash(structure) if structure)
        end
      end
      action = hash['action']

      # Create object from extracted values.
      OriginationRoutePlan.new(id,
                               origination_routes,
                               action)
    end

    def self.from_element(root)
      id = XmlUtilities.from_element(root, 'Id', String)
      origination_routes = XmlUtilities.from_element_to_array(
        root, 'Route', OriginationRoutePayload
      )
      action = XmlUtilities.from_element(root, 'Action', String)

      new(id,
          origination_routes,
          action)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'Id', id)
      XmlUtilities.add_array_as_subelement(doc, root, 'Route',
                                           origination_routes)
      XmlUtilities.add_as_subelement(doc, root, 'Action', action)

      root
    end
  end
end
