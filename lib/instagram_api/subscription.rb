require 'instagram_api/common'

module InstagramApi

  class Subscription

    include Client

    def initialize(verify_token = nil)
      @client_id = InstagramApi.client_id
      @client_secret = InstagramApi.client_secret
      @@verify_token = verify_token || generate_verify_token
      raise 'Invalid configuration: client ID is missing' unless @client_id
      raise 'Invalid configuration: client secret is missing' unless @client_secret
    end

    def create
      options = {
        client_id: @client_id,
        client_secret: @client_secret,
        object: 'user',
        aspect: 'media',
        verify_token: 'my_custom_token',
        callback_url: 'http://your-callback-url'
      }
      make_request resource_path,
                   { body: options },
                   :post
    end

    def index
      options = {
        client_id: @client_id,
        client_secret: @client_secret
      }
      make_request resource_path,
                   { query: options }
    end

    def destroy
      options = {
        client_id: @client_id,
        client_secret: @client_secret,
        object: 'all'
      }
      make_request resource_path,
                   { query: options },
                   :delete
    end

    def validate(params, verify_token = nil)
      verify_token = verify_token || @@verify_token
      return unless params['hub.mode'] == 'subscribe' || params['hub.verify_token'] == verify_token
      params['hub.challenge']
    end

    private

    def generate_verify_token
      ['a'..'z', 'A'..'Z', 0..9].map(&:to_a).flatten.sample(16).join
    end

    def resource_path
      "#{BASE_API_URI}/subscriptions"
    end

  end

end

