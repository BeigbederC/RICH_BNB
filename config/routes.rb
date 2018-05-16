Rails.application.routes.draw do
  devise_for :users
  root to: 'houses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :houses do
    resources :reservations, only: [ :new, :create, :index, :destroy]
  end
end
