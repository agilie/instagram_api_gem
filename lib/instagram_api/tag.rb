require 'instagram_api/common'

module InstagramApi

  class Tag
    include Search
    include Resource

    def initialize(tag_id = nil)
      @tag_id = tag_id
    end

    def show
      super @tag_id
    end

    def recent_media(options = {})
      index @tag_id, 'media/recent', options
    end
  end

end

