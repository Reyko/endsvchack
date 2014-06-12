Rails.application.routes.draw do


  devise_for :users
  root to: 'pages#home'


  resources :users, :except => :edit, :only => [] do
    collection do
      put :update
    end 
  end
  
  resources :volunteers, :only => [] do
    collection do
      get :edit
      get :index
    end

    member do
      get :show
    end
  end


  resources :ngo, :only => [] do
    collection do
      get :edit
    end
  end 

end
