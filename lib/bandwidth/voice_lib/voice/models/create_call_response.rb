# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Bandwidth
  # CreateCallResponse Model.
  class CreateCallResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :account_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :call_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :application_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :to

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :from

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :start_time

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :call_url

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :call_timeout

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :callback_timeout

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :answer_url

    # TODO: Write general description for this method
    # @return [AnswerMethodEnum]
    attr_accessor :answer_method

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :answer_fallback_url

    # TODO: Write general description for this method
    # @return [AnswerFallbackMethodEnum]
    attr_accessor :answer_fallback_method

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :disconnect_url

    # TODO: Write general description for this method
    # @return [DisconnectMethodEnum]
    attr_accessor :disconnect_method

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :username

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :password

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :fallback_username

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :fallback_password

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tag

    # @return [Integer]
    attr_accessor :priority

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_id'] = 'accountId'
      @_hash['call_id'] = 'callId'
      @_hash['application_id'] = 'applicationId'
      @_hash['to'] = 'to'
      @_hash['from'] = 'from'
      @_hash['start_time'] = 'startTime'
      @_hash['call_url'] = 'callUrl'
      @_hash['call_timeout'] = 'callTimeout'
      @_hash['callback_timeout'] = 'callbackTimeout'
      @_hash['answer_url'] = 'answerUrl'
      @_hash['answer_method'] = 'answerMethod'
      @_hash['answer_fallback_url'] = 'answerFallbackUrl'
      @_hash['answer_fallback_method'] = 'answerFallbackMethod'
      @_hash['disconnect_url'] = 'disconnectUrl'
      @_hash['disconnect_method'] = 'disconnectMethod'
      @_hash['username'] = 'username'
      @_hash['password'] = 'password'
      @_hash['fallback_username'] = 'fallbackUsername'
      @_hash['fallback_password'] = 'fallbackPassword'
      @_hash['tag'] = 'tag'
      @_hash['priority'] = 'priority'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        start_time
        call_timeout
        callback_timeout
        answer_fallback_url
        answer_fallback_method
        disconnect_url
        username
        password
        fallback_username
        fallback_password
        tag
        priority
      ]
    end

    # An array for nullable fields
    def nullables
      %w[
        answer_fallback_url
        answer_fallback_method
        disconnect_url
        disconnect_method
        username
        password
        fallback_username
        fallback_password
        tag
        priority
      ]
    end

    def initialize(account_id = nil,
                   call_id = nil,
                   application_id = nil,
                   to = nil,
                   from = nil,
                   call_url = nil,
                   answer_url = nil,
                   answer_method = nil,
                   disconnect_method = nil,
                   start_time = nil,
                   call_timeout = nil,
                   callback_timeout = nil,
                   answer_fallback_url = nil,
                   answer_fallback_method = nil,
                   disconnect_url = nil,
                   username = nil,
                   password = nil,
                   fallback_username = nil,
                   fallback_password = nil,
                   tag = nil,
                   priority = nil)
      @account_id = account_id unless account_id == SKIP
      @call_id = call_id unless call_id == SKIP
      @application_id = application_id unless application_id == SKIP
      @to = to unless to == SKIP
      @from = from unless from == SKIP
      @start_time = start_time unless start_time == SKIP
      @call_url = call_url unless call_url == SKIP
      @call_timeout = call_timeout unless call_timeout == SKIP
      @callback_timeout = callback_timeout unless callback_timeout == SKIP
      @answer_url = answer_url unless answer_url == SKIP
      @answer_method = answer_method unless answer_method == SKIP
      @answer_fallback_url = answer_fallback_url unless answer_fallback_url == SKIP
      @answer_fallback_method = answer_fallback_method unless answer_fallback_method == SKIP
      @disconnect_url = disconnect_url unless disconnect_url == SKIP
      @disconnect_method = disconnect_method unless disconnect_method == SKIP
      @username = username unless username == SKIP
      @password = password unless password == SKIP
      @fallback_username = fallback_username unless fallback_username == SKIP
      @fallback_password = fallback_password unless fallback_password == SKIP
      @tag = tag unless tag == SKIP
      @priority = priority unless priority == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_id = hash.key?('accountId') ? hash['accountId'] : SKIP
      call_id = hash.key?('callId') ? hash['callId'] : SKIP
      application_id = hash.key?('applicationId') ? hash['applicationId'] : SKIP
      to = hash.key?('to') ? hash['to'] : SKIP
      from = hash.key?('from') ? hash['from'] : SKIP
      call_url = hash.key?('callUrl') ? hash['callUrl'] : SKIP
      answer_url = hash.key?('answerUrl') ? hash['answerUrl'] : SKIP
      answer_method = hash.key?('answerMethod') ? hash['answerMethod'] : SKIP
      disconnect_method =
        hash.key?('disconnectMethod') ? hash['disconnectMethod'] : SKIP
      start_time = if hash.key?('startTime')
                     (DateTimeHelper.from_rfc3339(hash['startTime']) if hash['startTime'])
                   else
                     SKIP
                   end
      call_timeout = hash.key?('callTimeout') ? hash['callTimeout'] : SKIP
      callback_timeout =
        hash.key?('callbackTimeout') ? hash['callbackTimeout'] : SKIP
      answer_fallback_url =
        hash.key?('answerFallbackUrl') ? hash['answerFallbackUrl'] : SKIP
      answer_fallback_method =
        hash.key?('answerFallbackMethod') ? hash['answerFallbackMethod'] : SKIP
      disconnect_url = hash.key?('disconnectUrl') ? hash['disconnectUrl'] : SKIP
      username = hash.key?('username') ? hash['username'] : SKIP
      password = hash.key?('password') ? hash['password'] : SKIP
      fallback_username =
        hash.key?('fallbackUsername') ? hash['fallbackUsername'] : SKIP
      fallback_password =
        hash.key?('fallbackPassword') ? hash['fallbackPassword'] : SKIP
      tag = hash.key?('tag') ? hash['tag'] : SKIP
      priority = hash.key?('priority') ? hash['priority'] : SKIP

      # Create object from extracted values.
      CreateCallResponse.new(account_id,
                             call_id,
                             application_id,
                             to,
                             from,
                             call_url,
                             answer_url,
                             answer_method,
                             disconnect_method,
                             start_time,
                             call_timeout,
                             callback_timeout,
                             answer_fallback_url,
                             answer_fallback_method,
                             disconnect_url,
                             username,
                             password,
                             fallback_username,
                             fallback_password,
                             tag,
                             priority)
    end

    def to_start_time
      DateTimeHelper.to_rfc3339(start_time)
    end
  end
end
