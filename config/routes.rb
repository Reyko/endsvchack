Rails.application.routes.draw do


  devise_for :users
  root to: 'pages#home'


  resources :users, :except => :edit, :only => [] do
    collection do
      put :update
    end 
  end
  
  resources :volunteers, :only => [:show,:index] do
    collection do
      get :edit
    end
  end


  resources :ngo, :only => [] do
    collection do
      get :edit
    end
  end 

end
