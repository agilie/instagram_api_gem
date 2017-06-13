require 'instagram_api/client'

module InstagramApi

  module Getters
    include Client

    # TODO: Make this like resource method
    def show(id, options = {})
      make_request resource_path(id), query: options
    end

    def recent_media(id, options = {})
      make_request resource_path("#{id}/media/recent"), query: options
    end
  end

  module Search
    include Client

    def search(options = {})
      make_request resource_path('search'), query: options
    end
  end

  module Resource
    include Client

    def index(id, resource_name, options = {})
      raise 'Resource ID is required' unless id
      make_request resource_path("#{id}/#{resource_name}"), query: options
    end

    def create(id, resource_name, options = {})
      raise 'Resource ID is required' unless id
      make_request( resource_path("#{id}/#{resource_name}"), {body: options}, :post)
    end

    def destroy(id, resource_name, resource_id = nil, options = {})
      raise 'Resource ID is required' unless id
      path = "#{id}/#{resource_name}"
      path = "#{path}/#{resource_id}" if resource_id
      make_request( resource_path(path), {query: options}, :delete)
    end
  end

end

