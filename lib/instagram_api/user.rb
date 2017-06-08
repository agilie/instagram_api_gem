require 'instagram_api/resource'

module InstagramApi

  class User < Resource

    def show(id = 'self', options = {})
      super id, options
    end

    def recent_media(id = 'self', options = {})
      super id, options
    end

    def liked_media(id = 'self', options = {})
      make_request resource_path("#{id}/media/liked"), query: options
    end

    def follows(options = {})
      make_request resource_path('self/follows'), query: options
    end

    def followed_by(options = {})
      make_request resource_path('self/followed-by'), query: options
    end

    def requested_by(options = {})
      make_request resource_path('self/requested-by'), query: options
    end

  end

end
