require 'httparty'
require 'plural'
require 'hashie'

module InstagramApi

  class Client

    include HTTParty

    BASE_API_URI = 'https://api.instagram.com/v1'.freeze

    protected

    def resource_path(id = nil)
      resource = self.class.name.split('::').last.downcase.plural
      suffix = id ? "/#{id}" : ''
      "#{BASE_API_URI}/#{resource}#{suffix}?access_token=#{InstagramApi.access_token}"
    end

    def make_request(url, options, method = :get)
      response = HTTParty.send(method, url, options)
      if response.success?
        parse_success response
      else
        parse_failed response
      end
    end

    private

    def parse_success(response)
      response_hash = JSON.parse(response.body).merge(
        limit: response.headers['x-ratelimit-limit'],
        remaining: response.headers['x-ratelimit-remaining']
      )
      ::Hashie::Mash.new(response_hash)
    end

    def parse_failed(response)
      nil
    end

  end

end

