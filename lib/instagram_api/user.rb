require 'instagram_api/common'

module InstagramApi

  class User
    include Getters
    include Search

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

    def check_relationship(user_id, options = {})
      make_request resource_path("#{user_id}/relationship"), query: options
    end

    def change_relationship(options = {})
      make_request resource_path("#{user_id}/relationship"), {body: options}, :post
    end

  end

end
