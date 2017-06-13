require 'instagram_api/common'

module InstagramApi

  class Media
    include Search
    include Resource

    def initialize(media_id = nil)
      @media_id = media_id
    end

    def show(options = {})
      super @media_id, options
    end

    def short_code(short_code, options = {})
      make_request resource_path("shortcode/#{short_code}"), query: options
    end

    def likes(options = {})
      index(@media_id, 'likes', options)
    end

    def add_like(options = {})
      create(@media_id, 'likes', options)
    end

    def delete_like(options = {})
      destroy(@media_id, 'likes', nil, options)
    end

    def comments(options = {})
      index(@media_id, 'comments', options)
    end

    def add_comment(options = {})
      create(@media_id, 'comments', options)
    end

    def delete_comment(comment_id, options = {})
      destroy(@media_id, 'comments', comment_id, options)
    end
  end

end

