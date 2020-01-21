# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # RecordingMetadataResponse Model.
  class RecordingMetadataResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :account_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :call_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :recording_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :to

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :from

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :duration

    # TODO: Write general description for this method
    # @return [DirectionEnum]
    attr_accessor :direction

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :channels

    # TODO: Write general description for this method
    # @return [Long]
    attr_accessor :start_time

    # TODO: Write general description for this method
    # @return [Long]
    attr_accessor :end_time

    # TODO: Write general description for this method
    # @return [FileFormatEnum]
    attr_accessor :file_format

    # TODO: Write general description for this method
    # @return [TranscriptionStatusEnum]
    attr_accessor :transcription_status

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :media_url

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :transcription_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_id'] = 'accountId'
      @_hash['call_id'] = 'callId'
      @_hash['recording_id'] = 'recordingId'
      @_hash['to'] = 'to'
      @_hash['from'] = 'from'
      @_hash['duration'] = 'duration'
      @_hash['direction'] = 'direction'
      @_hash['channels'] = 'channels'
      @_hash['start_time'] = 'startTime'
      @_hash['end_time'] = 'endTime'
      @_hash['file_format'] = 'fileFormat'
      @_hash['transcription_status'] = 'transcriptionStatus'
      @_hash['media_url'] = 'mediaUrl'
      @_hash['transcription_url'] = 'transcriptionUrl'
      @_hash
    end

    def initialize(account_id = nil,
                   call_id = nil,
                   recording_id = nil,
                   to = nil,
                   from = nil,
                   duration = nil,
                   direction = nil,
                   channels = nil,
                   start_time = nil,
                   end_time = nil,
                   file_format = nil,
                   transcription_status = nil,
                   media_url = nil,
                   transcription_url = nil)
      @account_id = account_id
      @call_id = call_id
      @recording_id = recording_id
      @to = to
      @from = from
      @duration = duration
      @direction = direction
      @channels = channels
      @start_time = start_time
      @end_time = end_time
      @file_format = file_format
      @transcription_status = transcription_status
      @media_url = media_url
      @transcription_url = transcription_url
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_id = hash['accountId']
      call_id = hash['callId']
      recording_id = hash['recordingId']
      to = hash['to']
      from = hash['from']
      duration = hash['duration']
      direction = hash['direction']
      channels = hash['channels']
      start_time = hash['startTime']
      end_time = hash['endTime']
      file_format = hash['fileFormat']
      transcription_status = hash['transcriptionStatus']
      media_url = hash['mediaUrl']
      transcription_url = hash['transcriptionUrl']

      # Create object from extracted values.
      RecordingMetadataResponse.new(account_id,
                                    call_id,
                                    recording_id,
                                    to,
                                    from,
                                    duration,
                                    direction,
                                    channels,
                                    start_time,
                                    end_time,
                                    file_format,
                                    transcription_status,
                                    media_url,
                                    transcription_url)
    end
  end
end
