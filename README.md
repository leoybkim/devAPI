## Create new rails application
    ~$ rails-api new -d postgresql projectName
    ~$ bundle

## Add gem to Gemfile
    gem 'active_model_serializers', '~> 0.10.0.rc2'

## Scaffold and Serialize
    ~$ rails g scaffold music_albums title artist url image thumbnail_image
    ~$ rails g serializer music_albums title artist url image thumbnail_image

## Setup database
	~$ rake db:create
	~$ rake db:migrate

## Start server
	~$ rails s

## Test POST request on local server
	~$ curl -H "Content-Type:application/json; charset=utf-8" -d'{"music_album":{"title":"Believe","artist":"Justin Bieber","url":"https://justinbiebermusic.com","image":"https://image.png","thumbnail_image":"lol"}}' http://localhost:3000/music_albums

## Setup routes
Edit app/config/routes.rb

    Rails.application.routes.draw do
      resources :music_albums, defaults: {format: :json}
    end

## Deploy to heroku
Install heroku cli

	~$ git init
	~$ git add .
	~$ git commit -m "message"
	~$ heroku create
	~$ git push heroku master

## Migrate database to heroku
	~$ heroku run rake db:migrate

## Test POST request on heroku server
	~$ curl -H "Content-Type:application/json; charset=utf-8" -d'{"music_album":{"title":"Believe","artist":"Justin Bieber","url":"https://justinbiebermusic.com","image":"https://image.png","thumbnail_image":"lol"}}' http://appname.herokuapp.com/music_albums
