Rails.application.routes.draw do
  namespace :ember_cli_admin do
    namespace :api do
      namespace :v1 do
        resources :products
        resources :users
        resources :companies
      end
    end
  end
end
