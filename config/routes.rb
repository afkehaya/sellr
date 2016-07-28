Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :merchant_applications
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  authenticate :user do
    resources :listings, only: [:new, :create, :edit, :update, :destroy]
  end
  post '/merchant_applications/new', to: 'merchant_applications#new', as: "merchant"
  post '/thankyou' => 'merchant_applications#thankyou', as: "thanks"
  get '/thankyou' => 'merchant_applications#thankyou', as: "thankyou"
  post '/terms' => 'static#terms'
  get '/terms' => 'static#terms'
  post '/about' => 'static#about'
  get '/about' => 'static#about'

  resources :listings
  root 'listings#index'
end
