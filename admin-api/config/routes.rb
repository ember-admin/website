Rails.application.routes.draw do
  namespace :admin do
    namespace :api do
      namespace :v1 do
        resources :products
        resources :users
        resources :companies
        resources :avatars
        resources :product_images
      end
    end
  end
end
