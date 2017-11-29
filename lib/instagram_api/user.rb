require 'instagram_api/common'

module InstagramApi

  # Defines methods which correspond to User resource
  class User
    include Search
    include Resource

    # User instance constructor. Accepts the +user_id+ or refers to +self+

    def initialize(user_id)
      @user_id = user_id || 'self'
    end

    # Returns an information about the given user
    #
    # @overload show(options={})
    #   @return [Hashie::Mash] The requested user.
    #   @example Return extended information for @shayne
    #     Instagram.user(20)
    # @format :json
    # @rate_limited true
    # @see https://www.instagram.com/developer/endpoints/users/#get_users
    # @see https://www.instagram.com/developer/endpoints/users/#get_users_self
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
      make_request resource_path("#{user_id}/relationship"), { body: options }, :post
    end
  end

end
