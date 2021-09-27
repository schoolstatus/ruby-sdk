# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # MachineDetectionConfiguration Model.
  class MachineDetectionConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The machine detection mode. If set to 'async', the detection result will
    # be sent in a 'machineDetectionComplete' callback. If set to 'sync', the
    # 'answer' callback will wait for the machine detection to complete and will
    # include its result. Default is 'async'.
    # @return [ModeEnum]
    attr_accessor :mode

    # Total amount of time (in seconds) before giving up.
    # @return [Float]
    attr_accessor :detection_timeout

    # If no speech is detected in this period, a callback with a 'silence'
    # result is sent. Default is 10 seconds.
    # @return [Float]
    attr_accessor :silence_timeout

    # When speech has ended and a result couldn't be determined based on the
    # audio content itself, this value is used to determine if the speaker is a
    # machine based on the speech duration. If the length of the speech detected
    # is greater than or equal to this threshold, the result will be
    # 'answering-machine'. If the length of speech detected is below this
    # threshold, the result will be 'human'. Default is 10 seconds.
    # @return [Float]
    attr_accessor :speech_threshold

    # Amount of silence (in seconds) before assuming the callee has finished
    # speaking.
    # @return [Float]
    attr_accessor :speech_end_threshold

    # If set to 'true' and if an answering machine is detected, the
    # 'answering-machine' callback will be delayed until the machine is done
    # speaking or until the 'detectionTimeout' is exceeded. If false, the
    # 'answering-machine' result is sent immediately. Default is 'false'.
    # @return [Boolean]
    attr_accessor :delay_result

    # The URL to send the 'machineDetectionComplete' callback when the detection
    # is completed. Only for 'async' mode.
    # @return [String]
    attr_accessor :callback_url

    # The URL to send the 'machineDetectionComplete' callback when the detection
    # is completed. Only for 'async' mode.
    # @return [CallbackMethodEnum]
    attr_accessor :callback_method

    # The URL to send the 'machineDetectionComplete' callback when the detection
    # is completed. Only for 'async' mode.
    # @return [String]
    attr_accessor :fallback_url

    # The URL to send the 'machineDetectionComplete' callback when the detection
    # is completed. Only for 'async' mode.
    # @return [FallbackMethodEnum]
    attr_accessor :fallback_method

    # The URL to send the 'machineDetectionComplete' callback when the detection
    # is completed. Only for 'async' mode.
    # @return [String]
    attr_accessor :username

    # The URL to send the 'machineDetectionComplete' callback when the detection
    # is completed. Only for 'async' mode.
    # @return [String]
    attr_accessor :password

    # The URL to send the 'machineDetectionComplete' callback when the detection
    # is completed. Only for 'async' mode.
    # @return [String]
    attr_accessor :fallback_username

    # The URL to send the 'machineDetectionComplete' callback when the detection
    # is completed. Only for 'async' mode.
    # @return [String]
    attr_accessor :fallback_password

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mode'] = 'mode'
      @_hash['detection_timeout'] = 'detectionTimeout'
      @_hash['silence_timeout'] = 'silenceTimeout'
      @_hash['speech_threshold'] = 'speechThreshold'
      @_hash['speech_end_threshold'] = 'speechEndThreshold'
      @_hash['delay_result'] = 'delayResult'
      @_hash['callback_url'] = 'callbackUrl'
      @_hash['callback_method'] = 'callbackMethod'
      @_hash['fallback_url'] = 'fallbackUrl'
      @_hash['fallback_method'] = 'fallbackMethod'
      @_hash['username'] = 'username'
      @_hash['password'] = 'password'
      @_hash['fallback_username'] = 'fallbackUsername'
      @_hash['fallback_password'] = 'fallbackPassword'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        mode
        detection_timeout
        silence_timeout
        speech_threshold
        speech_end_threshold
        delay_result
        callback_url
        callback_method
        fallback_url
        fallback_method
        username
        password
        fallback_username
        fallback_password
      ]
    end

    # An array for nullable fields
    def nullables
      %w[
        callback_url
        callback_method
        fallback_url
        fallback_method
        username
        password
        fallback_username
        fallback_password
      ]
    end

    def initialize(mode = nil,
                   detection_timeout = nil,
                   silence_timeout = nil,
                   speech_threshold = nil,
                   speech_end_threshold = nil,
                   delay_result = nil,
                   callback_url = nil,
                   callback_method = nil,
                   fallback_url = nil,
                   fallback_method = nil,
                   username = nil,
                   password = nil,
                   fallback_username = nil,
                   fallback_password = nil)
      @mode = mode unless mode == SKIP
      @detection_timeout = detection_timeout unless detection_timeout == SKIP
      @silence_timeout = silence_timeout unless silence_timeout == SKIP
      @speech_threshold = speech_threshold unless speech_threshold == SKIP
      @speech_end_threshold = speech_end_threshold unless speech_end_threshold == SKIP
      @delay_result = delay_result unless delay_result == SKIP
      @callback_url = callback_url unless callback_url == SKIP
      @callback_method = callback_method unless callback_method == SKIP
      @fallback_url = fallback_url unless fallback_url == SKIP
      @fallback_method = fallback_method unless fallback_method == SKIP
      @username = username unless username == SKIP
      @password = password unless password == SKIP
      @fallback_username = fallback_username unless fallback_username == SKIP
      @fallback_password = fallback_password unless fallback_password == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mode = hash.key?('mode') ? hash['mode'] : SKIP
      detection_timeout =
        hash.key?('detectionTimeout') ? hash['detectionTimeout'] : SKIP
      silence_timeout =
        hash.key?('silenceTimeout') ? hash['silenceTimeout'] : SKIP
      speech_threshold =
        hash.key?('speechThreshold') ? hash['speechThreshold'] : SKIP
      speech_end_threshold =
        hash.key?('speechEndThreshold') ? hash['speechEndThreshold'] : SKIP
      delay_result = hash.key?('delayResult') ? hash['delayResult'] : SKIP
      callback_url = hash.key?('callbackUrl') ? hash['callbackUrl'] : SKIP
      callback_method =
        hash.key?('callbackMethod') ? hash['callbackMethod'] : SKIP
      fallback_url = hash.key?('fallbackUrl') ? hash['fallbackUrl'] : SKIP
      fallback_method =
        hash.key?('fallbackMethod') ? hash['fallbackMethod'] : SKIP
      username = hash.key?('username') ? hash['username'] : SKIP
      password = hash.key?('password') ? hash['password'] : SKIP
      fallback_username =
        hash.key?('fallbackUsername') ? hash['fallbackUsername'] : SKIP
      fallback_password =
        hash.key?('fallbackPassword') ? hash['fallbackPassword'] : SKIP

      # Create object from extracted values.
      MachineDetectionConfiguration.new(mode,
                                  detection_timeout,
                                  silence_timeout,
                                  speech_threshold,
                                  speech_end_threshold,
                                  delay_result,
                                  callback_url,
                                  callback_method,
                                  fallback_url,
                                  fallback_method,
                                  username,
                                  password,
                                  fallback_username,
                                  fallback_password)
    end
  end
end
