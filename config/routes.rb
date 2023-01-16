# == Route Map
#

Rails.application.routes.draw do
  root "photos#index"

  devise_for :users

  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos

  get ":username/liked" => "photos#liked", as: :liked_photos
  get ":username/feed" => "users#feed", as: :users_feed
  get ":username/followers" => "photos#followers", as: :followers_photos
  get ":username/following" => "photos#following", as: :following_photos

  get ":username" => "users#show", as: :user
end
