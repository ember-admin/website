Rails.application.routes.draw do
  resources :products

  resources :users

  resources :companies
end
