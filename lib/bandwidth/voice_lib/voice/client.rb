# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
    module Voice
      #  bandwidth client class.
      class Client
        attr_reader :config

        # Access to client controller.
        # @return [APIController] Returns the controller instance.
        def client
          @client ||= APIController.new config
        end

        def initialize(timeout: 60, max_retries: 0, retry_interval: 1,
                       backoff_factor: 1, environment: Environment::PRODUCTION,
                       base_url: 'https://www.example.com',
                       iris_basic_auth_user_name: 'TODO: Replace',
                       iris_basic_auth_password: 'TODO: Replace',
                       messaging_basic_auth_user_name: 'TODO: Replace',
                       messaging_basic_auth_password: 'TODO: Replace',
                       two_factor_auth_basic_auth_user_name: 'TODO: Replace',
                       two_factor_auth_basic_auth_password: 'TODO: Replace',
                       voice_basic_auth_user_name: 'TODO: Replace',
                       voice_basic_auth_password: 'TODO: Replace',
                       web_rtc_basic_auth_user_name: 'TODO: Replace',
                       web_rtc_basic_auth_password: 'TODO: Replace',
                       config: nil)
          @config = if config.nil?
                      Configuration.new(timeout: timeout,
                                        max_retries: max_retries,
                                        retry_interval: retry_interval,
                                        backoff_factor: backoff_factor,
                                        environment: environment,
                                        base_url: base_url,
                                        iris_basic_auth_user_name: iris_basic_auth_user_name,
                                        iris_basic_auth_password: iris_basic_auth_password,
                                        messaging_basic_auth_user_name: messaging_basic_auth_user_name,
                                        messaging_basic_auth_password: messaging_basic_auth_password,
                                        two_factor_auth_basic_auth_user_name: two_factor_auth_basic_auth_user_name,
                                        two_factor_auth_basic_auth_password: two_factor_auth_basic_auth_password,
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
end
