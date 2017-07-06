[![License](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/agilie/instagram_api_gem)

<p align="center">
  <img width="600" src="https://agilie.com/instagram_api_gem_logo.png" alt="Logo">
</p>

# InstagramApi

<table border="0">
<tr>
  <td style="vertical-align: top; text-align: left;">A Ruby wrapper for the Instagram API. 
      You can see the api endpoints here https://www.instagram.com/developer/endpoints/</td>
  <td><img width="600" src="https://agilie.com/instagram_api_gem.png" alt="Example"></td>
</tr>
</table>


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

The main module of the gem is `InstagramAPI`. It provides a series of methods, regarding each Instagram resource. They are: 
`Users`, `Media`, `Comments`, `Likes`, `Tags` and `Locations`. So the `Users` resource methods can be accessed by `InstagramAPI.user`
method, `Tags` by `InstagramAPI.tag` and so on.

The main methods of each resource are `show`, `index`, `create`, `destroy` and `search`. The methods and API endpoints 
correspondence is as follows 

 |  Gem Action  |  API Endpoint  | 
 | -------- | ----- | 
 |  **User Resource** |  | 
 |  InstagramAPI.user.show | GET /users/self | 
 |  InstagramAPI.user(**user_id**).show | GET /users/**user_id** | 
 |  InstagramAPI.user.recent_media | GET /users/self/media/recent | 
 |  InstagramAPI.user(**user_id**).recent_media | GET /users/**user_id**/media/recent | 
 |  InstagramAPI.user.liked_media | GET /users/self/media/liked | 
 |  InstagramAPI.user.search(**search_query**) | GET /users/search | 
 |  *Relationship Endpoints block* |  | 
 |  InstagramAPI.user.follows | GET /users/self/follows | 
 |  InstagramAPI.user.followed_by | GET /users/self/followed-by | 
 |  InstagramAPI.user.requested_by | GET /users/self/requested-by | 
 |  InstagramAPI.user.check_relationship(**user_id**) | GET /users/**user_id**/relathionship | 
 |  InstagramAPI.user.change_relationship(**user_id**) | POST /users/**user_id**/relathionship | 
 |  **Media Resource** |  | 
 |  InstagramAPI.media(**media_id**).show | GET /media/**media_id** | 
 |  InstagramAPI.media.short_code(**short_code**) | GET /media/shortcode/**shortcode** | 
 |  InstagramAPI.media.search(**search_query**) | GET /media/search | 
 |  *Likes Endpoints block* |  | 
 |  InstagramAPI.media(media_id).likes | GET /media/**media_id**/likes | 
 |  InstagramAPI.media(media_id).add_like | POST /media/**media_id**/likes | 
 |  InstagramAPI.media(media_id).delete_like | DELETE /media/**media_id**/likes | 
 |  *Comment Endpoints block* |  | 
 |  InstagramAPI.media(media_id).comments | GET /media/**media_id**/comments | 
 |  InstagramAPI.media(media_id).add_comment | POST /media/**media_id**/comments | 
 |  InstagramAPI.media(media_id).delete_comment(**comment_id**) | DELETE /media/**media_id**/comments/**comment_id** | 
 |  **Tag Resource** |  | 
 |  InstagramAPI.tag(**tag_name**).show | GET /tags/**tag_name** | 
 |  InstagramAPI.tag(**tag_name**).recent_media | GET /tags/**tag_name**/media/recent | 
 |  InstagramAPI.tag.search(**search_query**) | GET /tags/search | 
 |  **Location Resource** |  | 
 |  InstagramAPI.location(**location_id**).show | GET /locations/**location_id** | 
 |  InstagramAPI.location(**location_id**).recent_media | GET /locations/**location_id**/media/recent | 
 |  InstagramAPI.location.search(**search_query**) | GET /locations/search | 

Each method from the list above accepts a hash as a second argument with additional params according to official 
[instagram developers documentation](https://www.instagram.com/developer/endpoints/) i.e.

```ruby
InstagramAPI.user.search('mell', {count: 10})
InstagramAPI.user('my_user_id').recent_media({min_id: '22721881'})
```

Search method can get either a query string or a hash. It depends on API requirements, i.e.
```ruby
InstagramAPI.user.search('mell')
InstagramAPI.location.search({lat: 33.10, lng: 15.40})
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

