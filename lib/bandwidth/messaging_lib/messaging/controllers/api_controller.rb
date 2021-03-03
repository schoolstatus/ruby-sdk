# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
module Messaging
  # APIController
  class APIController < BaseController
    def initialize(config, http_call_back: nil)
      super(config, http_call_back: http_call_back)
    end

    # listMedia
    # @param [String] account_id Required parameter: User's account ID
    # @param [String] continuation_token Optional parameter: Continuation token
    # used to retrieve subsequent media.
    # @return [List of Media] response from the API call
    def list_media(account_id,
                   continuation_token: nil)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::MESSAGINGDEFAULT)
      _query_builder << '/users/{accountId}/media'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'Continuation-Token' => continuation_token
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      MessagingBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _response.status_code == 400
        raise MessagingExceptionErrorException.new(
          '400 Request is malformed or invalid',
          _response
        )
      elsif _response.status_code == 401
        raise MessagingExceptionErrorException.new(
          '401 The specified user does not have access to the account',
          _response
        )
      elsif _response.status_code == 403
        raise MessagingExceptionErrorException.new(
          '403 The user does not have access to this API',
          _response
        )
      elsif _response.status_code == 404
        raise MessagingExceptionErrorException.new(
          '404 Path not found',
          _response
        )
      elsif _response.status_code == 415
        raise MessagingExceptionErrorException.new(
          '415 The content-type of the request is incorrect',
          _response
        )
      elsif _response.status_code == 429
        raise MessagingExceptionErrorException.new(
          '429 The rate limit has been reached',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      ApiResponse.new(
        _response,
        data: decoded.map { |element| Media.from_hash(element) }
      )
    end

    # getMedia
    # @param [String] account_id Required parameter: User's account ID
    # @param [String] media_id Required parameter: Media ID to retrieve
    # @return [Binary] response from the API call
    def get_media(account_id,
                  media_id)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::MESSAGINGDEFAULT)
      _query_builder << '/users/{accountId}/media/{mediaId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false },
        'mediaId' => { 'value' => media_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url
      )
      MessagingBasicAuth.apply(config, _request)
      _response = execute_request(_request, binary: true)

      # Validate response against endpoint and global error codes.
      if _response.status_code == 400
        raise MessagingExceptionErrorException.new(
          '400 Request is malformed or invalid',
          _response
        )
      elsif _response.status_code == 401
        raise MessagingExceptionErrorException.new(
          '401 The specified user does not have access to the account',
          _response
        )
      elsif _response.status_code == 403
        raise MessagingExceptionErrorException.new(
          '403 The user does not have access to this API',
          _response
        )
      elsif _response.status_code == 404
        raise MessagingExceptionErrorException.new(
          '404 Path not found',
          _response
        )
      elsif _response.status_code == 415
        raise MessagingExceptionErrorException.new(
          '415 The content-type of the request is incorrect',
          _response
        )
      elsif _response.status_code == 429
        raise MessagingExceptionErrorException.new(
          '429 The rate limit has been reached',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      ApiResponse.new(
        _response, data: _response.raw_body
      )
    end

    # uploadMedia
    # @param [String] account_id Required parameter: User's account ID
    # @param [String] media_id Required parameter: The user supplied custom
    # media ID
    # @param [Long] content_length Required parameter: The size of the
    # entity-body
    # @param [File | UploadIO] body Required parameter: Example:
    # @param [String] content_type Optional parameter: The media type of the
    # entity-body
    # @param [String] cache_control Optional parameter: General-header field is
    # used to specify directives that MUST be obeyed by all caching mechanisms
    # along the request/response chain.
    # @return [void] response from the API call
    def upload_media(account_id,
                     media_id,
                     content_length,
                     body,
                     content_type: 'application/octet-stream',
                     cache_control: nil)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::MESSAGINGDEFAULT)
      _query_builder << '/users/{accountId}/media/{mediaId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false },
        'mediaId' => { 'value' => media_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      if body.is_a? FileWrapper
        body_wrapper = body.file
        body_content_type = body.content_type
      else
        body_wrapper = body
        body_content_type = content_type
      end

      # Prepare headers.
      _headers = {
        'content-type' => body_content_type,
        'content-length' => body_wrapper.size.to_s,
        'Content-Length' => content_length,
        'Cache-Control' => cache_control
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.put(
        _query_url,
        headers: _headers,
        parameters: body_wrapper
      )
      MessagingBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _response.status_code == 400
        raise MessagingExceptionErrorException.new(
          '400 Request is malformed or invalid',
          _response
        )
      elsif _response.status_code == 401
        raise MessagingExceptionErrorException.new(
          '401 The specified user does not have access to the account',
          _response
        )
      elsif _response.status_code == 403
        raise MessagingExceptionErrorException.new(
          '403 The user does not have access to this API',
          _response
        )
      elsif _response.status_code == 404
        raise MessagingExceptionErrorException.new(
          '404 Path not found',
          _response
        )
      elsif _response.status_code == 415
        raise MessagingExceptionErrorException.new(
          '415 The content-type of the request is incorrect',
          _response
        )
      elsif _response.status_code == 429
        raise MessagingExceptionErrorException.new(
          '429 The rate limit has been reached',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      ApiResponse.new(_response)
    end

    # deleteMedia
    # @param [String] account_id Required parameter: User's account ID
    # @param [String] media_id Required parameter: The media ID to delete
    # @return [void] response from the API call
    def delete_media(account_id,
                     media_id)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::MESSAGINGDEFAULT)
      _query_builder << '/users/{accountId}/media/{mediaId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false },
        'mediaId' => { 'value' => media_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = config.http_client.delete(
        _query_url
      )
      MessagingBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _response.status_code == 400
        raise MessagingExceptionErrorException.new(
          '400 Request is malformed or invalid',
          _response
        )
      elsif _response.status_code == 401
        raise MessagingExceptionErrorException.new(
          '401 The specified user does not have access to the account',
          _response
        )
      elsif _response.status_code == 403
        raise MessagingExceptionErrorException.new(
          '403 The user does not have access to this API',
          _response
        )
      elsif _response.status_code == 404
        raise MessagingExceptionErrorException.new(
          '404 Path not found',
          _response
        )
      elsif _response.status_code == 415
        raise MessagingExceptionErrorException.new(
          '415 The content-type of the request is incorrect',
          _response
        )
      elsif _response.status_code == 429
        raise MessagingExceptionErrorException.new(
          '429 The rate limit has been reached',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      ApiResponse.new(_response)
    end

    # getMessages
    # @param [String] account_id Required parameter: User's account ID
    # @param [String] message_id Optional parameter: The ID of the message to
    # search for. Special characters need to be encoded using URL encoding
    # @param [String] source_tn Optional parameter: The phone number that sent
    # the message
    # @param [String] destination_tn Optional parameter: The phone number that
    # received the message
    # @param [String] message_status Optional parameter: The status of the
    # message. One of RECEIVED, QUEUED, SENDING, SENT, FAILED, DELIVERED,
    # ACCEPTED, UNDELIVERED
    # @param [Integer] error_code Optional parameter: The error code of the
    # message
    # @param [String] from_date_time Optional parameter: The start of the date
    # range to search in ISO 8601 format. Uses the message receive time. The
    # date range to search in is currently 14 days.
    # @param [String] to_date_time Optional parameter: The end of the date range
    # to search in ISO 8601 format. Uses the message receive time. The date
    # range to search in is currently 14 days.
    # @param [String] page_token Optional parameter: A base64 encoded value used
    # for pagination of results
    # @param [Integer] limit Optional parameter: The maximum records requested
    # in search result. Default 100. The sum of limit and after cannot be more
    # than 10000
    # @return [BandwidthMessagesList] response from the API call
    def get_messages(account_id,
                     message_id: nil,
                     source_tn: nil,
                     destination_tn: nil,
                     message_status: nil,
                     error_code: nil,
                     from_date_time: nil,
                     to_date_time: nil,
                     page_token: nil,
                     limit: nil)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::MESSAGINGDEFAULT)
      _query_builder << '/users/{accountId}/messages'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false }
      )
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        'messageId' => message_id,
        'sourceTn' => source_tn,
        'destinationTn' => destination_tn,
        'messageStatus' => message_status,
        'errorCode' => error_code,
        'fromDateTime' => from_date_time,
        'toDateTime' => to_date_time,
        'pageToken' => page_token,
        'limit' => limit
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      MessagingBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _response.status_code == 400
        raise MessagingExceptionErrorException.new(
          '400 Request is malformed or invalid',
          _response
        )
      elsif _response.status_code == 401
        raise MessagingExceptionErrorException.new(
          '401 The specified user does not have access to the account',
          _response
        )
      elsif _response.status_code == 403
        raise MessagingExceptionErrorException.new(
          '403 The user does not have access to this API',
          _response
        )
      elsif _response.status_code == 404
        raise MessagingExceptionErrorException.new(
          '404 Path not found',
          _response
        )
      elsif _response.status_code == 415
        raise MessagingExceptionErrorException.new(
          '415 The content-type of the request is incorrect',
          _response
        )
      elsif _response.status_code == 429
        raise MessagingExceptionErrorException.new(
          '429 The rate limit has been reached',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      ApiResponse.new(
        _response, data: BandwidthMessagesList.from_hash(decoded)
      )
    end

    # createMessage
    # @param [String] account_id Required parameter: User's account ID
    # @param [MessageRequest] body Required parameter: Example:
    # @return [BandwidthMessage] response from the API call
    def create_message(account_id,
                       body)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::MESSAGINGDEFAULT)
      _query_builder << '/users/{accountId}/messages'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      MessagingBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _response.status_code == 400
        raise MessagingExceptionErrorException.new(
          '400 Request is malformed or invalid',
          _response
        )
      elsif _response.status_code == 401
        raise MessagingExceptionErrorException.new(
          '401 The specified user does not have access to the account',
          _response
        )
      elsif _response.status_code == 403
        raise MessagingExceptionErrorException.new(
          '403 The user does not have access to this API',
          _response
        )
      elsif _response.status_code == 404
        raise MessagingExceptionErrorException.new(
          '404 Path not found',
          _response
        )
      elsif _response.status_code == 415
        raise MessagingExceptionErrorException.new(
          '415 The content-type of the request is incorrect',
          _response
        )
      elsif _response.status_code == 429
        raise MessagingExceptionErrorException.new(
          '429 The rate limit has been reached',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      ApiResponse.new(
        _response, data: BandwidthMessage.from_hash(decoded)
      )
    end
  end
end
end
