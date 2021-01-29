Rails.application.routes.draw do
  devise_for :childcare_users
  devise_for :users
  root to: "tops#index"
  resources :users
  resources :childcare_users
  resources :works
end
