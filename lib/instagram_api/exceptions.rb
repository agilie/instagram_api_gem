module InstagramApi

  # Custom error class to rescue from Instagram errors
  class Error < StandardError
    attr_reader :message, :type, :code

    def initialize(response)
      body = JSON.parse(response.body)

      @code = "#{response[:status]}"
      @type = body['meta']['error_type']
      @message = body['meta']['error_message']
    end
  end

  # Raised when Instagram returns the HTTP status code 400
  class BadRequest < Error
  end

  # Raised when Instagram returns the HTTP status code 404
  class NotFound < Error
  end

  # Raised when Instagram returns the HTTP status code 429
  class TooManyRequests < Error
  end

  # Raised when Instagram returns the HTTP status code 500
  class InternalServerError < Error
  end

  # Raised when Instagram returns the HTTP status code 502
  class BadGateway < Error
  end

  # Raised when Instagram returns the HTTP status code 503
  class ServiceUnavailable < Error
  end

  # Raised when Instagram returns the HTTP status code 504
  class GatewayTimeout < Error
  end

  # Raised when a subscription payload hash is invalid
  class InvalidSignature < Error
  end

  # Raised when Instagram returns the HTTP status code 429
  class RateLimitExceeded < Error
  end

end