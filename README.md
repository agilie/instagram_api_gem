[![License](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/agilie/GoButton)

# InstagramApi

A Ruby wrapper for the Instagram API. 
You can see the api endpoints here https://www.instagram.com/developer/endpoints/

## Installation

```ruby
gem install instagram_api_client
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
I the nearest future the OAuth authorization for access token fetching will be implemented.

## TODOS

1. OAuth authorization for access token fetching
2. Incode Documentation
3. Cover functionality with tests

## Troubleshooting

Problems? Check the [Issues](https://github.com/agilie/instagram_api_gem/issues) block to find 
the solution or create an new issue that we will fix asap. Feel free to contribute.
This project is intended to be a safe, welcoming space for collaboration.

## Author
This gem is open-sourced by [Agilie Team](https://www.agilie.com) ([info@agilie.com](mailto:info@agilie.com))

## Contributor
[Sergey Mell](https://github.com/SergeyMell)

## Contact us
If you have any questions, suggestions or just need a help with web or mobile development, 
please email us at <web@agilie.com>. You can ask us anything from basic to complex questions.

We will continue publishing new open-source projects. Stay with us, more updates will follow!

## License

The gem is available as open source under the [MIT](LICENSE.md) License (MIT) Copyright © 2017 [Agilie Team](https://www.agilie.com)

