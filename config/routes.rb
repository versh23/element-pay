Rails.application.routes.draw do
  devise_for :users
  root to: 'static#index'
  get 'static/index'
  get 'static/home'
  get 'static/account'
  get 'static/offer'
  get 'static/privacy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
