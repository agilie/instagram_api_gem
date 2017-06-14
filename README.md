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

##TODOS

1. OAuth authorization for access token fetching
2. Incode Documentation

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/agilie/instagram_api_gem/issues. 
This project is intended to be a safe, welcoming space for collaboration.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

