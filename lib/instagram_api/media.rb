require 'instagram_api/common'

module InstagramApi

  class Media
    include Getters
    include Search
    include Resource

    def short_code(short_code, options = {})
      make_request resource_path("shortcode/#{short_code}"), query: options
    end

    def likes(id, options = {})
      index(id, 'likes', options)
    end

    def add_like(id, options = {})
      create(id, 'likes', options)
    end

    def delete_like(id, options = {})
      destroy(id, 'likes', options)
    end

    def comments(id, options = {})
      index(id, 'comments', options)
    end

    def add_comment(id, options = {})
      create(id, 'comments', options)
    end

    def delete_comment(id, comment_id, options = {})
      destroy(id, 'comments', comment_id, options)
    end
  end

end

