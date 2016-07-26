Rails.application.routes.draw do
  resources :merchant_applications
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  authenticate :user do
    resources :listings, only: [:new, :create, :edit, :update, :destroy, :show]
  end

  post '/thankyou' => 'merchant_applications#thankyou'
  get '/thankyou' => 'merchant_applications#thankyou'

  resources :listings
  root 'listings#index'
end
