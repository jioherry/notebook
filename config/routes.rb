Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :topics do
  	resources	:comments

  	collection do
        get :latest
    end
  end

  resources :topics do
  	resources :categories	
  end

  root "topics#index"

end
