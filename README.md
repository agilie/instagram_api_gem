# InstagramApi

A Ruby wrapper for the Instagram API. You can see the api endpoints here https://www.instagram.com/developer/endpoints/

## Installation

```ruby
gem install instagram
```

## Usage

Before you start making the requests to instagram API provide the `access_token` using the configuration
wrapping.

```ruby
InstagramAPI.config do |config|
  config.access_token = 'put_your_token_here'
end
```

As for now Instagram access token doesn't change or expire, so you can use this simple-to-use service
to generate it http://services.chrisriversdesign.com/instagram-token/

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/agilie/instagram_api. 
This project is intended to be a safe, welcoming space for collaboration.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

