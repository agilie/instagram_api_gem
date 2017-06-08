module InstagramApi
  module Configuration

    OPTIONS = [
      :access_token
    ].freeze

    attr_accessor *OPTIONS

    def config
      yield self
    end

  end
end
