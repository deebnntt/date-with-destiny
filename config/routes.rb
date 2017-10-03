Rails.application.routes.draw do

  get 'venues/start', to: 'venues#start'
  post 'venues/randomize', to: 'venues#randomize'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#logout'

  resources :venues, only: [:show]
  resources :plans
  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
