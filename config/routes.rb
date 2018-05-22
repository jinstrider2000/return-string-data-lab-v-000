Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :products, only: [:new, :create, :index]
  resources :orders
  resources :invoices
end
