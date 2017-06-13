require 'instagram_api/common'

module InstagramApi

  class Location
    include Search

    def initialize(location_id = nil)
      @location_id = location_id
    end

    def recent_media(options = {})
      index @location_id, 'media/recent', options
    end
  end

end

