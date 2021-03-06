Rails.application.routes.draw do
  resources :books
  resource :users, only: [:new, :create]
  root to: 'sessions#new'
  resource :session, only: [:new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
