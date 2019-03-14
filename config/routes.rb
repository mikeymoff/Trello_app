Rails.application.routes.draw do
root 'boards#index'

devise_for :users
  
  resources :boards do
    resources :lists
  end

  resources :users #to: 'users/#id'
  #resources :lists
end
