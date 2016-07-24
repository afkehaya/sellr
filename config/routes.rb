Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'} do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  authenticate :user do
    resources :listings, only: [:new, :create, :edit, :update, :destroy, :show]
  end
  
  resources :listings
  root 'listings#index'
end
