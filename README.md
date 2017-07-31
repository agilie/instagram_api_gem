<p align="center">
  <img width="600" src="https://agilie.com/instagram_api_gem_logo.png" alt="Logo">
  <img width="100" src="https://agilie.com/logos.png" alt="Logos">
</p>

<p align="center">

<a href="https://www.agilie.com?utm_source=github&utm_medium=referral&utm_campaign=Git_Ruby&utm_term=instagram_api_gem">
<img src="https://img.shields.io/badge/Made%20by%20Agilie-*****-green.svg?style=flat" alt="Made by Agilie">
</a>

<a href="https://github.com/agilie/instagram_api_gem">
  <img src="https://img.shields.io/github/license/mashape/apistatus.svg" alt="License">
</a>

<a href="https://rubygems.org/gems/instagram_api_client">
  <img src="http://ruby-gem-downloads-badge.herokuapp.com/instagram_api_client?type=total&color=brightgreen" alt="Downloads">
</a>

</p>

# InstagramApi

<p align="center"> 
    <img width="300" src="https://agilie.com/instagram_api_gem.png" alt="Example">
</p>
A Ruby wrapper for the Instagram API. You can see the api endpoints here https://www.instagram.com/developer/endpoints/

## Installation

```ruby
gem install instagram_api_client
```  

## Usage

Before you start making the requests to instagram API provide the `access_token` using the configuration
wrapping.

```ruby
InstagramApi.config do |config|
  config.access_token = 'put_your_token_here'
end
```

As for now Instagram access token doesn't change or expire, so you can use this simple-to-use service
to generate it http://services.chrisriversdesign.com/instagram-token/
I the nearest future the OAuth authorization for access token fetching will be implemented.

The main module of the gem is `InstagramApi`. It provides a series of methods, regarding each Instagram resource. They are: 
`Users`, `Media`, `Comments`, `Likes`, `Tags` and `Locations`. So the `Users` resource methods can be accessed by `InstagramApi.user`
method, `Tags` by `InstagramApi.tag` and so on.

The main methods of each resource are `show`, `index`, `create`, `destroy` and `search`. The methods and API endpoints 
correspondence is as follows 

 |  Gem Action  |  API Endpoint  | 
 | -------- | ----- | 
 |  **User Resource** |  | 
 |  InstagramApi.user.show | GET /users/self | 
 |  InstagramApi.user(**user_id**).show | GET /users/**user_id** | 
 |  InstagramApi.user.recent_media | GET /users/self/media/recent | 
 |  InstagramApi.user(**user_id**).recent_media | GET /users/**user_id**/media/recent | 
 |  InstagramApi.user.liked_media | GET /users/self/media/liked | 
 |  InstagramApi.user.search(**search_query**) | GET /users/search | 
 |  *Relationship Endpoints block* |  | 
 |  InstagramApi.user.follows | GET /users/self/follows | 
 |  InstagramApi.user.followed_by | GET /users/self/followed-by | 
 |  InstagramApi.user.requested_by | GET /users/self/requested-by | 
 |  InstagramApi.user.check_relationship(**user_id**) | GET /users/**user_id**/relathionship | 
 |  InstagramApi.user.change_relationship(**user_id**) | POST /users/**user_id**/relathionship | 
 |  **Media Resource** |  | 
 |  InstagramApi.media(**media_id**).show | GET /media/**media_id** | 
 |  InstagramApi.media.short_code(**short_code**) | GET /media/shortcode/**shortcode** | 
 |  InstagramApi.media.search(**search_query**) | GET /media/search | 
 |  *Likes Endpoints block* |  | 
 |  InstagramApi.media(media_id).likes | GET /media/**media_id**/likes | 
 |  InstagramApi.media(media_id).add_like | POST /media/**media_id**/likes | 
 |  InstagramApi.media(media_id).delete_like | DELETE /media/**media_id**/likes | 
 |  *Comment Endpoints block* |  | 
 |  InstagramApi.media(media_id).comments | GET /media/**media_id**/comments | 
 |  InstagramApi.media(media_id).add_comment | POST /media/**media_id**/comments | 
 |  InstagramApi.media(media_id).delete_comment(**comment_id**) | DELETE /media/**media_id**/comments/**comment_id** | 
 |  **Tag Resource** |  | 
 |  InstagramApi.tag(**tag_name**).show | GET /tags/**tag_name** | 
 |  InstagramApi.tag(**tag_name**).recent_media | GET /tags/**tag_name**/media/recent | 
 |  InstagramApi.tag.search(**search_query**) | GET /tags/search | 
 |  **Location Resource** |  | 
 |  InstagramApi.location(**location_id**).show | GET /locations/**location_id** | 
 |  InstagramApi.location(**location_id**).recent_media | GET /locations/**location_id**/media/recent | 
 |  InstagramApi.location.search(**search_query**) | GET /locations/search | 

Each method from the list above accepts a hash as a second argument with additional params according to official 
[instagram developers documentation](https://www.instagram.com/developer/endpoints/) i.e.

```ruby
InstagramApi.user.search('mell', {count: 10})
InstagramApi.user('my_user_id').recent_media({min_id: '22721881'})
```

Search method can get either a query string or a hash. It depends on API requirements, i.e.
```ruby
InstagramApi.user.search('mell')
InstagramApi.location.search({lat: 33.10, lng: 15.40})
```

Response is a `Hashie::Mash` object


## TODOS

1. OAuth authorization for access token fetching
2. Incode Documentation
3. Cover functionality with tests

## Troubleshooting

Problems? Check the [Issues](https://github.com/agilie/instagram_api_gem/issues) block to find 
the solution or create an new issue that we will fix asap. Feel free to contribute.
This project is intended to be a safe, welcoming space for collaboration.

## Author
This gem is open-sourced by [Agilie Team](https://www.agilie.com?utm_source=github&utm_medium=referral&utm_campaign=Git_Ruby&utm_term=instagram_api_gem) ([info@agilie.com](mailto:info@agilie.com))

## Contributor
[Sergey Mell](https://github.com/SergeyMell)

## Contact us
If you have any questions, suggestions or just need a help with web or mobile development, 
please email us at <web@agilie.com>. You can ask us anything from basic to complex questions.

We will continue publishing new open-source projects. Stay with us, more updates will follow!

## License

The gem is available as open source under the [MIT](LICENSE.md) License (MIT) Copyright © 2017 [Agilie Team](https://www.agilie.com?utm_source=github&utm_medium=referral&utm_campaign=Git_Ruby&utm_term=instagram_api_gem)

