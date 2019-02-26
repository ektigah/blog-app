Rails.application.routes.draw do

  root 'welcome#home'
  get 'about', to: 'welcome#about'
  get 'contact', to: 'welcome#contact'
  
  resources :articles
  resources :comments
  
  get 'signup', to: "users#new"
  resources :users, except: [:new]
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  get 'logout', to: "sessions#destroy"
  resources :categories, except: [:destroy]
end
