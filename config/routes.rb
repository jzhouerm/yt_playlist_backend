Rails.application.routes.draw do

resources :users
resources :playlists
resources :videos
resources :notes

# get "/users/:user_id/playlists", to: "users#playlist_show"   
# get "/users/:user_id/playlists/:playlist_id/videos", to: "users#playlist_show" #controller#method


end
