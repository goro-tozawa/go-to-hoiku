Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  resources :users
  resources :childcare_users
end
