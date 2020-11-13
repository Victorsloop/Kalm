Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users 
  resources :swags 
  resources :user_swags 
  resources :appointments 
  resources :welcomes
  root 'welcome#index'

  get 'signup', to: 'users#new', as: 'signup'
  
  get '/sessions/new_login', to: 'sessions#new', as: 'new_login'
  post '/sessions/new_login', to: 'sessions#create', as: 'login'
  delete '/sessions/page_reset', to: 'sessions#page_reset', as: 'page_reset'
  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  ## We will fix later 
  
end
