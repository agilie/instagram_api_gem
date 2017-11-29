module InstagramApi
  module Configuration

    OPTIONS = [
      :client_id,
      :client_secret,
      :access_token
    ].freeze

    attr_accessor *OPTIONS

    def config
      yield self
    end

  end
end
