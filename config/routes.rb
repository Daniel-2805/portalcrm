Rails.application.routes.draw do
  devise_for :users
  root to: 'leaflets#index'

  resources :leaflets do
    resources :interviews, only: [:index, :show, :new, :create, :destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
