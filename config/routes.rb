Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'} do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :listings
  root 'listings#index'
end
