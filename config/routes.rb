Rails.application.routes.draw do
  get 'orders/index'
  devise_for :childcare_users, controllers: {
    sessions:      'childcare_users/sessions',
    passwords:     'childcare_users/passwords',
    registrations: 'childcare_users/registrations' 
  }
  
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  root to: "works#index"
  resources :users
  resources :childcare_users
  resources :works do
   resources :orders
  end
end
