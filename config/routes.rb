Rails.application.routes.draw do
  get 'appearances/new'

  get 'appearances/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:new, :create]
end
