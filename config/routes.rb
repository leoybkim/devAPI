Rails.application.routes.draw do
  resources :music_albums, defaults: {format: :json}
end
