Rails.application.routes.draw do
  resources :reviews
  resources :tips
  get 'tips/new/:user_id', to: 'tips#new'
  get 'tips/create/:tip_id', to: 'tips#create'

  get 'static/account/:user_id', to: 'static#account'
  get 'reviews/new/:id', to: 'reviews#new'

  devise_for :users
  root to: 'static#index'
  get 'static/index'
  get 'static/home'
  get 'static/account'
  get 'static/offer'
  get 'static/privacy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
