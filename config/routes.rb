Rails.application.routes.draw do
  resources :budgetplaners
  resources :wallets
  
  resources :travels
  post '/home/index' , to:'users#create'
  root 'home#index'
  #get 'users/new'
  get '/register', to: 'users#new'
  #get '/'
  resources :users, only: [:create]
  get '/sign_in', to: 'sessions#new'
  get '/sign_out', to: 'sessions#destroy'
  get '/user', to: 'users#show'
  get '/user/index', to: 'users#index'
  resources :sessions, only:[:create]
 
  
  
  


  
end
