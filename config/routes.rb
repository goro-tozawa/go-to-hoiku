Rails.application.routes.draw do
  devise_for :childcare_users
  devise_for :users
  root to: "works#index"
  
end
