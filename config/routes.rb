Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cars do
    resources :bookings, only: [ :create ]
  end

  resources :bookings, only: [ :show ]

  get "arbi", to: "dashboard#show", as: :dashboard

  end
