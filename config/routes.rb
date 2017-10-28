Rails.application.routes.draw do
  devise_for :users
  #resources :comments
  resources :images
  resources :prototypes do
    resources :comments, only: [:create]
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'prototypes#index'
end
