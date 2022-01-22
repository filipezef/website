Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'about-new', to: 'pages#about_new'
  get 'about2', to: 'pages#about2'
  get 'back-end', to: 'pages#back_end'
  get 'front-end', to: 'pages#front_end'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
end
