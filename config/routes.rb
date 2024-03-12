Rails.application.routes.draw do
  devise_for :users

  resources :players do
    resources :stats, only: [:new, :create, :edit, :update]
  end  

  root to: 'players#index'
end
