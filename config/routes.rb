Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :new, :create]
  resources :guests, only: :show do
    resources :appearances, only: [:new, :create]
  end
  resources :episodes, only: [:index, :show]
end
