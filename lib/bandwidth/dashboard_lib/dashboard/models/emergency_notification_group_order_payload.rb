# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # EmergencyNotificationGroupOrderPayload Model.
  class EmergencyNotificationGroupOrderPayload < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :identifier

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [List of EmergencyNotificationRecipientPayload]
    attr_accessor :added_emergency_notification_recipients

    # TODO: Write general description for this method
    # @return [List of EmergencyNotificationRecipientPayload]
    attr_accessor :deleted_emergency_notification_recipients

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :error_list

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['identifier'] = 'identifier'
      @_hash['description'] = 'description'
      @_hash['added_emergency_notification_recipients'] =
        'addedEmergencyNotificationRecipients'
      @_hash['deleted_emergency_notification_recipients'] =
        'deletedEmergencyNotificationRecipients'
      @_hash['error_list'] = 'errorList'
      @_hash
    end

    def initialize(identifier = nil,
                   description = nil,
                   added_emergency_notification_recipients = nil,
                   deleted_emergency_notification_recipients = nil,
                   error_list = nil)
      @identifier = identifier
      @description = description
      @added_emergency_notification_recipients =
        added_emergency_notification_recipients
      @deleted_emergency_notification_recipients =
        deleted_emergency_notification_recipients
      @error_list = error_list
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      identifier = hash['identifier']
      description = hash['description']
      # Parameter is an array, so we need to iterate through it
      added_emergency_notification_recipients = nil
      unless hash['addedEmergencyNotificationRecipients'].nil?
        added_emergency_notification_recipients = []
        hash['addedEmergencyNotificationRecipients'].each do |structure|
          added_emergency_notification_recipients << (EmergencyNotificationRecipientPayload.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      deleted_emergency_notification_recipients = nil
      unless hash['deletedEmergencyNotificationRecipients'].nil?
        deleted_emergency_notification_recipients = []
        hash['deletedEmergencyNotificationRecipients'].each do |structure|
          deleted_emergency_notification_recipients << (EmergencyNotificationRecipientPayload.from_hash(structure) if structure)
        end
      end
      error_list = hash['errorList']

      # Create object from extracted values.
      EmergencyNotificationGroupOrderPayload.new(identifier,
                                                 description,
                                                 added_emergency_notification_recipients,
                                                 deleted_emergency_notification_recipients,
                                                 error_list)
    end

    def self.from_element(root)
      identifier = XmlUtilities.from_element(root, 'Identifier', String)
      description = XmlUtilities.from_element(root, 'Description', String)
      added_emergency_notification_recipients = XmlUtilities.from_element_to_array(
        root, 'EmergencyNotificationRecipient',
        EmergencyNotificationRecipientPayload,
        wrapping_element_name: 'AddedEmergencyNotificationRecipients'
      )
      deleted_emergency_notification_recipients = XmlUtilities.from_element_to_array(
        root, 'EmergencyNotificationRecipient',
        EmergencyNotificationRecipientPayload,
        wrapping_element_name: 'DeletedEmergencyNotificationRecipients'
      )
      error_list = XmlUtilities.from_element_to_array(
        root, 'Description', String,
        wrapping_element_name: 'ErrorList'
      )

      new(identifier,
          description,
          added_emergency_notification_recipients,
          deleted_emergency_notification_recipients,
          error_list)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'Identifier', identifier)
      XmlUtilities.add_as_subelement(doc, root, 'Description', description)
      XmlUtilities.add_array_as_subelement(
        doc, root, 'EmergencyNotificationRecipient',
        added_emergency_notification_recipients,
        wrapping_element_name: 'AddedEmergencyNotificationRecipients'
      )
      XmlUtilities.add_array_as_subelement(
        doc, root, 'EmergencyNotificationRecipient',
        deleted_emergency_notification_recipients,
        wrapping_element_name: 'DeletedEmergencyNotificationRecipients'
      )
      XmlUtilities.add_array_as_subelement(doc, root, 'Description', error_list,
                                           wrapping_element_name: 'ErrorList')

      root
    end
  end
end
