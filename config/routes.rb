Rails.application.routes.draw do
  get 'works/index'
  devise_for :childcare_users
  devise_for :users
  root to: "works#top"
  
end
