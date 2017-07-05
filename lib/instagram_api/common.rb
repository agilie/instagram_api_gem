require 'instagram_api/client'

module InstagramApi

  module Search
    include Client

    def search(query, options = {})
      options = query.is_a?(Hash) ? options.merge(query) : options.merge(q: query)
      make_request resource_path('search'), query: options
    end
  end

  module Resource
    include Client

    private

    def show(id, options = {})
      raise 'Resource ID is required' unless id
      make_request resource_path(id), query: options
    end

    def index(id, resource_name, options = {})
      raise 'Resource ID is required' unless id
      make_request resource_path("#{id}/#{resource_name}"), query: options
    end

    def create(id, resource_name, options = {})
      raise 'Resource ID is required' unless id
      make_request(resource_path("#{id}/#{resource_name}"), { body: options }, :post)
    end

    def destroy(id, resource_name, resource_id = nil, options = {})
      raise 'Resource ID is required' unless id
      path = "#{id}/#{resource_name}"
      path = "#{path}/#{resource_id}" if resource_id
      make_request(resource_path(path), { query: options }, :delete)
    end
  end

end

