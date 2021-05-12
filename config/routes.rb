Rails.application.routes.draw do
  
  resources :gossips 

  resources :cities

  resources :users

  root 'static#home'

  get '/team', to: 'static#team'

  get '/contact', to: 'static#contact'

  get '/welcome/:first_name', to: 'static#welcome'

  # get '/gossips/:id', to: 'static#show', as:'gossip'

  # get '/user/:id', to: 'static#user', as: 'user'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
