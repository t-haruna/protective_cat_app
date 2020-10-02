Rails.application.routes.draw do
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "projects#index"
  resources :users, only: [:edit, :update, :show]
  resources :projects, only: [:index, :new, :create, :show] do
    resources :billings, only: [:new, :create]
  end
end
