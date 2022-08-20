Rails.application.routes.draw do
  resources :categories
  resources :budgetplaners
  resources :wallets
  
  resources :travels
  post '/home/index' , to:'users#create'
  root 'home#index'
  
  get '/register', to: 'users#new'
  
  resources :users, only: [:create]
  get '/sign_in', to: 'sessions#new'
  get '/sign_out', to: 'sessions#destroy'
  get '/user', to: 'users#show'
  get '/user/index', to: 'users#index'
  get '/delete/:id', to: 'users#delete'
  resources :sessions, only:[:create]
 
  
  
  


  
end
