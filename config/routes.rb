Rails.application.routes.draw do
  
  resources :gossips do
    resources :comments, only: [:edit, :destroy, :new, :create, :update]
  end

  resources :cities

  resources :users

  resources :sessions, only: [:new, :create, :destroy]

  root 'gossips#index'

  get '/team', to: 'static#team'

  get '/contact', to: 'static#contact'

  get '/welcome/:first_name', to: 'static#welcome'

  # get '/gossips/:id', to: 'static#show', as:'gossip'

  # get '/user/:id', to: 'static#user', as: 'user'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
