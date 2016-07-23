Rails.application.routes.draw do
  devise_for :users
  resource :listings
  root 'listings#index'
end
