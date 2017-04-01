Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :topics do
  	resources	:comments

  	collection do
        get :latest
    end
  end

  resources :users do
    collection do
      get :porfile
    end
  end

  resources :topics do
  	resources :categories	
  end

  namespace :admin do
    resources :topics do
      resources :comments
    end
  end

  namespace :admin do
    resources :categories
  end

  root "topics#index"

end
