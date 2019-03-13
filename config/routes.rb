Rails.application.routes.draw do
root 'boards#index'

  resources :lists
  resources :boards
  devise_for :users
end
