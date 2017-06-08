require 'httparty'
require 'plural'

module InstagramApi

  class Client

    include HTTParty

    BASE_API_URI = 'https://api.instagram.com/v1'.freeze

    def initialize(auth_token = '4508501877.e029fea.bb11779fa42e4407a42f3fed23c36e91')
      @auth_token = auth_token
    end

    protected

    def resource_path(id = nil)
      resource = self.class.name.split('::').last.downcase.plural
      suffix = id ? "/#{id}" : ''
      "#{BASE_API_URI}/#{resource}#{suffix}?access_token=#{@auth_token}"
    end

    def make_request(url, options, method = :get)
      request = HTTParty.send(method, url, options)
      return JSON.parse(request.body, symbolize_names: true) if request.success?
      request
    end

  end

end

