# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # Subscription Model.
  class Subscription < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :subscription_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :order_type_value

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :order_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :subscription_event_type_value

    # TODO: Write general description for this method
    # @return [EmailSubscription]
    attr_accessor :email_subscription

    # TODO: Write general description for this method
    # @return [CallbackSubscription]
    attr_accessor :callback_subscription

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subscription_id'] = 'subscriptionId'
      @_hash['order_type_value'] = 'orderTypeValue'
      @_hash['order_id'] = 'orderId'
      @_hash['subscription_event_type_value'] = 'subscriptionEventTypeValue'
      @_hash['email_subscription'] = 'emailSubscription'
      @_hash['callback_subscription'] = 'callbackSubscription'
      @_hash
    end

    def initialize(subscription_id = nil,
                   order_type_value = nil,
                   order_id = nil,
                   subscription_event_type_value = nil,
                   email_subscription = nil,
                   callback_subscription = nil)
      @subscription_id = subscription_id
      @order_type_value = order_type_value
      @order_id = order_id
      @subscription_event_type_value = subscription_event_type_value
      @email_subscription = email_subscription
      @callback_subscription = callback_subscription
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subscription_id = hash['subscriptionId']
      order_type_value = hash['orderTypeValue']
      order_id = hash['orderId']
      subscription_event_type_value = hash['subscriptionEventTypeValue']
      if hash['emailSubscription']
        email_subscription = EmailSubscription.from_hash(hash['emailSubscription'])
      end
      if hash['callbackSubscription']
        callback_subscription = CallbackSubscription.from_hash(hash['callbackSubscription'])
      end

      # Create object from extracted values.
      Subscription.new(subscription_id,
                       order_type_value,
                       order_id,
                       subscription_event_type_value,
                       email_subscription,
                       callback_subscription)
    end

    def self.from_element(root)
      subscription_id = XmlUtilities.from_element(root, 'SubscriptionId',
                                                  String)
      order_type_value = XmlUtilities.from_element(root, 'OrderType', String)
      order_id = XmlUtilities.from_element(root, 'OrderId', String)
      subscription_event_type_value = XmlUtilities.from_element(root,
                                                                'EventType',
                                                                String)
      email_subscription = XmlUtilities.from_element(root, 'EmailSubscription',
                                                     EmailSubscription)
      callback_subscription = XmlUtilities.from_element(root,
                                                        'CallbackSubscription',
                                                        CallbackSubscription)

      new(subscription_id,
          order_type_value,
          order_id,
          subscription_event_type_value,
          email_subscription,
          callback_subscription)
    end

    def to_xml_element(doc, root_name)
      root = doc.create_element(root_name)

      XmlUtilities.add_as_subelement(doc, root, 'SubscriptionId',
                                     subscription_id)
      XmlUtilities.add_as_subelement(doc, root, 'OrderType', order_type_value)
      XmlUtilities.add_as_subelement(doc, root, 'OrderId', order_id)
      XmlUtilities.add_as_subelement(doc, root, 'EventType',
                                     subscription_event_type_value)
      XmlUtilities.add_as_subelement(doc, root, 'EmailSubscription',
                                     email_subscription)
      XmlUtilities.add_as_subelement(doc, root, 'CallbackSubscription',
                                     callback_subscription)

      root
    end
  end
end
