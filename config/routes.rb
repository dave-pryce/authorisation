Rails.application.routes.draw do

  root to: 'staticpages#index'

  get 'signup' => 'users#new'
  resources :users

  get '/login' => 'sessions#new'

  post 'login' => 'sessions#create'

end
