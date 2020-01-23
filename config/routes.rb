Rails.application.routes.draw do
  
  get 'sessions/new'
  root 'static_pages#home'
  get 'help', to: 'static_pages#help'
  get 'static_pages/about'
  get 'static_pages/contacts'
  get 'signup', to: 'users#new'
  get 'show', to: 'users#show'

  resources :users
  resources :sessions, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
