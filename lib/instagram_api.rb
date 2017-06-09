require 'instagram_api/version'

require 'instagram_api/client'
require 'instagram_api/resource'

require 'instagram_api/user'
require 'instagram_api/tag'
require 'instagram_api/location'
require 'instagram_api/configuration'

module InstagramApi
  extend Configuration

  RESOURCES = %w(user location tag).freeze

  class << self
    RESOURCES.each do |resource|
      define_method resource do
        klass_name(resource).new
      end
    end

    private

    def klass_name(resource)
      "InstagramApi::#{resource.capitalize}".split('::').inject(Object) {|o, c| o.const_get c}
    end
  end



end
