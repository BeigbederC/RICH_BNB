Rails.application.routes.draw do
  devise_for :users
  
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :houses do
    resources :reservations, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :reservations, only: [:index, :destroy]

end
