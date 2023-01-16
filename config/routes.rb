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
  get ":username/followers" => "users#followers", as: :users_followers
  get ":username/following" => "users#following", as: :users_following

  get ":username" => "users#show", as: :user
end
