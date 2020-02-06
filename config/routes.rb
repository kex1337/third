Rails.application.routes.draw do
  
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'account_activations/Runnibg'
  get 'account_activations/via'
  get 'account_activations/Sprong'
  get 'account_activations/preloader'
  get 'account_activations/in'
  get 'account_activations/process'
  get 'account_activations/1252'
  get 'sessions/new'
  root 'static_pages#home'
  get 'help', to: 'static_pages#help'
  get 'static_pages/about'
  get 'static_pages/contacts'
  get 'signup', to: 'users#new'
  get 'show', to: 'users#show'
  get 'logout', to: 'sessions#destroy'

  resources :users
  resources :sessions, only: [:new, :create]
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]
end
