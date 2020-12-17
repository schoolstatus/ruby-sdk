# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # LdapUserPreferences Model.
  class LdapUserPreferences < BaseModel
    # TODO: Write general description for this method
    # @return [List of LdapUserPreference]
    attr_accessor :ldap_user_preferences

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :preferences_names

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ldap_user_preferences'] = 'ldapUserPreferences'
      @_hash['preferences_names'] = 'preferencesNames'
      @_hash
    end

    def initialize(ldap_user_preferences = nil,
                   preferences_names = nil)
      @ldap_user_preferences = ldap_user_preferences
      @preferences_names = preferences_names
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      ldap_user_preferences = nil
      unless hash['ldapUserPreferences'].nil?
        ldap_user_preferences = []
        hash['ldapUserPreferences'].each do |structure|
          ldap_user_preferences << (LdapUserPreference.from_hash(structure) if structure)
        end
      end
      preferences_names = hash['preferencesNames']

      # Create object from extracted values.
      LdapUserPreferences.new(ldap_user_preferences,
                              preferences_names)
    end

    def self.from_element(root)
      ldap_user_preferences = XmlUtilities.from_element_to_array(
        root, 'UserPreference', LdapUserPreference
      )
      preferences_names = XmlUtilities.from_element_to_array(root,
                                                             'OptionalValue',
                                                             String)

      new(ldap_user_preferences,
          preferences_names)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_array_as_subelement(doc, root, 'UserPreference',
                                           ldap_user_preferences)
      XmlUtilities.add_array_as_subelement(doc, root, 'OptionalValue',
                                           preferences_names)

      root
    end
  end
end
