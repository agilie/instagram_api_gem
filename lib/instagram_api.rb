require 'instagram_api/version'

require 'instagram_api/client'
require 'instagram_api/common'

require 'instagram_api/user'
require 'instagram_api/tag'
require 'instagram_api/location'
require 'instagram_api/media'
require 'instagram_api/configuration'

module InstagramApi
  extend Configuration

  @access_token = '4692075674.b05d058.d5d2b6a5742e4318a69ba234430fe964'

  RESOURCES = %w(user location tag media).freeze

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
