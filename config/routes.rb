Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :show, :create, :destroy]

  get 'search' => 'search#index'

end
