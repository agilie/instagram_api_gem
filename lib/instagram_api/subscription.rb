require 'instagram_api/common'

module InstagramApi

  class Subscription

    def initialize(client_id, client_secret)
      @client_id = client_id
      @client_secret = client_secret
      raise 'Invalid configuration: client ID is messing' unless @client_id
      raise 'Invalid configuration: client secret is messing' unless @client_secret
    end

  end

end

