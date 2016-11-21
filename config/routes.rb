Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]
  resources :eateries, except: :destroy
  resources :attractions, except: :destroy
  root 'users#index'
end
