require 'instagram_api/client'

module InstagramApi

  class Resource < Client

    def show(id, options = {})
      make_request resource_path(id), query: options
    end

    def recent_media(id, options = {})
      make_request resource_path("#{id}/media/recent"), query: options
    end

    def search(options = {})
      make_request resource_path('search'), query: options
    end

  end

end

