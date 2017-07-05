# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'instagram_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'instagram_api_client'
  spec.version       = InstagramApi::VERSION
  spec.authors       = ['Sergey Mell', 'Agilie Team']
  spec.email         = ['sergey.mell@agilie.com', 'web@agilie.com']

  spec.summary       = 'A Ruby wrapper for the Instagram API'
  spec.description   = 'A Ruby wrapper for the Instagram API'

  spec.homepage      = 'https://github.com/agilie/instagram_api_gem'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency 'httparty'
  spec.add_dependency 'plural'
  spec.add_dependency 'hashie'
end
