Rails.application.routes.draw do
  get 'users/show'

  devise_for :users
  root to: 'pages#home'
  
  resources :users => [:show] 

end
