Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  resources :categories
  devise_for :users

  resources :posts do
     resources :comments
  end
  
  resources :posts 
     resources :lists

  root "posts#index"
  
  get '/about', to: 'pages#about'
  get '/event', to: 'pages#event'
  get '/holiday', to: 'pages#holiday'
  get '/special', to: 'pages#special'
  get '/room', to: 'pages#room'
  
end
