Rails.application.routes.draw do
  root 'home#index'
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'  #prikaz SignUp
  get 'login', to: 'sessions#new', as: 'login' #prikaz Login
  post '/login',   to: 'sessions#create', as: 'login_user'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  post '/signup', to: 'users#create', as: 'create_user'
  #get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
