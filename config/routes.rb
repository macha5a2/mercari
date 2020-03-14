Rails.application.routes.draw do
  devise_for :users
  resources :items, only: [:index, :new, :create, :show] do
    collection do
      get :verification
    end
  end
  resources :users, only: [:index, :new]
  root "items#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
