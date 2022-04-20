# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  #  bandwidth client class.
  class Client
    attr_reader :config
    # Access to messaging_client controller.
    # @return [Messaging::Client] Returns the client instance.
    def messaging_client
      @messaging_client ||= Messaging::Client.new(config: config)
    end
    # Access to multi_factor_auth_client controller.
    # @return [MultiFactorAuth::Client] Returns the client instance.
    def multi_factor_auth_client
      @multi_factor_auth_client ||= MultiFactorAuth::Client.new(config: config)
    end
    # Access to phone_number_lookup_client controller.
    # @return [PhoneNumberLookup::Client] Returns the client instance.
    def phone_number_lookup_client
      @phone_number_lookup_client ||= PhoneNumberLookup::Client.new(config: config)
    end
    # Access to voice_client controller.
    # @return [Voice::Client] Returns the client instance.
    def voice_client
      @voice_client ||= Voice::Client.new(config: config)
    end
    # Access to web_rtc_client controller.
    # @return [WebRtc::Client] Returns the client instance.
    def web_rtc_client
      @web_rtc_client ||= WebRtc::Client.new(config: config)
    end

    def initialize(timeout: 60, max_retries: 0, retry_interval: 1,
                   backoff_factor: 2,
                   retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524, 408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
                   retry_methods: %i[get put get put],
                   environment: Environment::PRODUCTION,
                   base_url: 'https://www.example.com',
                   messaging_basic_auth_user_name: 'TODO: Replace',
                   messaging_basic_auth_password: 'TODO: Replace',
                   multi_factor_auth_basic_auth_user_name: 'TODO: Replace',
                   multi_factor_auth_basic_auth_password: 'TODO: Replace',
                   phone_number_lookup_basic_auth_user_name: 'TODO: Replace',
                   phone_number_lookup_basic_auth_password: 'TODO: Replace',
                   voice_basic_auth_user_name: 'TODO: Replace',
                   voice_basic_auth_password: 'TODO: Replace',
                   web_rtc_basic_auth_user_name: 'TODO: Replace',
                   web_rtc_basic_auth_password: 'TODO: Replace', config: nil)
      @config = if config.nil?
                  Configuration.new(timeout: timeout, max_retries: max_retries,
                                    retry_interval: retry_interval,
                                    backoff_factor: backoff_factor,
                                    retry_statuses: retry_statuses,
                                    retry_methods: retry_methods,
                                    environment: environment,
                                    base_url: base_url,
                                    messaging_basic_auth_user_name: messaging_basic_auth_user_name,
                                    messaging_basic_auth_password: messaging_basic_auth_password,
                                    multi_factor_auth_basic_auth_user_name: multi_factor_auth_basic_auth_user_name,
                                    multi_factor_auth_basic_auth_password: multi_factor_auth_basic_auth_password,
                                    phone_number_lookup_basic_auth_user_name: phone_number_lookup_basic_auth_user_name,
                                    phone_number_lookup_basic_auth_password: phone_number_lookup_basic_auth_password,
                                    voice_basic_auth_user_name: voice_basic_auth_user_name,
                                    voice_basic_auth_password: voice_basic_auth_password,
                                    web_rtc_basic_auth_user_name: web_rtc_basic_auth_user_name,
                                    web_rtc_basic_auth_password: web_rtc_basic_auth_password)
                else
                  config
                end
    end
  end
end
