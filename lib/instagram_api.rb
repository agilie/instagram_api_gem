require 'instagram_api/version'

require 'instagram_api/client'
require 'instagram_api/common'

require 'instagram_api/user'
require 'instagram_api/tag'
require 'instagram_api/location'
require 'instagram_api/media'
require 'instagram_api/configuration'

require 'instagram_api/subscription'

module InstagramApi
  extend Configuration

  RESOURCES = %w(user location tag media subscription).freeze

  class << self
    RESOURCES.each do |resource|
      define_method resource do |resource_id = nil|
        klass_name(resource).new(resource_id)
      end
    end

    private

    def klass_name(resource)
      "InstagramApi::#{resource.capitalize}".split('::').inject(Object) {|o, c| o.const_get c}
    end
  end

end
