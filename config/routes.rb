Rails.application.routes.draw do
  devise_for :users
  resources :friends
  # get 'home/index'
  # root 'home#index'
  root 'friends#index'
  get '/about', to:'home#about'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
