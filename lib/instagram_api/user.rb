require 'instagram_api/common'

module InstagramApi

  class User
    include Search
    include Resource

    def initialize(user_id)
      @user_id = user_id || 'self'
    end

    def show(options = {})
      super @user_id, options
    end

    def recent_media(options = {})
      index @user_id, 'media/recent', options
    end

    def liked_media(options = {})
      index @user_id, 'media/liked', options
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

    def check_relationship(user_id, options = {})
      make_request resource_path("#{user_id}/relationship"), query: options
    end

    def change_relationship(user_id, options = {})
      make_request resource_path("#{user_id}/relationship"), {body: options}, :post
    end
  end

end
