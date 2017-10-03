Rails.application.routes.draw do
  resources :plans
  resources :users

  get 'venues/start', to: 'venues#start'
  resources :venues, only: [:show]

  post 'venues/randomize', to: 'venues#randomize'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
