Rails.application.routes.draw do
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'

  # resources :restaurants do 
  #   resources :pizzas, only: [:new]
    
  # end

  resources :restaurants
  resources :pizzas, only: [:new, :show]
  
end
