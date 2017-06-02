Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'episodes#index'
  delete '/logout' => 'sessions#destroy', as: 'logout'
  resources :sessions, only: :create
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :users, only: :show
  resources :appearances, except: [:show, :destroy]

end
